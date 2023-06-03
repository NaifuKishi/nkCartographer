local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.unit then EnKai.unit = {} end

local lang        = privateVars.langTexts
local data        = privateVars.data
local oFuncs	  = privateVars.oFuncs

---------- init local variables ---------

local _unitCache = {}
local _idCache = {}
local _subscriptions = {}
local _unitManager = false
local _isRaid = false
local _isGroup = false
local _groupMembers = 0
local _raidMembers = 0

local _internalFunc = {}
local debugUI

local _watchUnits = {'player', 'player.pet', 'player.target', 'player.target.target', 'focus', 'focus.target'}

local oInspectUnitLookup = Inspect.Unit.Lookup

---------- local function block ---------

-- local function _fctDebugUI()

	-- local name = "EnKai.unit.debugUI"

	-- debugUI = EnKai.uiCreateFrame("nkFrame", name, privateVars.uiContext)
	-- debugUI.unitCache = EnKai.uiCreateFrame("nkText", name .. "._unitCache", debugUI)
	-- debugUI.idCache = EnKai.uiCreateFrame("nkText", name .. ".idCache", debugUI)
	
	-- debugUI.unitCache:SetPoint("TOPLEFT", debugUI, "TOPLEFT")
	-- debugUI.unitCache:SetWordwrap(true)
	-- debugUI.unitCache:SetWidth(300)
	-- --debugUI.unitCache:SetFontColor(0, 0, 0, 1)
	-- debugUI.idCache:SetPoint("TOPLEFT", debugUI.unitCache, "TOPRIGHT", 0, 10)
	-- debugUI.idCache:SetWordwrap(true)
	-- debugUI.idCache:SetWidth(300)
	-- --debugUI.idCache:SetFontColor(0, 0, 0, 1)
	
	-- debugUI:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 100, 600)
	
	-- function debugUI:Update()
		-- local temp = {}
		-- for k, v in pairs(_unitCache) do
			-- table.insert(temp, k)
		-- end
	
		-- debugUI.unitCache:SetText("_unitCache\n\n" .. EnKai.tools.table.serialize(temp))
		
		-- debugUI.idCache:SetText("_idCache\n\n" .. EnKai.tools.table.serialize(_idCache):gsub(",", "\n"))
	-- end
	
	-- return debugUI

-- end

local function _fctSetIDCache(key, value, flag, source)

	if key == value then return end

	-- if flag then
		-- print (string.format('adding %s to %s (%s)', (value or 'nil'), key, source))
	-- else
		-- print (string.format('removing %s from %s (%s)', (value or 'nil'), key, source))
	-- end
	
	if flag == false then
		if _idCache[key] == nil then return end
		EnKai.tools.table.removeValue (_idCache[key], value)
	else
		if _idCache[key] == nil then
			_idCache[key] = {}
		end
		
		if not EnKai.tools.table.isMember (_idCache[key], value) then
			table.insert(_idCache[key], value)
		end
		
	end

end

local function _fctCombatDamage(_, info)

	if info.caster ~= nil and _unitCache[info.caster] == nil then 
		local temp = oFuncs.oInspectUnitDetail(info.caster)
	
		if temp ~= nil and temp.player ~= true then
			_unitCache[info.caster] = temp
			
			_fctSetIDCache(_unitCache[info.caster].type, info.caster, true, "_fctCombatDamage")
			
			_unitCache[info.caster].lastUpdate = oFuncs.oInspectTimeReal()
			EnKai.eventHandlers["EnKai.Unit"]["Available"]({[info.caster] = "combatlog"})
			
			--print ('found caster unit', info.caster)
			
			--if debugUI then debugUI:Update() end
		end
	end
	
	if info.target ~= nil and _unitCache[info.target] == nil then
		local temp = oFuncs.oInspectUnitDetail(info.caster)
	
		if temp ~= nil and temp.player ~= true then
			_unitCache[info.target] = temp
			
			_fctSetIDCache(_unitCache[info.target].type, info.target, true, "_fctCombatDamage")
			
			_unitCache[info.target].lastUpdate = oFuncs.oInspectTimeReal()
			EnKai.eventHandlers["EnKai.Unit"]["Available"]({[info.target] = "combatlog"})
			
			--print ('found target unit', info.target, _unitCache[info.target].name)
			
			--if debugUI then debugUI:Update() end
		end
	end

