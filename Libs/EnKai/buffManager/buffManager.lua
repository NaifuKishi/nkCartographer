local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.BuffManager then EnKai.BuffManager = {} end

local internal    = privateVars.internal
local data        = privateVars.data
local oFuncs	  = privateVars.oFuncs

---------- init local variables ---------

local _bdManager		= false
local _subscriptions	= {}
local _trackedUnits		= {}
local _bdList			= {} -- a list of all identified buffs of all units
local _processBDList	= {} -- a list of active subscribed buffs
local _buffCache1st		= {} -- only maintained for a buff until remove event
local _buffCache2nd		= {} -- maintend for the whole session
local _bdByType			= {}
local _combatCheck		= {}
local _combatUnits		= {}

local oInspectBuffList	= Inspect.Buff.List
local oInspectBuffDetail= Inspect.Buff.Detail

---------- local function block ---------

local function _fctIsSubscribed(unit, buffDetails, combatLogFlag)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_fctIsSubscribed") end

	local thisType, thisTypeR = "BUFFS", "buff"
	if buffDetails.debuff then thisType, thisTypeR = "DEBUFFS", "debuff" end
	
	local addonSubscriptions = {}
	local hasSubscribed = false
	
	for addon, sDetails in pairs(_subscriptions) do
	
		if sDetails[thisType] ~= nil then
		
			if sDetails[thisType]["*"] ~= nil then
				local subscription = sDetails[thisType]["*"]
				if subscription.target == "*" or subscription.target == buffDetails.caster or EnKai.tools.table.isMember(EnKai.unit.getUnitTypes(unit), subscription.target) then
					addonSubscriptions[addon] = { buffType = thisTypeR, subscription = subscription }
					hasSubscribed = true
				end
			else
				local subscription = sDetails[thisType][buffDetails.id]
				if subscription == nil then subscription = sDetails[thisType][buffDetails.type] end
				if subscription == nil then subscription = sDetails[thisType][buffDetails.name] end
			
				if subscription ~= nil and subscription.caster == buffDetails.caster then
				
					if EnKai.tools.table.isMember(EnKai.unit.getUnitTypes(unit), subscription.target) then
						addonSubscriptions[addon] = { buffType = thisTypeR, subscription = subscription }
						hasSubscribed = true
					else
						if string.find(subscription.target, 'addonType') ~= nil then
							local unitDetails = EnKai.unit.GetUnitDetail (unit)
							
							if subscription.target == 'addonType' .. unitDetails.type then
								addonSubscriptions[addon] = { buffType = thisTypeR, subscription = subscription }
								hasSubscribed = true
							end
						end
					end
				end
			end
		end
	end	
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctIsSubscribed", debugId) end
	
	return hasSubscribed, addonSubscriptions

end

local function _fctBuffAdd (_, unit, buffs)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_fctBuffAdd") end

	if _trackedUnits[unit] ~= true then 
		EnKai.BuffManager.initUnitBuffs(unit) 
		
		if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctBuffAdd", debugId) end
		
		return
	end

	local adds, hasAdds = {}, false
	
	local buffInfo = oInspectBuffDetail(unit, buffs)
	
	for buffId, buffDetails in pairs(buffInfo) do

		buffDetails.start = oFuncs.oInspectTimeReal()
		buffDetails.lastChange = buffDetails.start
	
		if _bdList[unit] == nil then _bdList[unit] = {} end
		_bdList[unit][buffId] = true
		
		if _buffCache1st[unit] == nil then 
			_buffCache1st[unit] = {}
			_buffCache2nd[unit] = {}
		end
		
		_buffCache1st[unit][buffId] = buffDetails
		_buffCache2nd[unit][buffId] = buffDetails
		
		if buffDetails.type ~= nil then
			if _bdByType[unit] == nil then _bdByType[unit] = {} end
			_bdByType[unit][buffDetails.type] = buffId
		end
		
		local sFlag, subscriptionList = _fctIsSubscribed(unit, buffDetails)
		
		if sFlag then
		
			if _processBDList[unit] == nil then _processBDList[unit] = {} end
			_processBDList[unit][buffId] = true
		
			for addon, sDetails in pairs(subscriptionList) do
				if adds[addon] == nil then adds[addon] = {} end
				adds[addon][buffDetails.id] = { bType = sDetails.buffType, typeKey = buffDetails.type, target = sDetails.target, name = buffDetails.name, id = buffDetails.id, stack = buffDetails.stack, description = buffDetails.description }
			end
			
			hasAdds = true
		end
	end
	
	if hasAdds then 
		for addon, addList in pairs(adds) do
			EnKai.eventHandlers["EnKai.BuffManager"]["Add"](unit, addon, addList) 
		end
	end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctBuffAdd", debugId) end
	
