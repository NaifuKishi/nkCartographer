--[[
   _EnKai.unit
    Description:
        Provides a comprehensive unit management system for RIFT addons.
        Handles unit tracking, caching, and event management for various unit types.
        Supports player, group, raid, and target tracking with efficient caching mechanisms.
    Parameters:
        None (library initialization)
    Returns:
        EnKai.unit: The initialized unit management library
    Process:
        1. Initializes internal data structures for unit tracking
        2. Sets up event handlers for unit availability and changes
        3. Implements caching mechanisms for unit information
        4. Provides functions for unit information retrieval and management
    Notes:
        - Uses LibUnitChange for simplified unit change tracking
        - Implements efficient caching to minimize API calls
        - Provides events for unit availability, changes, and group status
        - Supports both individual units and group/raid units
        - Enhanced group and raid detection logic
        - Improved unit change handling and caching
    Available Methods:
        - init(): Initializes the unit management system
        - subscribe(sType): Subscribes to unit change events for a specific unit type
        - unsubscribe(sType): Unsubscribes from unit change events
        - getGroupStatus(): Returns the current group status (single, group, raid)
        - getUnitIDByType(unitType): Gets unit IDs by unit type
        - getUnitTypes(unitID): Gets all unit types for a specific unit ID
        - GetUnitDetail(unitID): Gets detailed information about a unit
        - getPlayerDetails(): Gets detailed information about the player
        - getCallingText(calling): Gets localized text for a calling
        - GetUnitByIdentifier(identifier): Gets a unit ID by its identifier
]]
		
local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.unit then EnKai.unit = {} end

local lang        = privateVars.langTexts
local data        = privateVars.data

local InspectTimeReal		= Inspect.Time.Real
local InspectAddonCurrent 	= Inspect.Addon.Current
local InspectUnitLookup		= Inspect.Unit.Lookup
local InspectUnitDetail		= Inspect.Unit.Detail
local InspectUnitList		= Inspect.Unit.List

local stringFind	= string.find
local stringFormat	= string.format
local stringSub		= string.sub
local stringMatch	= string.match

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

---------- local function block ---------

local function _buildDebugUI ()

	local context = UI.CreateContext("nkUI") 
	context:SetStrata ('dialog')

	local frame = EnKai.uiCreateFrame("nkFrame", "EnKai.unit.testFrame", context)
	frame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 500, 0)
	frame:SetHeight(300)
	frame:SetWidth(600)
	frame:SetBackgroundColor(0,0,0,1)

	local text = EnKai.uiCreateFrame("nkText", "EnKai.unit.testFrame.text", frame)
	text:SetPoint("TOPLEFT", frame, "TOPLEFT", 2, 2)
	text:SetWidth(598)
	text:SetHeight(298)
	text:SetFontColor(1,1, 1, 1)
	text:SetWordwrap(true)
	text:SetFontSize(12)

	function frame:Update()
		local thisText, thisText2 = "", ""

		local sortedKeys = EnKai.tools.table.getSortedKeys (_idCache)
		
		for _, key in pairs(sortedKeys) do
			local units = _idCache[key]
			thisText = stringFormat("%s%s: %s\n", thisText, key, EnKai.tools.table.serialize(units))
		end

		text:SetText(thisText)
	end

	return frame

end

local function _fctSetIDCache(key, value, flag, source)

	if nkDebug and value then nkDebug.logEntry (addonInfo.identifier, "_fctSetIDCache", key, {source = source, value = value, flag = flag}) end

	if key == value then return end

	-- if flag then
		-- print (stringFormat('adding %s to %s (%s)', (value or 'nil'), key, source))
	-- else
		-- print (stringFormat('removing %s from %s (%s)', (value or 'nil'), key, source))
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
		local temp = InspectUnitDetail(info.caster)
	
		if temp ~= nil and temp.player ~= true then
			_unitCache[info.caster] = temp
			
			_fctSetIDCache(_unitCache[info.caster].type, info.caster, true, "_fctCombatDamage")
			
			_unitCache[info.caster].lastUpdate = InspectTimeReal()
			EnKai.eventHandlers["EnKai.Unit"]["Available"]({[info.caster] = "combatlog"})
			
			if debugUI then debugUI:Update() end
		end
	end
	
	if info.target ~= nil and _unitCache[info.target] == nil then
		local temp = InspectUnitDetail(info.caster)
	
		if temp ~= nil and temp.player ~= true then
			_unitCache[info.target] = temp
			
			_fctSetIDCache(_unitCache[info.target].type, info.target, true, "_fctCombatDamage")
			
			_unitCache[info.target].lastUpdate = InspectTimeReal()
			EnKai.eventHandlers["EnKai.Unit"]["Available"]({[info.target] = "combatlog"})
			
			if debugUI then debugUI:Update() end
		end
	end

