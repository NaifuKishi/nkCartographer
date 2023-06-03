local addonInfo, privateVars = ...

---------- init namespace ---------

local data        = privateVars.data
local uiElements  = privateVars.uiElements
local _internal   = privateVars.internal
local _events     = privateVars.events

---------- init local variables ---------

local _units = {}
local _enemyUnits = {}
local _foreignUnits = {}
local _foreignUnitsFrom = {}
local _unitsMapping = {}

---------- make global functions local ---------

local _oInspectUnitDetail = Inspect.Unit.Detail
local _oInspectTimeReal = Inspect.Time.Real
local _oInspectUnitCastbar = Inspect.Unit.Castbar
local _oInspectAchievementDetail = Inspect.Achievement.Detail

---------- local function block ---------

local function _processPlayerTarget(unitID, unitDetails)

	local debugId
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_processPlayerTarget") end

	data.playerTargetUID = unitID  

	local rel = "FRIENDLY"

	if unitDetails.relation == "hostile" then
		rel = "HOSTILE"  
	elseif unitDetails.relation == "neutral" then
		rel = "NEUTRAL"
	end

	local thisData = {	["t" .. unitID] = {id = "t" .. unitID, type = "UNIT.TARGET." .. rel, coordX = unitDetails.coordX, coordY = unitDetails.coordY, coordZ = unitDetails.coordZ, title = unitDetails.name},
						["npc" .. unitID] = {id = "npc" .. unitID, type = "VARIA.NPC." .. rel, coordX = unitDetails.coordX, coordY = unitDetails.coordY, coordZ = unitDetails.coordZ, title = unitDetails.name}}

	_internal.UpdateMap (thisData, "add", "_processPlayerTarget")

	if rel == "HOSTILE" then
		local bData = {add = {["e" .. unitID] = {id = "e" .. unitID, type = "UNIT.ENEMY", coordX = unitDetails.coordX, coordY = unitDetails.coordY, coordZ = unitDetails.coordZ, title = unitDetails.name }}}
		_events.broadcastTarget(bData)
		data.playerHostileTargetUID = unitID
	else
		data.playerHostileTargetUID = nil
	end
	
	if nkDebug then nkDebug.traceEnd (addonInfo.identifier, "_processPlayerTarget", debugId) end

end

---------- addon internal function block ---------

function _events.SystemUpdate ()

	if data.forceUpdate ~= true then
		if data.lastUpdate == nil then
			data.lastUpdate = _oInspectTimeReal()
			privateVars.forceUpdate = true
		else
			local tmpTime = _oInspectTimeReal()
			if EnKai.tools.math.round((tmpTime - data.lastUpdate), 1) > .5 then data.forceUpdate = true end
		end
	end

	if data.forceUpdate == true then
		
		if data.postponedAdds ~= nil then
			if nkQuestBase.query.isInit() == true and nkQuestBase.query.isPackageLoaded('nt') == true and nkQuestBase.query.isPackageLoaded('classic') == true then
				local temp = EnKai.tools.table.copy(data.postponedAdds)
				data.postponedAdds = nil
				_internal.UpdateMap(temp, "add", "_events.SystemUpdate")
				data.lastUpdate = _oInspectTimeReal() -- diese Abfrage direkt nach data.forceUpdate platzieren wenn andere Funktionen aufgerufen werden
			end
		end
		
		--_processUnits()
	end

end

function _events.broadcastTarget (info)

  if nkCartSetup.syncTarget ~= true then return end

  local bType = "party"
  if EnKai.unit.getGroupStatus() == 'raid' then
    bType = "raid" 
  elseif EnKai.unit.getGroupStatus() ~= "group" then
    return
  end 
  
  local thisData = "info=" .. EnKai.tools.table.serialize (info)
  
  Command.Message.Broadcast(bType, nil, "nkCartographer.target", thisData)

end