end

local function _fctBuffRemove (_, unit, buffs)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_fctBuffRemove") end

	if _trackedUnits[unit] ~= true then 
		EnKai.BuffManager.initUnitBuffs(unit)
		
		if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctBuffRemove", debugId) end
		
		return
	end

	local removes, hasRemoves = {}, false

	if _buffCache1st[unit] == nil then return end
	
	for buffId, _ in pairs(buffs) do
	
		if _buffCache1st[unit][buffId] ~= nil then
	
			local sFlag, subscriptionList = _fctIsSubscribed(unit, _buffCache1st[unit][buffId])
			
			if sFlag then
			
				for addon, sDetails in pairs(subscriptionList) do
					if removes[addon] == nil then removes[addon] = {} end
					removes[addon][buffId] = { bType = sDetails.buffType, typeKey = _buffCache1st[unit][buffId].type, target = sDetails.target, name = _buffCache1st[unit][buffId].name, id = buffId }
				end
			
				hasRemoves = true
			end
			
		end
			
		_bdList[unit][buffId] = nil
		if _processBDList[unit] ~= nil and _processBDList[unit][buffId] ~= nil then _processBDList[unit][buffId] = nil end
		_buffCache1st[unit][buffId] = nil
		
		for k, v in pairs(_bdByType) do
			if v == buffId then
				_bdByType[k] = nil
				break
			end
		end

	end
	
	if hasRemoves then
		for addon, removeList in pairs(removes) do
			EnKai.eventHandlers["EnKai.BuffManager"]["Remove"](unit, addon, removeList) 
		end
	end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctBuffRemove", debugId) end
	
end

local function _fctBuffChange (_, unit, buffs, combatLogFlag)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_fctBuffChange") end

	if _trackedUnits[unit] ~= true then 
		EnKai.BuffManager.initUnitBuffs(unit)
		
		if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctBuffChange", debugId) end
		
		return
	end

	if _bdList[unit] == nil then return end
	
	local changes, hasChanges = {}, false

	local buffInfo = oInspectBuffDetail(unit, buffs)
	  
	for buffId, buffDetails in pairs(buffInfo) do
	
		if buffDetails.type ~= nil then
		
			if _bdList[unit][buffDetails.id] == nil then -- buff changed before add (or potentially after remove but come on seriously Trion ...)
				_fctBuffAdd (_, unit, {[buffId] = true})
			else
			
				local sFlag, subscriptionList = _fctIsSubscribed(unit, buffDetails, combatLogFlag)
				
				if sFlag then
					
					for addon, sDetails in pairs(subscriptionList) do
						if changes[addon] == nil then changes[addon] = {} end
						changes[addon][buffId] = { bType = sDetails.buffType, typeKey = buffDetails.type, target = sDetails.target, name = buffDetails.name, id = buffId, stack = buffDetails.stack, remaining = buffDetails.remaining }
					end
					
					if _processBDList[unit] == nil then _processBDList[unit] = {} end
					_processBDList[unit][buffId] = true
				
					hasChanges = true
				end
				
				_bdList[unit][buffDetails.id] = true
				
				buffDetails.start = _buffCache1st[unit][buffDetails.id].start
				
				_buffCache1st[unit][buffDetails.id] = buffDetails
				_buffCache1st[unit][buffDetails.id].lastChange = oFuncs.oInspectTimeReal()
				
				_buffCache2nd[unit][buffDetails.id] = buffDetails
				
				if _bdByType[unit] == nil then _bdByType[unit] = {} end
				
				if buffDetails.type == nil then
					--dump(buffDetails)
				else
					_bdByType[unit][buffDetails.type] = buffId
				end
			end
			
		end

	end
	
	if hasChanges then
		for addon, changeList in pairs(changes) do
			EnKai.eventHandlers["EnKai.BuffManager"]["Change"](unit, addon, changeList) 
		end
	end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctBuffChange", debugId) end
	
