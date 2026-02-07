local addonInfo, privateVars = ...

---------- init namespace ---------

local data                  = privateVars.data
local uiElements            = privateVars.uiElements
local internalFunc          = privateVars.internalFunc
local events               = privateVars.events
local lang        			= privateVars.langTexts

---------- init local variables ---------

local _zoneDetails          = nil
local _rareData             = {}
local mapInit				= false

---------- make global functions local ---------

local InspectUnitDetail 	= Inspect.Unit.Detail
local InspectZoneDetail 	= Inspect.Zone.Detail
local InspectSystemSecure 	= Inspect.System.Secure
local InspectSystemWatchdog = Inspect.System.Watchdog
local InspectItemDetail 	= Inspect.Item.Detail
local InspectMouse 			= Inspect.Mouse
local InspectTimeReal 		= Inspect.Time.Real

local LibEKLGetLanguage			= LibEKL.Tools.Lang.GetLanguage
local LibEKLGetLanguageShort	= LibEKL.Tools.Lang.GetLanguageShort
local LibEKLTableCopy			= LibEKL.Tools.Table.Copy
local LibEKLUUID				= LibEKL.Tools.UUID

local stringFind			= string.find
local stringMatch			= string.match
local stringFormat			= string.format
local stringUpper			= string.upper

local mathDeg				= math.deg
local mathAtan2				= math.atan2

---------- addon internal function block ---------

function internalFunc.initMap ()

	if mapInit then return end

	local debugId 
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "internalFunc.initMap") end

	if uiElements.mapUI == nil then uiElements.mapUI = internalFunc.createMapUI() end

	uiElements.mapUI:SetAnimated(nkCartSetup.animations, nkCartSetup.animationSpeed)
	uiElements.mapUI:SetSmoothScroll(nkCartSetup.smoothScroll)

	uiElements.mapUI:SetWidth(nkCartSetup.width)
	uiElements.mapUI:SetHeight(nkCartSetup.height)

	local details = LibEKL.Unit.GetPlayerDetails()		
	internalFunc.SetZone (details.zone)

	uiElements.mapUI:SetPointMaximized(nkCartSetup.maximizedX, nkCartSetup.maximizedY)  
	uiElements.mapUI:SetWidthMaximized(nkCartSetup.maximizedWidth)
	uiElements.mapUI:SetHeightMaximized(nkCartSetup.maximizedHeight)

	uiElements.mapUI:SetPoint("TOPLEFT", UIParent, "TOPLEFT", nkCartSetup.x, nkCartSetup.y)
	uiElements.mapUI:SetZoom(nkCartSetup.scale, false)
	uiElements.mapUI:SetZoom(nkCartSetup.maximizedScale, true)

	local points, units = LibMap.map.getAll()
	internalFunc.UpdateMap(points, "add", "internalFunc.initMap")
	internalFunc.UpdateUnit (units, "add")

	if nkDebug and uiElements.debugPanel then
		local mapInfo = uiElements.mapUI:GetMapInfo()
		uiElements.debugPanel:SetCoord(mapInfo.x1, mapInfo.x2, mapInfo.y1, mapInfo.y2)
	end

	Command.Event.Attach(Event.System.Update.Begin, function ()
      
      if data.delayStart ~= nil then
          local tmpTime = InspectTimeReal()
          if LibEKL.Tools.Math.Round((tmpTime - data.delayStart), 1) > 1 then 
            uiElements.mapUI:SetPoint("TOPLEFT", UIParent, "TOPLEFT", nkCartSetup.x, nkCartSetup.y)
            Command.Event.Detach(Event.System.Update.Begin, nil, "nkCartographer.resetPosition")	
          end
      else
        data.delayStart = InspectTimeReal()
      end
      
    end, "nkCartographer.resetPosition")		

	local function _toggleMinMax()
		uiElements.mapUI:ToggleMinMax()
	end

    LibEKL.manager.RegisterButton('nkCartographer.config', addonInfo.id, "gfx/minimapIcon.png", internalFunc.ShowConfig)
	LibEKL.manager.RegisterButton('nkCartographer.toggle', addonInfo.id, "gfx/minimapIconCloseMap.png", internalFunc.showHide)
	LibEKL.manager.RegisterButton('nkCartographer.minmax', addonInfo.id, "gfx/minimapIconResize.png", _toggleMinMax)
    
    local minimapFrame = LibEKL.manager.GetFrame()
    if minimapFrame then
		minimapFrame:ClearPoint("BOTTOMLEFT")
      	minimapFrame:SetPoint("TOPLEFT", uiElements.mapUI, "BOTTOMLEFT")
		minimapFrame:SetWidth(uiElements.mapUI:GetWidth())
		LibEKL.manager.UpdateFrame(uiElements.mapUI)
    end

	mapInit = true

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "internalFunc.initMap", debugId) end
  