function _events.messageReceive (_, from, type, channel, identifier, data)
  
  if nkCartSetup.syncTarget ~= true then return end
  if uiElements.mapUI == nil then return end

  local pDetails = EnKai.unit.getPlayerDetails()
  if pDetails == nil then return end  
  if pDetails.name == from then return end
  
  if string.find(identifier, "nkCartographer") == nil then return end
  
  local tempString = EnKai.strings.right (data, "info=")
  local dataFunc = loadstring("return {".. tempString .. "}")
  local thisData = dataFunc()

  local adds, removes, updates = {}, {}, {}
  local hasAdds, hasRemoves, hasUpdates = false, false, false

  if _foreignUnitsFrom[from] == nil then _foreignUnitsFrom[from] = {} end

  for action, v in pairs(thisData) do
    
    for id, details in pairs(v) do
      
      if action == "add" then 
        if _foreignUnits[id] == nil then
          _foreignUnits[id] = true
          adds [id] = details
          hasAdds = true
          _foreignUnitsFrom[from][id] = true
        end
      elseif action == "remove" then
        if _foreignUnits[id] then
          _foreignUnits[id] = nil
          removes[id] = true
          hasRemoves = true
          if _foreignUnitsFrom[from][id] then _foreignUnitsFrom[from][id] = nil end
        end
      else
        if _foreignUnits[id] then
          updates[id] = details
          hasUpdates = true
        else
          _foreignUnits[id] = true
          details.type = "UNIT.ENEMY"
          adds [id] = details
          hasAdds = true
          _foreignUnitsFrom[from][id] = true        
        end
      end
    end
    
  end
  
  if hasRemoves then _internal.UpdateMap (removes, "remove") end
  if hasAdds then _internal.UpdateMap (adds, "add", "_events.messageReceive") end
  if hasUpdates then 
	_internal.UpdateMap (updates, "change", '_events.messageReceive') 
	end

end

function _events.removeTargets ()

  for key, _ in pairs(_foreignUnits) do
    _internal.UpdateMap ({[key] = true}, "remove")
  end
  
  _foreignUnits = {}

end

function _events.ZoneChange (_, info) 

	for unit, zoneId in pairs (info) do
		if unit == data.playerUID then
			if uiElements.mapUI == nil then 
				_internal.initMap ()
			else
				_internal.SetZone (zoneId) 
			end

			return
		end
	end

end

function _events.ShardChange (_, info)

  if data.lastShard == nil then data.lastShard = info end

  if uiElements.mapUI == nil then return end
  if data.lastShard == info then return end
  
  data.lastShard = info

  local points, units = EnKai.map.getAll()
  _internal.UpdateMap(points, "remove")
  --_internal.UpdateUnit (units, "remove")
  
--  uiElements.mapUI:RemoveAllElements()
  
  _internal.SetZone (data.lastZone)  
  
  local details = _oInspectUnitDetail('player')

  _internal.UpdateUnit ({[details.id] = {id = details.id, type = "player", coordX = details.coordX, coordY = details.coordY, coordZ = details.coordZ}}, "add")
  
  local petDetails = _oInspectUnitDetail('player.pet')
  if petDetails ~= nil then
    _internal.UpdateUnit ({[petDetails.id] = {id = petDetails.id, type = "player.pet", coordX = petDetails.coordX, coordY = petDetails.coordY, coordZ = petDetails.coordZ}}, "add")
  end

  --EnKai.map.refresh()

end

function _events.playerAvailable (_, info) 

	local debugId
	--if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_events.playerAvailable") end

	data.playerUID = info.id
	_internal.initMap()
	local details = _oInspectUnitDetail('player.target')
    if details ~= nil then _processPlayerTarget(details.id, details) end    
	
	_internal.UpdateWaypointArrows()
	
	--if nkDebug then nkDebug.traceEnd (addonInfo.identifier, "_events.playerAvailable", debugId) end

end

function _events.UnitUnavailable (_, info)

  for unitId, _ in pairs (info) do _units[unitId] = nil end

end

function _events.UnitCoordChange (_, x, y, z)

	local debugId
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_events.UnitCoordChange") end

	local updates, adds = {}, {}
	local hasUpdates, hasAdds = false, false

	for unit, _ in pairs (x) do
		if unit == data.playerUID then
			updates[unit] = {id = unit, center = true, coordX = x[unit], coordY = y[unit], coordZ = z[unit]}
			hasUpdates = true
		elseif _units[unit] == nil then
			adds[unit] = {id = unit, type = "UNKNOWN", coordX = x[unit], coordY = y[unit], coordZ = z[unit]}
			_units[unit] = true
			hasAdds = true
		else    
			updates[unit] = {id = unit, coordX = x[unit], coordY = y[unit], coordZ = z[unit]}
			hasUpdates = true
		end
	end

	if hasUpdates == true then _internal.UpdateMap (updates, "coord", "_events.UnitCoordChange") end
	if hasAdds == true then _internal.UpdateMap (adds, "add") end

	if nkDebug then nkDebug.traceEnd (addonInfo.identifier, "_events.UnitCoordChange", debugId) end

end

function _events.UnitCastBar (_, info)
  
  if info[data.playerUID] then
    local details = _oInspectUnitCastbar(data.playerUID)
    if details and details.abilityNew == "A0000002B72E024A4" then
      data.collectStart = _oInspectTimeReal()
    end
  end

 end