end

local function _fctGetRealIDByType (unit, buffType)

	if _bdByType[unit] == nil then return nil end
	
	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_fctGetRealIDByType") end

	for thisBuffType, realID in pairs(_bdByType[unit]) do
		if buffType == thisBuffType then
			if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctGetRealIDByType", debugId) end
			return realID
		end
	end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctGetRealIDByType", debugId) end
	
	return nil

end

local function _fctGetTypeByRealID (unit, buffId)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_fctGetTypeByRealID") end

	for buffType, realId in pairs(_bdByType[unit]) do
		if realId == buffId then
			if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctGetTypeByRealID", debugId) end
			return buffType
		end
	end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctGetTypeByRealID", debugId) end
	
	return nil

end

local function _fctCombatDeath(_, info)

	if _bdList[info.target] == nil then return end
	
	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_fctCombatDeath") end
	
	_combatCheck[info.target] = nil
	
	local temp = {}
	for key, _ in pairs(_bdList[info.target]) do
		temp[key] = true
	end
	
	_fctBuffRemove (_, info.target, temp)
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctCombatDeath", debugId) end
	
end

local function _checkCombatUnit(unitId)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_checkCombatUnit") end

	if _combatCheck[unitId] == nil or oFuncs.oInspectTimeReal() - _combatCheck[unitId] >= 1 then
		_combatCheck[unitId] = oFuncs.oInspectTimeReal()
	else
		if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_checkCombatUnit", debugId) end
		return
	end
	
	local buffList = oInspectBuffList(unitId)
	
	if buffList == nil then return end
	
	local adds, hasAdds = {}, false
	local removes, hasRemoves = {}, false
	local updates, hasUpdates = {}, false
	
	if _bdList[unitId] == nil then _bdList[unitId] = {} end
	if _processBDList[unitId] == nil then _processBDList[unitId] = {} end
	
	for buffId, buffDetails in pairs(buffList) do
		if _bdList[unitId][buffId] == nil then
			hasAdds = true
			adds[buffId] = true
		else
			hasUpdates = true
			updates[buffId] = true
		end
	end
	
	if _bdList[unitId] ~= nil then
	
		for buffId, _ in pairs(_bdList[unitId]) do
			if buffList[buffId] == nil then
				hasRemoves = true
				removes[buffId] = true
			end
		end
	end
	
	if hasAdds then _fctBuffAdd(_, unitId, adds, true) end
	if hasRemoves then _fctBuffRemove(_, unitId, removes, true) end
	if hasUpdates then _fctBuffChange(_, unitId, updates, true) end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_checkCombatUnit", debugId) end
	
end

local function _fctCombatDamage(_, info)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_fctCombatDamage") end

	-- !!!!! Hier liegt das Problem bei grossen Gruppen. Es wird für Target und Caster heftigst gepollt
	
	if info.target ~= nil then
		local details = EnKai.unit.GetUnitDetail(info.target)
		if details ~= nil and details.player ~= true then
			if _combatUnits["*"] ~= nil or _combatUnits[details.type] ~= nil then _checkCombatUnit(info.target) end
		end
	end
	
	-- if info.caster ~= nil then
		-- local details = EnKai.unit.GetUnitDetail(info.caster)
		-- if details ~= nil and details.player ~= true then
			-- _checkCombatUnit(info.caster)
		-- end
	-- end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_fctCombatDamage", debugId) end