end

local function _fctCombatDeath(_, info)

	if info.target ~= nil then
		
		local unitTypes = EnKai.unit.getUnitTypes (info.target)
		if unitTypes == nil then return end
		
		for key, _ in pairs(unitTypes) do
		
			_fctSetIDCache(key, info.target, false, "_fctCombatDeath")
			_unitCache[info.target] = nil
			EnKai.eventHandlers["EnKai.Unit"]["Unavailable"]({[info.target] = false})
			
			--print ('remove unit', info.target)
		
			--if debugUI then debugUI:Update() end
		end
	end

end

local function _fctUnitAvailableHandler (_, unitInfo)

	local tempUnitInfo = {}

	for unitId, unitType in pairs (unitInfo) do
		if unitType ~= false and string.find(unitType, 'mouseover') == nil then
			if string.find (unitType, 'group..%.target') ~= nil and unitId == _idCache.player then
				tempUnitInfo[oInspectUnitLookup(unitType)] = unitType
			else
				tempUnitInfo[unitId] = unitType
				_unitCache[unitId] = oFuncs.oInspectUnitDetail(unitId)
				_unitCache[unitId].lastUpdate = oFuncs.oInspectTimeReal()
			end
		
			if string.find(unitType, 'group') == 1 and string.find(unitType, 'group..%.') == nil then

			for idx = 1, 5, 1 do
					local tempUnitType = string.format('group%02d', idx)
					local tempUnitId = oInspectUnitLookup(tempUnitType)
					_internalFunc.processUnitChange (tempUnitType, tempUnitId)
					
					local tempUnitType = string.format('group%02d.target', idx)
					local tempUnitId = oInspectUnitLookup(tempUnitType)
					_internalFunc.processUnitChange (tempUnitType, tempUnitId)
					
					local tempUnitType = string.format('group%02d.pet', idx)
					local tempUnitId = oInspectUnitLookup(tempUnitType)
					_internalFunc.processUnitChange (tempUnitType, tempUnitId)
				end
			end
			
			_internalFunc.processUnitChange (unitType, unitId)
			
			if unitType == 'player' then
				EnKai.eventHandlers["EnKai.Unit"]["PlayerAvailable"](_unitCache[unitId])
			end
		end	
	end
	
	EnKai.eventHandlers["EnKai.Unit"]["Available"](tempUnitInfo)
	
	--if debugUI then debugUI:Update() end

end

local function _fctUnitUnAvailableHandler (_, unitInfo)

	for unitId, _ in pairs (unitInfo) do
	
		local unitTypes = EnKai.unit.getUnitTypes (unitId)
		
		for idx = 1, #unitTypes, 1 do
			_internalFunc.processUnitChange (unitTypes[idx], nil)
		end
	end	
	
	EnKai.eventHandlers["EnKai.Unit"]["Unavailable"](unitInfo)

	--if debugUI then debugUI:Update() end
	
end

local function _fctGroupStatus ()

	if _isRaid == true then
		EnKai.eventHandlers["EnKai.Unit"]["GroupStatus"]('raid', _raidMembers)
	elseif _isGroup == true then
		EnKai.eventHandlers["EnKai.Unit"]["GroupStatus"]('group', _groupMembers)
	else
		EnKai.eventHandlers["EnKai.Unit"]["GroupStatus"]('single', nil)
	end

end

local function _fctProcessUnitInfo (unitInfo)

	for k, v in pairs (unitInfo) do
		_internalFunc.processUnitChange(v, k)
	end
	