end

--[[
local function _fctCombatDeath(_, info)

	if info.target ~= nil then
		
		local unitTypes = EnKai.unit.getUnitTypes (info.target)
		if unitTypes == nil then return end
		
		for key, _ in pairs(unitTypes) do
		
			_fctSetIDCache(key, info.target, false, "_fctCombatDeath")
			_unitCache[info.target] = nil
			EnKai.eventHandlers["EnKai.Unit"]["Unavailable"]({[info.target] = false})
			
			--print ('remove unit', info.target)
		
			if debugUI then debugUI:Update() end
		end
	end

end
]]

local function _fctUnitAvailableHandler (_, unitInfo)

	if nkDebug then nkDebug.logEntry (addonInfo.identifier, "_fctUnitAvailableHandler", "Startup", unitInfo) end

	local tempUnitInfo = {}
	local fireEvent = false

	for unitId, unitType in pairs (unitInfo) do

		if unitType ~= false and stringFind(unitType, 'mouseover') == nil then
			if stringFind (unitType, 'group..%.target') ~= nil and unitId == _idCache.player then
				tempUnitInfo[InspectUnitLookup(unitType)] = unitType
			else
				tempUnitInfo[unitId] = unitType				
				_unitCache[unitId] = InspectUnitDetail(unitId)
				_unitCache[unitId].lastUpdate = InspectTimeReal()
				
				_fctSetIDCache(unitType, unitId, true, "_fctUnitAvailableHandler")
			end

			fireEvent = true
		
			if stringFind(unitType, 'group') == 1 and stringFind(unitType, 'group..%.') == nil then

				for idx = 1, 20, 1 do
					local tempUnitType = stringFormat('group%02d', idx)
					local tempUnitId = InspectUnitLookup(tempUnitType)
					_internalFunc.processUnitChange (tempUnitType, tempUnitId)
					
					local tempUnitType = stringFormat('group%02d.target', idx)
					local tempUnitId = InspectUnitLookup(tempUnitType)
					_internalFunc.processUnitChange (tempUnitType, tempUnitId)
					
					local tempUnitType = stringFormat('group%02d.pet', idx)
					local tempUnitId = InspectUnitLookup(tempUnitType)
					_internalFunc.processUnitChange (tempUnitType, tempUnitId)
				end
			end
			
			_internalFunc.processUnitChange (unitType, unitId)
			
			if unitType == 'player' then
				-- gotta check if player is in a group as Rift API is just stupid

				local lookupTable = {}

				for idx = 1, 20, 1 do
					local tempUnitType = stringFormat('group%02d', idx)
					lookupTable[tempUnitType] = true
				end

				local tempUnitIList= InspectUnitLookup(lookupTable)
				for identifier, thisUnitID in pairs ( tempUnitIList ) do
					if unitId == thisUnitID then
						_internalFunc.processUnitChange (identifier, thisUnitID)
					end
				end

				if nkDebug then nkDebug.logEntry (addonInfo.identifier, "_fctUnitAvailableHandler", "player group lookup", tempUnitIList) end

				EnKai.eventHandlers["EnKai.Unit"]["PlayerAvailable"](_unitCache[unitId])
			end
		end	
	end

	if nkDebug then nkDebug.logEntry (addonInfo.identifier, "_fctUnitAvailableHandler", "unit info", tempUnitInfo) end

	if fireEvent then EnKai.eventHandlers["EnKai.Unit"]["Available"](tempUnitInfo) end
	
	if debugUI then debugUI:Update() end

end