end

local function _fctProcessBuffDebuffList()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "_fctProcessBuffDebuffList") end
	
	local _curTime = oFuncs.oInspectTimeReal()

	local updateList = {}
	local updatesFound = false
	
	for unit, buffList in pairs(_processBDList) do
		
		for buffId, _ in pairs(buffList) do
		
			if _buffCache1st[unit][buffId].remaining ~= nil then
		
				--if _fctIsSubscribed(unit, _buffCache1st[unit][buffId]) then

					-- if _buffCache1st[unit][buffId].lastChange == nil then -- we do one reinitialization do better sync the remaining time
						
						-- local flag, buffDetails = pcall (oInspectBuffDetail, unit, buffId)
						-- if flag and buffDetails ~= nil then
							-- _buffCache1st[unit][buffId] = buffDetails
							-- _buffCache1st[unit][buffId].lastChange = _curTime
						-- end
						
						-- local thisBuffType = _fctGetTypeByRealID (unit, buffId)
						-- if thisBuffType ~= nil then
							-- if updateList[unit] == nil then updateList[unit] = {} end
							-- table.insert(updateList[unit], thisBuffType)
							-- updatesFound = true
						-- end
						
						
					--elseif _buffCache1st[unit][buffId].remaining <= 1 or _curTime - _buffCache1st[unit][buffId].lastChange >= 1 then
					if _buffCache1st[unit][buffId].remaining <= 1 or _curTime - _buffCache1st[unit][buffId].lastChange >= 1 then
					
						--local diff = _curTime - _buffCache1st[unit][buffId].start
					
						--_buffCache1st[unit][buffId].remaining = _buffCache1st[unit][buffId].remaining - diff
						_buffCache1st[unit][buffId].remaining = _buffCache1st[unit][buffId].duration - (_curTime - _buffCache1st[unit][buffId].start)
						if _buffCache1st[unit][buffId].remaining < 0 then _buffCache1st[unit][buffId].remaining = 0 end
					
						_buffCache1st[unit][buffId].lastChange = _curTime
						
						local thisBuffType = _fctGetTypeByRealID (unit, buffId)
						if thisBuffType ~= nil then
							if updateList[unit] == nil then updateList[unit] = {} end
							table.insert(updateList[unit], thisBuffType)
							updatesFound = true
						end
					end
				--end
			end
		end
	end
	
	if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "_fctProcessBuffDebuffList", debugId) end
	
	return updatesFound, updateList

end

local function _fctProcessBuffDebuffUpdates (updateList)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "_fctProcessBuffDebuffUpdates") end
	
	local updates, hasUpdates = {}, false
	local stop, hasStop = {}, false

	for addon, bTypeList in pairs(_subscriptions) do
		
		for bType, sList in pairs(bTypeList) do
			
			local buffType = "buff"
			if bType == "DEBUFFS" then buffType = "debuff" end
			
			for buffId, sDetails in pairs(sList) do
			
				local unitId = EnKai.unit.getUnitIDByType(sDetails.target)
				
				if unitId ~= nil then
				
					for _, thisUnitId in pairs(unitId) do
				
						if updateList[thisUnitId] ~= nil and EnKai.tools.table.isMember(updateList[thisUnitId], buffId) then
							local buffDetails = EnKai.BuffManager.GetBuffDetails(thisUnitId, buffId)
							
							if buffDetails ~= nil then
							
								if buffDetails.remaining ~= nil and buffDetails.remaining <= 0 then
									if stop[addon] == nil then stop[addon] = {} end
									if stop[addon][thisUnitId] == nil then stop[addon][thisUnitId] = {} end
									
									stop[addon][thisUnitId][buffId] = { bType = buffType, typeKey = buffDetails.type, target = sDetails.target, name = buffDetails.name, id = buffId, stack = buffDetails.stack }
									hasStop = true
									
								else
									if updates[addon] == nil then updates[addon] = {} end
									if updates[addon][thisUnitId] == nil then updates[addon][thisUnitId] = {} end
									
									updates[addon][thisUnitId][buffId] = { bType = buffType, typeKey = buffDetails.type, target = sDetails.target, name = buffDetails.name, id = buffId, remaining = buffDetails.remaining, stack = buffDetails.stack }
									hasUpdates = true
								end
							end
						end
					end
				end
			end
		end
	
	end
	
	if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "_fctProcessBuffDebuffUpdates", debugId) end
	
	return hasUpdates, updates, hasStop, stop