end

local function _fctUnitChange (unitId, unitType)

	-- if string.find(unitType, 'mouseover') ~= nil then 
		-- local details = Inspect.Unit.Detail(unitType)

	-- end

	_idCache[unitType] = {}
		
	-- for id, value in pairs(unitTypeList) do
		-- _fctSetIDCache(unitType, value, false, '_fctUnitChange')
	-- end
	
	if unitId == false then
		--print ('_fctUnitChange', unitType, false)
	
		_internalFunc.processUnitChange(unitType, nil)
	else
		--print ('_fctUnitChange', unitType, unitId)
		_fctSetIDCache(unitType, unitId, true, '_fctUnitChange')
		
		local details = oFuncs.oInspectUnitDetail(unitType)
		if details ~= nil and details.player ~= true then
			_fctSetIDCache(details.type, unitId, true, '_fctUnitChange')
		
			_unitCache[unitId] = details
			_unitCache[unitId].lastUpdate = oFuncs.oInspectTimeReal()
		end
		
		_internalFunc.processUnitChange(unitType, unitId)
	end
	
	if _subscriptions[unitType] == nil then return end
	
	for addon, _ in pairs(_subscriptions[unitType]) do
		EnKai.eventHandlers["EnKai.Unit"]["Change"](unitId, unitType)
		
		--if debugUI then debugUI:Update() end
		break
	end

end

function _internalFunc.processUnitChange (unitType, unitId)

	-- if unitId == false then
		-- _fctSetIDCache(unitType, nil, '_internalFunc.processUnitChange')
	-- else
		-- --print ('_internalFunc.processUnitChange', unitType, unitId)
		-- _fctSetIDCache(unitType, unitId, '_internalFunc.processUnitChange')
	-- end

	if string.find(unitType, 'group') == 1 and string.find (unitType, 'group..%.') == nil then
		local indicateGroupChange = false
	
		local groupId = string.sub(unitType, 6, 7)

		if tonumber(groupId) > 5 then
			if _isRaid == false then 
				indicateGroupChange = true
				_groupMembers = 0
				_raidMembers = 0
			end
			
			_isRaid = true
			_isGroup = false
		elseif _isRaid == false then
			if _isGroup == false then 
				_groupMembers = 0
				_raidMembers = 0
				indicateGroupChange = true 
			end
			
			_isGroup = true
		end
		
		if unitId == false then
			local unitTypeList = _idCache[string.format('raid%s', groupId)]
		
			for id, value in pairs(unitTypeList) do
				_fctSetIDCache(string.format('raid%s', groupId), value, false, '_fctUnitChange')
			end
		else
			_fctSetIDCache(string.format('raid%s', groupId), unitId, true, '_internalFunc.processUnitChange')
		end
		
		local backupGroupCount, backupRaidCount = _groupMembers, _raidMembers
		
		if _isRaid == true then
		
			_raidMembers = 0
			
			for idx = 1, 20, 1 do
				if _idCache[string.format('raid%02d', idx)] ~= nil then _raidMembers = _raidMembers + 1 end
			end
			
			if _raidMembers == 0 then _isRaid = false end
			
		elseif _isGroup == true then
		
			_groupMembers = 0
			
			for idx = 1, 5, 1 do
				if _idCache[string.format('group%02d', idx)] ~= nil then _groupMembers = _groupMembers + 1 end
			end
			
			if _groupMembers == 0 then _isGroup = false end
			
		end
		
		if indicateGroupChange == true or backupGroupCount ~= _groupMembers or backupRaidCount ~= _raidMembers then	_fctGroupStatus() end
		
	elseif string.find(unitType, 'group..%.') == 1 then
		local groupId = string.sub(unitType, 6, 7)
		if _idCache[string.format('group%s', groupId)] == nil then
			local luID = oInspectUnitLookup(string.format('group%s', groupId))
			if luID ~= nil then 
				local unitInfoTable = {}
				unitInfoTable[luID] = string.format('group%s', groupId)
				_fctProcessUnitInfo (unitInfoTable)
			end
		end
	elseif string.find(unitType, 'player') == 1 then
		
		local playerId = oInspectUnitLookup('player')
		local suffix = ''
		
		if string.find(unitType, 'player.pet') == 1 then
			suffix = '.pet'
		elseif string.find(unitType, 'player.target') == 1 then
			suffix = '.target'
		end
	
		for idx = 1, 20, 1 do
			local luID = oInspectUnitLookup(string.format('group%02d', idx, suffix))
			
			if luID == playerId then
				local unitInfoTable = {}
				if unitId == nil then
					unitInfoTable[false] = string.format('group%02d%s', idx, suffix)
				else
					unitInfoTable[luID] = string.format('group%02d%s', idx, suffix)
				end
				_fctProcessUnitInfo (unitInfoTable)
				break
			end
		end
	end