end

function internalFunc.SetZone (newZoneID)

	local debugId
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "internalFunc.SetZone") end

	local newWorld = LibMap.map.getZoneWorld(newZoneID)
	local isNewWorld = false

	if newWorld ~= data.currentWorld then isNewWorld = true end

	if data.lastZone ~= nil then 
		internalFunc.ShowPOI(false)
		internalFunc.ShowRareMobs(false)
		if isNewWorld then internalFunc.ShowQuest(false) end
		if nkCartSetup.trackGathering == true then internalFunc.ShowGathering(false) end
		if nkCartSetup.trackArtifacts == true then internalFunc.ShowArtifacts(false) end
	end

	data.currentWorld = newWorld

	if data.currentWorld == nil then
		LibEKL.Tools.Error.Display ("nkCartographer", "zone " .. newZoneID .. " not found", 2)
		data.currentWorld = "unknown"
		--return
	end

	uiElements.mapUI:SetMap("world", data.currentWorld)

	local details = LibEKL.Unit.GetPlayerDetails()
	data.locationName = details.locationName
	uiElements.mapUI:SetCoord(details.coordX, details.coordZ)	
	uiElements.mapUI:SetCoordsLabel(details.coordX, details.coordZ)	

	_zoneDetails = InspectZoneDetail(newZoneID)
	uiElements.mapUI:SetZoneTitle(nkCartSetup.showZoneTitle)

	if InspectSystemSecure() == false then Command.System.Watchdog.Quiet() end

	data.lastZone = newZoneID
	internalFunc.ShowPOI(true)  
	internalFunc.ShowCustomPoints()
	internalFunc.ShowRareMobs(true)
	internalFunc.FindMissing()

	if isNewWorld then internalFunc.ShowQuest(true) end

	if nkCartSetup.trackGathering == true then internalFunc.ShowGathering(true) end
	if nkCartSetup.trackArtifacts == true then internalFunc.ShowArtifacts(true) end

	if nkDebug and uiElements.debugPane then
		local mapInfo = uiElements.mapUI:GetMapInfo()
		uiElements.debugPanel:SetCoord(mapInfo.x1, mapInfo.x2, mapInfo.y1, mapInfo.y2)
	end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "internalFunc.SetZone", debugId) end

end

local function mapRemove (key, checkForMinimapQuest)

	if checkForMinimapQuest == true or checkForMinimapQuest == nil then
		if internalFunc.IsKnownMinimapQuest (key) == false then uiElements.mapUI:RemoveElement(key) end
	else
		uiElements.mapUI:RemoveElement(key)
	end

end

local function _trackGathering(details)

    if nkCartGathering.gatheringData[data.lastZone] == nil then nkCartGathering.gatheringData[data.lastZone] = {} end
    if nkCartGathering.artifactsData[data.lastZone] == nil then nkCartGathering.artifactsData[data.lastZone] = {} end
    
    for key, data in pairs(nkCartGathering.gatheringData[data.lastZone]) do
        if data.coordX == details.coordX and data.coordZ == details.coordZ then return end
    end

    local thisData = LibEKLTableCopy(details)
    thisData.type = "TRACK" .. string.match(thisData.type, "RESOURCE(.+)")
    local thisType = string.match(details.type, "RESOURCE%.(.+)") or string.match(details.type, "RESOURCE%.(.+)%.")
    thisData.id = thisType .. "-" .. LibEKLUUID()

    if thisType == "ARTIFACT" then
        nkCartGathering.artifactsData[data.lastZone][thisData.id] = thisData
    else
        nkCartGathering.gatheringData[data.lastZone][thisData.id] = thisData
    end