end

---------- library public function block ---------

function EnKai.BuffManager.init()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "EnKai.BuffManager.init") end

	_subscriptions[oFuncs.oInspectAddonCurrent()] = { buffs = {}, debuffs = {} }

	if _bdManager == true then return end

	if EnKai.internal.checkEvents ("EnKai.BuffManager", true) == false then return nil end

	Command.Event.Attach(Event.Buff.Add, _fctBuffAdd, "EnKai.BuffManager.Buff.Add")
	Command.Event.Attach(Event.Buff.Change, _fctBuffChange, "EnKai.BuffManager.Buff.Change")
	Command.Event.Attach(Event.Buff.Remove, _fctBuffRemove, "EnKai.BuffManager.Buff.Remove")
	Command.Event.Attach(Event.Combat.Death, _fctCombatDeath, "EnKai.BuffManager.Combat.Death")
	Command.Event.Attach(Event.Combat.Damage, _fctCombatDamage, "EnKai.BuffManager.Combat.Damage")

	EnKai.eventHandlers["EnKai.BuffManager"]["Add"], EnKai.events["EnKai.BuffManager"]["Add"] = Utility.Event.Create(addonInfo.identifier, "EnKai.BuffManager.Add")
	EnKai.eventHandlers["EnKai.BuffManager"]["Change"], EnKai.events["EnKai.BuffManager"]["Change"] = Utility.Event.Create(addonInfo.identifier, "EnKai.BuffManager.Change")
	EnKai.eventHandlers["EnKai.BuffManager"]["Remove"], EnKai.events["EnKai.BuffManager"]["Remove"] = Utility.Event.Create(addonInfo.identifier, "EnKai.BuffManager.Remove")

	EnKai.unit.init()

	_bdManager = true
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.init", debugId) end

end

function EnKai.BuffManager.subscribe(sType, sId, castBy, sTarget, sStack)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "EnKai.BuffManager.subscribe") end

	sType = string.upper(sType)

	if sType == 'BUFF' then sType = 'BUFFS' end
	if sType == 'DEBUFF' then sType = 'DEBUFFS' end

	if _subscriptions[oFuncs.oInspectAddonCurrent()] == nil then
		_subscriptions[oFuncs.oInspectAddonCurrent()] = { BUFFS = {}, DEBUFFS = {} }
	end

	if _subscriptions[oFuncs.oInspectAddonCurrent()][sType] == nil then
		_subscriptions[oFuncs.oInspectAddonCurrent()][sType] = {}
	end
	
	_subscriptions[oFuncs.oInspectAddonCurrent()][sType][sId] = { caster = castBy, target = sTarget, stack = sStack }
	
	local list, runEvent = {}, false
	
	if string.find(sTarget, "addonType") ~= nil then
		sTarget = EnKai.strings.right (sTarget, "addonType", 1, true)
		if _combatUnits[sTarget] == nil then _combatUnits[sTarget] = {} end
		table.insert(_combatUnits[sTarget], string.format("%s-%s", sType, sId))
	end

	if sTarget == "*" then
	
		if _combatUnits["*"] == nil then _combatUnits[sTarget] = {} end
		table.insert(_combatUnits["*"], string.format("%s-%s", sType, sId))
	
		for unitId, thisList in pairs(_buffCache1st) do
		
			if _trackedUnits[unitId] ~= true then
				EnKai.BuffManager.initUnitBuffs(unitId) 
			else
				if list[unitId] == nil then list[unitId] = {} end
				
				for k, v in pairs(thisList) do
					list[unitId][k] = true
					runEvent = true
				end
			end
		end
	else
		local unitIdList = EnKai.unit.getUnitIDByType(sTarget)
		
		if unitIdList ~= nil then
		
			for _, unitId in pairs(unitIdList) do
				if _trackedUnits[unitId] ~= true then 
					EnKai.BuffManager.initUnitBuffs(unitId) 
				else
					if list[unitId] == nil then list[unitId] = {} end
				
					local thisList = _buffCache1st[unitId]
					if _buffCache1st[unitId] ~= nil then
						for k, v in pairs(thisList) do
							list[unitId][k] = true
							runEvent = true
						end
					end
				end
			end
		end
	end
	
	if runEvent then 
		for unitId, buffList in pairs(list) do
			_fctBuffAdd (_, unitId, buffList) 
		end
	end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.subscribe", debugId) end
	