function _events.UnitChange (_, unitID, unitType)

  local debugId
  if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_events.UnitChange") end

  -- check for player target change and check if group status changes and process their targets
  
  if unitType == "player.target" then
  
    if data.playerTargetUID ~= nil then _internal.UpdateMap ({["t" .. data.playerTargetUID] = false, ["npc" .. data.playerTargetUID] = false}, "remove") end
      
    if data.playerHostileTargetUID ~= nil then
      local bData = {remove = {["e" .. data.playerHostileTargetUID] = false }}
      _events.broadcastTarget(bData)
    end
  
    if unitID == false then
      data.playerHostileTargetUID = nil
      data.playerTargetUID = nil
    else
      local unitDetails = _oInspectUnitDetail(unitID)
      _processPlayerTarget(unitID, unitDetails)
    end
  elseif string.find(unitType, "player.target") == nil and string.find(unitType, "group") == 1 and string.find(unitType, "group..%.target") == nil then
  
    if unitID == false then
      local removes, hasRemoves = {}, false
    
      if _foreignUnitsFrom[_unitsMapping[unitType]] ~= nil then
        for id, _ in pairs(_foreignUnitsFrom[_unitsMapping[unitType]]) do
          removes[id] = true
          hasRemoves = true
        end
        
        _foreignUnitsFrom[_unitsMapping[unitType]] = {}
        
      end

      _unitsMapping[unitType] = nil      
      
      if hasRemoves then _internal.UpdateMap (removes, "remove") end
    else
      local details = _oInspectUnitDetail(unitID)
      if details ~= nil then _unitsMapping[unitType] = details.name end
    end
  end
  
  if nkDebug then nkDebug.traceEnd (addonInfo.identifier, "_events.UnitChange", debugId) end

end

function _events.GroupStatus (_, status)
	
	local debugId
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_events.GroupStatus") end

	if data.lastGroupStatus ~= status then

		local removes = {}
		local hasRemoves = false

		if status ~= "group" and status ~= "raid" then
			for k, v in pairs(data.waypoints) do
				if v.player ~= true then
					removes[k] = v
					hasRemoves = true
				end
			end
		end

		if hasRemoves then _internal.UpdateMap(removes, "waypoint-remove") end
		data.lastGroupStatus = status
	end

	if nkCartSetup.syncTarget ~= true then 
		if nkDebug then nkDebug.traceEnd (addonInfo.identifier, "_events.GroupStatus", debugId) end
		return 
	end
	
	if data.playerHostileTargetUID == nil then
		if nkDebug then nkDebug.traceEnd (addonInfo.identifier, "_events.GroupStatus", debugId) end
		return
	end
	
	if status ~= "group" and status ~= "raid" then
		if nkDebug then nkDebug.traceEnd (addonInfo.identifier, "_events.GroupStatus", debugId) end
		return
	end

	local details = _oInspectUnitDetail(data.playerHostileTargetUID)
	if details == nil then 
		if nkDebug then nkDebug.traceEnd (addonInfo.identifier, "_events.GroupStatus", debugId) end
		return 
	end

	local bData = {add = {["e" .. details.id] = {id = "e" .. details.id, type = "UNIT.ENEMY", coordX = details.coordX, coordY = details.coordY, coordZ = details.coordZ, title = details.name }}}
	_events.broadcastTarget(bData)
	
	if nkDebug then nkDebug.traceEnd (addonInfo.identifier, "_events.GroupStatus", debugId) end

end

function _events.achievementUpdate (_, info)

  local achievement = nil
  local refreshNeeded = false
  
  for id, _ in pairs(info) do
    if EnKai.tools.table.isMember(data.rareMobAchievements, id) == true then
      
      for idx = 1, #data.rareMobAchievements, 1 do
        achievement = _oInspectAchievementDetail(data.rareMobAchievements[idx])
        
        if achievement ~= nil then
        
          for requirement, details in pairs(achievement.requirement) do
            if details.complete == true then
              if data.rareMobKilled[details.name] == false then
                data.rareMobKilled[details.name] = true
                refreshNeeded = true
              else
                data.rareMobKilled[details.name] = true
              end
            else
              data.rareMobKilled[details.name] = false
            end
          end
        end
        
      end
  
    end
  end
  
  if nkCartSetup.rareMobs == true and refreshNeeded == true then
    _internal.ShowRareMobs(false)
    _internal.ShowRareMobs(true)
  end
  
end

function _events.UpdateLocation (_, info)

  if data.playerUID == nil then return end
    
  if info[data.playerUID] == nil or info[data.playerUID] == false then return end   
    
  data.locationName = info[data.playerUID]
  uiElements.mapUI:SetZoneTitle(nkCartSetup.showZoneTitle)
    
end