local function _fctUnitUnAvailableHandler (_, unitInfo)

	for unitId, _ in pairs (unitInfo) do
	
		local unitTypes = EnKai.unit.getUnitTypes (unitId)
		
		for idx = 1, #unitTypes, 1 do
			_internalFunc.processUnitChange (unitTypes[idx], nil)
		end
	end	
	
	EnKai.eventHandlers["EnKai.Unit"]["Unavailable"](unitInfo)

	if debugUI then debugUI:Update() end
	
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

	_idCache[unitType] = {}
	
	if unitId == false then
		_internalFunc.processUnitChange(unitType, nil)
	else
		_fctSetIDCache(unitType, unitId, true, '_fctUnitChange')
		
		local details = InspectUnitDetail(unitType)
		if details ~= nil and details.player ~= true then
			_fctSetIDCache(details.type, unitId, true, '_fctUnitChange')
		
			_unitCache[unitId] = details
			_unitCache[unitId].lastUpdate = InspectTimeReal()
		end
		
		_internalFunc.processUnitChange(unitType, unitId)
	end
	
	if _subscriptions[unitType] == nil then return end
	
	for addon, _ in pairs(_subscriptions[unitType]) do
		EnKai.eventHandlers["EnKai.Unit"]["Change"](unitId, unitType)
		
		if debugUI then debugUI:Update() end
		break
	end

end

function _internalFunc.processUnitChange (unitType, unitId)

	if unitId == false or unitId == nil then
		 _fctSetIDCache(unitType, nil, false, '_internalFunc.processUnitChange')
	else
		 _fctSetIDCache(unitType, unitId, true, '_internalFunc.processUnitChange')
	end

	if stringFind(unitType, 'group') == 1 and stringFind (unitType, 'group..%.') == nil then

		-- process groups and check for group size change

		local newStatus = nil
		_groupMembers, _raidMembers = 0, 0

		local thisIsGroup, thisIsRaid = false, false

		for idx = 1, 20, 1 do
			local thisGroupTable = _idCache[stringFormat('group%02d', idx)]

			if thisGroupTable and next(thisGroupTable) ~= nil then 				
				if idx > 5 then 
					thisIsRaid = true 
					thisIsGroup = false
					_groupMembers = 0
					_raidMembers = _raidMembers + 1
				else
					thisIsGroup = true
					_groupMembers = _groupMembers + 1 
				end
			end
		end

		if thisIsRaid == true and _isRaid == false then
			_isRaid = true
			_fctGroupStatus()
		elseif thisIsGroup == true and _isGroup == false then
			_isGroup = true
			_fctGroupStatus()
		end
		
	elseif stringFind(unitType, 'group..%.pet') == 1 or stringFind(unitType, 'group..%.target') == 1 then
		if _idCache[unitType] == nil then
			local luID = InspectUnitLookup(unitType)
			if luID ~= nil then 
				local unitInfoTable = {}
				unitInfoTable[luID] = unitType
				_fctProcessUnitInfo (unitInfoTable)
			end
		end
	elseif stringFind(unitType, 'player') == 1 then
		--[[
		local playerId = InspectUnitLookup('player')
		local suffix = ''
		
		if stringFind(unitType, 'player.pet') == 1 then
			suffix = '.pet'
		elseif stringFind(unitType, 'player.target') == 1 then
			suffix = '.target'
		end
	
		for idx = 1, 20, 1 do
			local luID = InspectUnitLookup(stringFormat('group%02d', idx, suffix))
			
			if luID == playerId then
				local unitInfoTable = {}
				if unitId == nil then
					unitInfoTable[false] = stringFormat('group%02d%s', idx, suffix)
				else
					unitInfoTable[luID] = stringFormat('group%02d%s', idx, suffix)
				end
				_fctProcessUnitInfo (unitInfoTable)
				break
			end
		end
		]]
	end

end

---------- library public function block ---------

--[[
   _getPlayerDetails
    Description:
        Gets detailed information about the player.
        Returns a table with detailed information about the player unit.
    Parameters:
        None
    Returns:
        playerDetails (table): A table with detailed information about the player
    Notes:
        - This is a convenience function for getting player unit details
        - The returned table contains various player properties
]]
function EnKai.unit.getPlayerDetails()
  
	if _idCache.player == nil or _unitCache[_idCache.player[1]] == nil then 
		local temp = InspectUnitDetail('player') 
		
		if temp.id ~= 'player' then
			_fctSetIDCache('player', temp.id, true, 'EnKai.unit.getPlayerDetails')
			_unitCache[_idCache.player[1]] = temp
			_unitCache[_idCache.player[1]].lastUpdate = InspectTimeReal()
		end
		
		return temp
	end
	
	return _unitCache[_idCache.player[1]]
   