end

function EnKai.BuffManager.unsubscribe(sType, sId)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "EnKai.BuffManager.unsubscribe") end

	if _subscriptions[oFuncs.oInspectAddonCurrent()] ~= nil and _subscriptions[oFuncs.oInspectAddonCurrent()][sType] ~= nil and _subscriptions[oFuncs.oInspectAddonCurrent()][sType][sId] ~= nil then
	
		local thisSubscription = _subscriptions[oFuncs.oInspectAddonCurrent()][sType][sId]
		if string.find(thisSubscription.target, "addonType") ~= nil then
			local sTarget = EnKai.strings.right (thisSubscription.target, "addonType", 1, true)
			
			if _combatUnits[sTarget] ~= nil then 
				_combatUnits[sTarget] = EnKai.tools.table.removeValue(_combatUnits[sTarget], string.format("%s-%s", sType, sId))
				if #_combatUnits[sTarget] == 0 then _combatUnits[sTarget] = nil end
			end
		elseif thisSubscription.target == "*" then
			
			if _combatUnits["*"] ~= nil then 
				_combatUnits["*"] = EnKai.tools.table.removeValue(_combatUnits["*"], string.format("%s-%s", sType, sId))
				if #_combatUnits["*"] == 0 then _combatUnits["*"] = nil end
			end
			
		end
	
		_subscriptions[oFuncs.oInspectAddonCurrent()][sType][sId] = nil
	end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.unsubscribe", debugId) end

end

function EnKai.BuffManager.GetBuffDetails(unit, buffId)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "EnKai.BuffManager.GetBuffDetails") end

	if _buffCache1st[unit] == nil then 
		unit = EnKai.unit.getUnitIDByType(unit)
		if unit == nil then 
			if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.GetBuffDetails", debugId) end
			return
		else
			local found = false
			for _, unitId in pairs(unit) do
				if _buffCache1st[unitId] ~= nil then
					found = true
					unit = unitId
					break
				end
			end
			
			if not found then 
				if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.GetBuffDetails", debugId) end
				return
			end
		end
	end

	local temp = _buffCache1st[unit][buffId]
	
	if temp == nil and _bdByType[unit][buffId] ~= nil then
		temp = _buffCache1st[unit][_bdByType[unit][buffId]]
	end
	
	if temp == nil then
		for id, details in pairs (_buffCache1st[unit]) do
			if details.name == buffId then
				temp = details
				break
			end
		end
	end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.GetBuffDetails", debugId) end
	
	return temp

end

function EnKai.BuffManager.GetCachedBuffDetails(unit, buffId)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "EnKai.BuffManager.GetCachedBuffDetails") end

	local temp = _buffCache2nd[unit][buffId]
	
	if temp == nil and _bdByType[unit][buffId] ~= nil then
		temp = _buffCache2nd[unit][_bdByType[unit][buffId]]
	end
	
	if temp == nil then
		for id, details in pairs (_buffCache2nd[unit]) do
			if details.name == buffId then
				temp = details
				break
			end
		end
	end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.GetCachedBuffDetails", debugId) end
	
	return temp