end

local function mapAdd (key, details)

	local RESOURCE_TYPE_MAP = {
        ["RESOURCE.MINE"] = "MINE",
        ["RESOURCE.HERB"] = "HERB",
        ["RESOURCE.WOOD"] = "WOOD",
        ["RESOURCE.FISH"] = "FISH",
        ["RESOURCE.ARTIFACT"] = "ARTIFACT",
        ["RESOURCE.ARTIFACT.FAEYULE"] = "FAEYULE",
    }

	if details["type"] == nil then
		if nkDebug then
			nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap add", "details.type == nil", details)
		end
	elseif details.type ~= "UNKNOWN" and details.type ~= "PORTAL" then		
		uiElements.mapUI:AddElement(details)
		local thisType = RESOURCE_TYPE_MAP[details.type] or stringMatch(details.type, "RESOURCE%.(.+)")
		if thisType and nkCartSetup.trackGathering == true then _trackGathering(details, thisType) end
	elseif details.type == "UNKNOWN" then
		if data.postponedAdds == nil then data.postponedAdds = {} end
		if LibQB.query.isInit() == false or LibQB.query.isPackageLoaded('poa') == false or LibQB.query.isPackageLoaded('nt') == false or LibQB.query.isPackageLoaded('classic') == false then
			data.postponedAdds[key] = details
		else
			if InspectSystemWatchdog() < 0.1 then
				data.postponedAdds[key] = details
			else
				if internalFunc.IsKnownMinimapQuest (details.id) == false then
					if nkCartSetup.showUnknown == true then
						local retValue = internalFunc.CheckUnknownForQuest(details)
						if not retValue then uiElements.mapUI:AddElement(details) end
					end
				else
					uiElements.mapUI:AddElement(data.minimapIdToQuest[details.id])
				end
			end
		end
	end

end

local function mapChange (key, details, debugSource)

	if uiElements.mapUI:ChangeElement(details) == false then
		if nkDebug then
			nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap change", "failed " .. debugSource, details)
			internalFunc.UpdateMap ({[key] = details}, "add", debugSource)
		end
	end

end

local function mapCoord (key, details, debugSource)

	if uiElements.mapUI:ChangeElement(details) == false then
		internalFunc.UpdateMap ({[key] = details}, "add", debugSource)
		if nkDebug then 
			nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap coord", "failed " .. debugSource, details)
		end
	end

end

local function mapWaypointAdd (key, details)

	local unitDetails = InspectUnitDetail(key)
	uiElements.mapUI:AddElement({ id = "wp-" .. key, type = "WAYPOINT", descList = { unitDetails.name }, coordX = details.coordX, coordZ = details.coordZ })
	data.waypoints[key] = { coordX = details.coordX, coordZ = details.coordZ }
	if key == LibEKL.Unit.GetPlayerID() then data.waypoints[key].player = true end
	internalFunc.UpdateWaypointArrows ()  

end

local function mapWaypointRemove (key)

	uiElements.mapUI:RemoveElement( "wp-" .. key)
	if data.waypoints[key] ~= nil and data.waypoints[key].gfx ~= nil then 
		data.waypoints[key].gfx:destroy()
	end
	data.waypoints[key] = nil
	internalFunc.UpdateWaypointArrows ()

end

local function mapWaypointChange(key, details, debugSource)

	if uiElements.mapUI:ChangeElement({ id =  "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ }) == false then
		if nkDebug then
			nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap waypoint-change", "failed " .. debugSource, { id =  "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ })
		end
	end
	data.waypoints[key].coordX = details.coordX
	data.waypoints[key].coordZ = details.coordZ
	internalFunc.UpdateWaypointArrows ()

end