end

---------- library public function block ---------

function EnKai.unit.getPlayerDetails()
  
	if _idCache.player == nil or _unitCache[_idCache.player[1]] == nil then 
		local temp = oFuncs.oInspectUnitDetail('player') 
		
		if temp.id ~= 'player' then
			_fctSetIDCache('player', temp.id, true, 'EnKai.unit.getPlayerDetails')
			_unitCache[_idCache.player[1]] = temp
			_unitCache[_idCache.player[1]].lastUpdate = oFuncs.oInspectTimeReal()
		end
		
		return temp
	end
	
	return _unitCache[_idCache.player[1]]
   
end

function EnKai.unit.getCallingText (calling) return lang.callings[calling] end

function EnKai.unit.init()

	_subscriptions[oFuncs.oInspectAddonCurrent()] = {}

	if _unitManager == true then return end

	if EnKai.internal.checkEvents ("EnKai.Unit", true) == false then return nil end

	Command.Event.Attach(Event.Unit.Availability.Full, _fctUnitAvailableHandler, "EnKai.unit.Availability.Full")
	Command.Event.Attach(Event.Unit.Availability.None, _fctUnitUnAvailableHandler, "EnKai.unit.Availability.None")
	
	EnKai.eventHandlers["EnKai.Unit"]["PlayerAvailable"], EnKai.events["EnKai.Unit"]["PlayerAvailable"] = Utility.Event.Create(addonInfo.identifier, "EnKai.Unit.PlayerAvailable")
	EnKai.eventHandlers["EnKai.Unit"]["GroupStatus"], EnKai.events["EnKai.Unit"]["GroupStatus"] = Utility.Event.Create(addonInfo.identifier, "EnKai.Unit.GroupStatus")
	EnKai.eventHandlers["EnKai.Unit"]["Available"], EnKai.events["EnKai.Unit"]["Available"] = Utility.Event.Create(addonInfo.identifier, "EnKai.Unit.Available")
	EnKai.eventHandlers["EnKai.Unit"]["Unavailable"], EnKai.events["EnKai.Unit"]["Unavailable"] = Utility.Event.Create(addonInfo.identifier, "EnKai.Unit.Unavailable")
	EnKai.eventHandlers["EnKai.Unit"]["Change"], EnKai.events["EnKai.Unit"]["Change"] = Utility.Event.Create(addonInfo.identifier, "EnKai.Unit.Change")
	
	Command.Event.Attach(Event.Combat.Damage, _fctCombatDamage, "EnKai.Combat.Damage")
	
	for idx = 1, #_watchUnits, 1 do
		local unitEvent = Library.LibUnitChange.Register(_watchUnits[idx])
		Command.Event.Attach(unitEvent, function (_, unitData) _fctUnitChange(unitData, _watchUnits[idx]) end, "EnKai.Unit.unitChange." .. _watchUnits[idx])
	end

	for idx = 1, 20, 1 do
		local unitEvent = Library.LibUnitChange.Register(string.format('group%02d', idx))
		Command.Event.Attach(unitEvent, function (_, unitData) _fctUnitChange(unitData, string.format('group%02d', idx)) end, "EnKai.Unit.unitChange." .. string.format('group%02d', idx))

		if idx <= 5 then
			local unitEvent = Library.LibUnitChange.Register(string.format('group%02d', idx) .. '.target')
			Command.Event.Attach(unitEvent, function (_, unitData) _fctUnitChange(unitData, string.format('group%02d', idx) .. '.target') end, "EnKai.Unit.unitChange." .. string.format('group%02d', idx) .. ".target")
			
			local unitEvent = Library.LibUnitChange.Register(string.format('group%02d', idx) .. '.pet')
			Command.Event.Attach(unitEvent, function (_, unitData) _fctUnitChange(unitData, string.format('group%02d', idx) .. '.pet') end, "EnKai.Unit.unitChange." .. string.format('group%02d', idx) .. ".pet")
		end
	end

	
	
	-- if nkDebug then
		-- debugUI = _fctDebugUI()
	-- end
	
	_unitManager = true