end

function EnKai.BuffManager.initUnitBuffs(unit)

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "EnKai.BuffManager.initUnitBuffs") end

	_trackedUnits[unit] = true

	local newBuffList, hasNewBuffs = {}, false
	
	local buffList = oInspectBuffList(unit)
	
	if buffList == nil then return end
	
	for buffId, _ in pairs(buffList) do
	
		if _bdList[unit] == nil or _buffCache1st[unit] == nil or _buffCache1st[unit][buffId] == nil then
			newBuffList[buffId] = true
			hasNewBuffs = true
		end
	
	end
	
	if hasNewBuffs then _fctBuffAdd(_, unit, newBuffList) end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.initUnitBuffs", debugId) end
	
	return hasNewBuffs

end

function EnKai.BuffManager.GetUnitBuffList (unit) 

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "EnKai.BuffManager.GetUnitBuffList") end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.GetUnitBuffList", debugId) end
	
	return _buffCache1st[unit]

end

function EnKai.BuffManager.isBuffActive(unit, id) 

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "EnKai.BuffManager.isBuffActive") end

	if _buffCache1st[unit] == nil then 
		local list = EnKai.unit.getUnitIDByType(unit)
		if list == nil then return false end
		unit = list[1] -- nicht sauber. muss ich später mal angehen da es durchaus sein kann das mehrere units gefunden werden
	end

	if _buffCache1st[unit] == nil then 
	
		local flag, buffList = pcall (oInspectBuffList, unit)
		
		if flag and buffList ~= nil then
			
			local flag, buffDetails = pcall(oInspectBuffDetail, unit, buffList)
			if flag and buffDetails ~= nil then
			
				_buffCache1st[unit] = {}
				if _buffCache2nd[unit] == nil then _buffCache2nd[unit] = {} end
				if _bdList[unit] == nil then _bdList[unit] = {} end
				if _processBDList[unit] == nil then _processBDList[unit] = {} end
				
				for buffId, details in pairs(buffDetails) do
					_bdList[unit][buffId] = true
					_buffCache1st[unit][buffId] = buffDetails
					_buffCache2nd[unit][buffId] = buffDetails

					if details.type ~= nil then
						if _bdByType[unit] == nil then _bdByType[unit] = {} end
						_bdByType[unit][details.type] = buffId
					end
				end
			else
				if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.isBuffActive", debugId) end
				return false
			end
		else
			if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.isBuffActive", debugId) end
			return false
		end
	end
	
	if _buffCache1st[unit][id] ~= nil then
		if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.isBuffActive", debugId) end
		return true
	end
	
	local realID = _fctGetRealIDByType(unit, id)
	
	if realID == nil or _buffCache1st[unit][realID] == nil then
		if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.isBuffActive", debugId) end
		return false
	end
	
	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "EnKai.BuffManager.isBuffActive", debugId) end
	
	return true

end

---------- addon internal function block ---------

function internal.processBuffs ()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai internal.processBuffs") end

	if _bdManager == false then
		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai internal.processBuffs", debugId) end
		return
	end
	
	local updatesFound, updateList = _fctProcessBuffDebuffList()
	
	if not updatesFound then
		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai internal.processBuffs", debugId) end
		return
	end
		
	local hasUpdates, updates, hasStop, stop = _fctProcessBuffDebuffUpdates (updateList)
		
	if hasUpdates == true then 
		for addon, unitList in pairs(updates) do
			for unitId, changeList  in pairs(unitList) do
				EnKai.eventHandlers["EnKai.BuffManager"]["Change"](unitId, addon, changeList) 
			end
		end
	end
	
	if hasStop == true then 
		for addon, unitList in pairs(stop) do
			for unitId, removeList  in pairs(unitList) do
				EnKai.eventHandlers["EnKai.BuffManager"]["Remove"](unitId, addon, removeList) 
			end
		end
	end

	if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai internal.processBuffs", debugId) end

end