end

--[[
   _getCallingText
    Description:
        Gets localized text for a calling.
        Returns the localized text for the specified calling.
    Parameters:
        calling (string): The calling to get text for
    Returns:
        callingText (string): The localized text for the calling
    Notes:
        - Returns nil if the calling is not found
        - Uses the addon's language settings for localization
]]
function EnKai.unit.getCallingText (calling) return lang.callings[calling] end

--[[
   _init
    Description:
        Initializes the unit management system.
        Sets up event handlers and subscriptions for unit tracking.
    Parameters:
        None
    Returns:
        None
    Process:
        1. Checks if the unit manager is already initialized
        2. Sets up event handlers for unit availability and changes
        3. Creates necessary events for unit management
        4. Subscribes to combat events for unit tracking
        5. Registers watch units for tracking
        6. Sets up group and raid tracking
    Notes:
        - This function should be called once at addon initialization
        - Sets up the foundation for all unit tracking functionality
        - Creates events that other parts of the addon can subscribe to
]]
function EnKai.unit.init()

	_subscriptions[InspectAddonCurrent()] = {} -- probably useless

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
		local unitEvent = Library.LibUnitChange.Register(stringFormat('group%02d', idx))
		Command.Event.Attach(unitEvent, function (_, unitData) _fctUnitChange(unitData, stringFormat('group%02d', idx)) end, "EnKai.Unit.unitChange." .. stringFormat('group%02d', idx))

		if idx <= 5 then
			local unitEvent = Library.LibUnitChange.Register(stringFormat('group%02d', idx) .. '.target')
			Command.Event.Attach(unitEvent, function (_, unitData) _fctUnitChange(unitData, stringFormat('group%02d', idx) .. '.target') end, "EnKai.Unit.unitChange." .. stringFormat('group%02d', idx) .. ".target")
			
			local unitEvent = Library.LibUnitChange.Register(stringFormat('group%02d', idx) .. '.pet')
			Command.Event.Attach(unitEvent, function (_, unitData) _fctUnitChange(unitData, stringFormat('group%02d', idx) .. '.pet') end, "EnKai.Unit.unitChange." .. stringFormat('group%02d', idx) .. ".pet")
		end
	end

	--if nkDebug then  debugUI = _buildDebugUI() end
	
	_unitManager = true

end

--[[
   _subscribe
    Description:
        Subscribes to unit change events for a specific unit type.
        This allows addons to receive notifications when the specified unit changes.
    Parameters:
        sType (string): The unit type to subscribe to (e.g., "player.target")
    Returns:
        None
    Process:
        1. Adds the current addon to the subscriptions list for the unit type
        2. Immediately processes the current state of the unit
    Notes:
        - Use this to receive notifications when a specific unit changes
        - The addon will receive Change events for the specified unit type
]]
function EnKai.unit.subscribe(sType)

	if _subscriptions == nil then _subscriptions = {} end
	if _subscriptions[sType] == nil then _subscriptions[sType] = {} end

	_subscriptions[sType][InspectAddonCurrent()] = true
	
	if sType == 'player.target' then
		local targetID = InspectUnitLookup('player.target')
		if targetID ~= nil then _internalFunc.processUnitChange ('player.target', targetID) end
	elseif sType == 'focus' then
		local focusID = InspectUnitLookup('focus')
		if focusID ~= nil then _internalFunc.processUnitChange ('focus', focusID) end
	end

end

--[[
   _unsubscribe
    Description:
        Unsubscribes from unit change events for a specific unit type.
        Stops receiving notifications for the specified unit type.
    Parameters:
        sType (string): The unit type to unsubscribe from
    Returns:
        None
    Process:
        1. Removes the current addon from the subscriptions list for the unit type
    Notes:
        - Use this to stop receiving notifications for a specific unit type
]]

function EnKai.unit.unsubscribe(sType)

	if _subscriptions[sType] ~= nil then
		subscriptions[sType][InspectAddonCurrent()] = nil
	end

end