end

function EnKai.unit.subscribe(sType)

	if _subscriptions == nil then _subscriptions = {} end
	if _subscriptions[sType] == nil then _subscriptions[sType] = {} end

	_subscriptions[sType][oFuncs.oInspectAddonCurrent()] = true
	
	if sType == 'player.target' then
		local targetID = oInspectUnitLookup('player.target')
		if targetID ~= nil then _internalFunc.processUnitChange ('player.target', targetID) end
	elseif sType == 'focus' then
		local focusID = oInspectUnitLookup('focus')
		if focusID ~= nil then _internalFunc.processUnitChange ('focus', focusID) end
	end

end

function EnKai.unit.unsubscribe(sType)

	if _subscriptions[sType] ~= nil then
		subscriptions[sType][oFuncs.oInspectAddonCurrent()] = nil
	end

end

function EnKai.unit.getGroupStatus ()

	if _isRaid == true then
		return 'raid', _aidMembers
	elseif _isGroup == true then
		return 'group', _groupMembers
	else
		return 'single', nil
	end

end

function EnKai.unit.getUnitIDByType (unitType) 

	if _idCache[unitType] == nil then
		local flag, details = pcall (Inspect.Unit.Detail, unitType)
		if flag and details ~= nil then
			--print ('EnKai.unit.getUnitIDByType', unitType, details.id)
			if details.type == unitType then 
				_fctSetIDCache(details.type, details.id, true, 'EnKai.unit.getUnitIDByType')
				_unitCache[details.id] = details
				_unitCache[details.id].lastUpdate = oFuncs.oInspectTimeReal()
			end
		end
	end
	
	return _idCache[unitType] 
end

function EnKai.unit.getUnitTypes (unitID) 

	local retValues = {}

	for unitType, list in pairs (_idCache) do
		if EnKai.tools.table.isMember(list, unitID) then
			table.insert(retValues, unitType) 
		end
	end
	
	return retValues

end

function EnKai.unit.GetUnitDetail (unitID)

	if _idCache[unitID] ~= nil and #_idCache[unitID] > 0 then
		unitID = _idCache[unitID][1]
	end
	
	--if _unitCache[unitID] == nil or oFuncs.oInspectTimeReal() - _unitCache[unitID].lastUpdate > 60 then -- change check time > 60 secs for performance
	if _unitCache[unitID] == nil then
		local temp = oFuncs.oInspectUnitDetail(unitID)
		if temp ~= nil then
			_unitCache[temp.id] = temp
			_unitCache[temp.id].lastUpdate = oFuncs.oInspectTimeReal()
		end
	end
	
	return _unitCache[unitID]

end

-------------------- STARTUP EVENTS --------------------