function internalFunc.UpdateMap (mapInfo, action, debugSource, checkForMinimapQuest)

	if uiElements.mapUI == nil then 
		if nkDebug then nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap", "No mapUI", mapInfo) end
		return 
	end

	local debugId
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "internalFunc.UpdateMap") end
	
	if nkDebug then nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap", stringFormat("%s - %s", action, debugSource), mapInfo) end	

	for key, details in pairs (mapInfo) do
		if action == "remove" then
			mapRemove (key, checkForMinimapQuest)
		elseif action == "add" then
			mapAdd (key, details)
		elseif action == "change" then
			mapChange (key, details, debugSource)
		elseif action == "coord" then
			mapCoord (key, details, debugSource)
		elseif action == "waypoint-add" then
			mapWaypointAdd (key, details)
		elseif action == "waypoint-remove" then
			mapWaypointRemove (key)
		elseif action == "waypoint-change" then
			mapWaypointChange(key, details, debugSource)
		end
	end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "internalFunc.UpdateMap", debugId) end

end

local function unitAdd (key, details)

	if details.type == "player" then
		local unitDetails = InspectUnitDetail("player")
		details.type = "UNIT.PLAYER"
		details.title = unitDetails.name
		details.angle = 0         
		data.centerElement = key
		uiElements.mapUI:AddElement(details)

	elseif details.type == "player.pet" then
		local unitDetails = InspectUnitDetail("player.pet")
		details.type = "UNIT.PLAYERPET"
		details.title = unitDetails.name         
		uiElements.mapUI:AddElement(details)

	elseif stringFind(details.type, "group") ~= nil and stringFind(details.type, "group..%.") == nil then					
		local unitDetails = InspectUnitDetail(details.type)
		details.type = "UNIT.GROUPMEMBER"        
		details.title = unitDetails.name
		details.smoothCoords = true
		uiElements.mapUI:AddElement(details)
		
		if nkDebug and details.type == "UNIT.GROUPMEMBER" then 
			nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateUnit", action .. ": " .. (details.type or '?'), details)
		end
	end

end

local function unitChange(key, details)

	if key == LibEKL.Unit.GetPlayerID() then			
		local coordX, coordZ = uiElements.mapUI:GetCoords()         
		local deltaZ = details.coordZ - coordZ
		local deltaX = details.coordX - coordX

		local angle = mathDeg(mathAtan2(deltaZ, deltaX))								
		details.angle = -angle
	end

	if key == data.playerTargetUID then
		details.id = "npc" .. key
		if uiElements.mapUI:ChangeElement(details) == false then
			if nkDebug then
				nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateUnit", "could not change element", details)
			end
		end

		details.id = "t" .. key
		if uiElements.mapUI:ChangeElement(details) == false then
			if nkDebug then
				nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateUnit", "could not change element", details)
			end
		end

	elseif stringFind(details.type, "mouseover") == nil and stringFind(details.type, ".pet") == nil and stringFind(details.type, "player.target.target.target") == nil then
		
		if uiElements.mapUI:ChangeElement(details) == false then
			if details.type == 'player.target' then
				internalFunc.UpdateUnit ({[key] = details}, "add")
			else
				if nkDebug then
					nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateUnit", "could not change element", details)
				end
			end
		end
	end

	if key == LibEKL.Unit.GetPlayerID() then
		uiElements.mapUI:SetCoord(details.coordX, details.coordZ)
		uiElements.mapUI:SetCoordsLabel(details.coordX, details.coordZ)	
		internalFunc.UpdateWaypointArrows ()
	end

	if key == data.playerHostileTargetUID then
		details.id = "e" .. key
		local bData = {change = {["e" .. key] = details}}
		events.broadcastTarget(bData)
	end

end

local function unitRemove (key)

	uiElements.mapUI:RemoveElement(key)
	if key == data.centerElement then data.centerElement = nil end

end

function internalFunc.UpdateUnit (mapInfo, action)

	if uiElements.mapUI == nil then return end

	local debugId 
	if nkDebug then 
		debugId = nkDebug.traceStart (addonInfo.identifier, "internalFunc.UpdateUnit") 
	end

	for key, details in pairs (mapInfo) do
	
		if action == "add" then
			unitAdd (key, details)			
		elseif action == "change" then
			unitChange(key, details)			
		elseif action == "remove" then
			unitRemove (key)
		end
	end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "internalFunc.UpdateUnit", debugId) end

end