--[[
   _getGroupStatus
    Description:
        Returns the current group status.
        Indicates whether the player is in a group, raid, or acting alone.
    Parameters:
        None
    Returns:
        status (string): The current group status ("single", "group", or "raid")
        count (number): The number of group/raid members (nil for single)
    Notes:
        - Useful for determining the player's current group situation
        - The count parameter is nil when status is "single"
]]
function EnKai.unit.getGroupStatus ()

	if _isRaid == true then
		return 'raid', _raidMembers
	elseif _isGroup == true then
		return 'group', _groupMembers
	else
		return 'single', nil
	end

end

--[[
   _getUnitIDByType
    Description:
        Gets unit IDs by unit type.
        Returns all unit IDs that match the specified unit type.
    Parameters:
        unitType (string): The unit type to look up
    Returns:
        unitIDs (table): A table of unit IDs that match the unit type
    Notes:
        - Returns nil if no units match the specified type
        - The table may contain multiple unit IDs for the same type
]]
function EnKai.unit.getUnitIDByType (unitType) 

	if _idCache[unitType] == nil then
		local flag, details = pcall (InspectUnitDetail, unitType)
		if flag and details ~= nil then
			if details.type == unitType then 
				_fctSetIDCache(details.type, details.id, true, 'EnKai.unit.getUnitIDByType')
				_unitCache[details.id] = details
				_unitCache[details.id].lastUpdate = InspectTimeReal()
			end
		end
	end
	
	return _idCache[unitType] 
end

--[[
   _getUnitTypes
    Description:
        Gets all unit types for a specific unit ID.
        Returns all unit types that the specified unit ID belongs to.
    Parameters:
        unitID (string): The unit ID to look up
    Returns:
        unitTypes (table): A table of unit types that the unit ID belongs to
    Notes:
        - Returns an empty table if the unit ID is not found
        - A unit can belong to multiple types (e.g., "player" and "group01")
]]

function EnKai.unit.getUnitTypes (unitID) 

	local retValues = {}

	for unitType, list in pairs (_idCache) do
		if EnKai.tools.table.isMember(list, unitID) then
			table.insert(retValues, unitType) 
		end
	end
	
	return retValues

end

--[[
   _GetUnitDetail
    Description:
        Gets detailed information about a unit.
        Returns a table with detailed information about the specified unit.
    Parameters:
        unitID (string): The unit ID to get details for
    Returns:
        unitDetails (table): A table with detailed information about the unit
    Notes:
        - Returns nil if the unit ID is not found
        - The returned table contains various unit properties
        - Information is cached to minimize API calls
]]
function EnKai.unit.GetUnitDetail (unitID, force)

	if _idCache[unitID] ~= nil and #_idCache[unitID] > 0 then
		unitID = _idCache[unitID][1]
	end
	
	if force == true or _unitCache[unitID] == nil then
		local temp = InspectUnitDetail(unitID)
		if temp ~= nil then
			_unitCache[temp.id] = temp
			_unitCache[temp.id].lastUpdate = InspectTimeReal()
		end
	end
	
	return _unitCache[unitID]

end

function EnKai.unit.GetUnitByIdentifier (identifier)

	local units = InspectUnitList()
	for unitId, thisIdentifier in pairs(units) do
		if thisIdentifier == identifier then return unitId end
	end

	if identifier == "player.target" then -- if player targets himself this is needed
		local details = InspectUnitDetail("player.target")
		if details then return details.id end
	end

	return nil

end

function EnKai.unit.UpdateGroupUnit()

	local addon = InspectAddonCurrent()
	local unitInfo = {}
	local callEvent = false

	for unitType, value in pairs (_subscriptions) do
		if value[addon] == true then
			if stringFind(unitType, "group") then			
				local unitID = EnKai.unit.getUnitIDByType (unitType) 				
				if unitID then
					for key, thisUnit in pairs(unitID) do
						unitInfo[thisUnit] = unitType
						callEvent = true
					end
				end	
			end
		end
	end

	if callEvent then 
		if nkDebug then nkDebug.logEntry (addonInfo.identifier, "EnKai.unit.UpdateGroupUnit", "", unitInfo) end
		_fctUnitAvailableHandler (_, unitInfo)
	end

end

-------------------- STARTUP EVENTS --------------------
