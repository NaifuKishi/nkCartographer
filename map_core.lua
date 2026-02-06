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

---------- local function block ---------

local function _fctMapUI ()

	local mapUI = LibMap.uiCreateFrame("nkMap", "nkCartographer.map", uiElements.context)

	local locked
	if nkCartSetup.locked == true then locked = false else locked = true end
	
	mapUI:SetResizable(locked)
	mapUI:SetDragable(locked)
	mapUI:SetLayer(2)

	mapUI:ShowHeader(false)
	mapUI:ShowCoords(false)	

	local texture = LibEKL.UICreateFrame("nkTexture", "nkCartographer.map.texture", uiElements.context)
	texture:SetLayer(1)

	function mapUI:SetBackground(newBG)
		if nkCartSetup.background == nil then return end

		if data.borderDesigns[nkCartSetup.background].addon == nil then
			texture:SetVisible(false)
		else
			texture:SetVisible(true)    
			texture:SetPoint("TOPLEFT", mapUI, "TOPLEFT", -data.borderDesigns[nkCartSetup.background].offset, -data.borderDesigns[nkCartSetup.background].offset)
			texture:SetPoint("BOTTOMRIGHT", mapUI, "BOTTOMRIGHT", data.borderDesigns[nkCartSetup.background].offset, data.borderDesigns[nkCartSetup.background].offset)
			texture:SetTextureAsync(data.borderDesigns[nkCartSetup.background].addon, data.borderDesigns[nkCartSetup.background].path)
		end
	end

	local oSetVisible = mapUI.SetVisible

	function mapUI:SetVisible(flag)
		oSetVisible(self, flag)
		texture:SetVisible(flag)
	end

	mapUI:SetBackground(nkCartSetup.background)

	local zoneTitle = LibEKL.UICreateFrame("nkText", "nkCartographer.map.zoneTitle", mapUI:GetMask())
	zoneTitle:SetPoint("CENTERTOP", mapUI:GetContent(), "CENTERTOP")
	zoneTitle:SetLayer(9999)
	
	LibEKL.UI.SetFont (zoneTitle, addonInfo.id, "MontserratSemiBold")

	zoneTitle:SetEffectGlow({ colorB = 0, colorA = 1, colorG = 0, colorR = 0, strength = 3, blurX = 3, blurY = 3 })

	local coords = LibEKL.UICreateFrame("nkText", "nkCartographer.map.coords", mapUI)
	coords:SetPoint("CENTERBOTTOM", mapUI:GetContent(), "CENTERBOTTOM", 0, 15)
	coords:SetLayer(9999)
	coords:SetFontSize(20)
	coords:SetEffectGlow({ strength = 3})
	
	LibEKL.UI.SetFont (coords, addonInfo.id, "MontserratBold")

	local mouseCoords = LibEKL.UICreateFrame("nkText", "nkCartographer.map.mouseCoords", mapUI)
	mouseCoords:SetPoint("CENTERBOTTOM", coords, "CENTERTOP", 0, 5)
	mouseCoords:SetLayer(9999)
	mouseCoords:SetFontSize(18)
	mouseCoords:SetFontColor(1, 0.8, 0, 1)
	mouseCoords:SetEffectGlow({ strength = 3})
	
	LibEKL.UI.SetFont (mouseCoords, addonInfo.id, "MontserratBold")

	function mapUI:SetCoordsLabel(x, y)
		coords:SetText(stringFormat("%d / %d", x, y))
	end

	function mapUI:SetZoneTitle(flag)

		if flag == false then
			zoneTitle:SetVisible(false)
		else
			zoneTitle:SetVisible(true)
			local scale = 1 / 300 * mapUI:GetWidth()
			local fontsize = 20 * scale
			if fontsize > 30 then fontsize = 30 end
			zoneTitle:SetFontSize(fontsize)
			zoneTitle:SetText(data.locationName)
		end
	end

	Command.Event.Attach(LibMap.events["nkCartographer.map"].MouseMoved, function (_, text)
		mouseCoords:SetText(text)
	end, "nkCartographer.map.MouseMoved")  

	Command.Event.Attach(LibMap.events["nkCartographer.map"].Moved, function (_, x, y, maximized)

		if maximized == true then
			nkCartSetup.maximizedX, nkCartSetup.maximizedY = x, y 
		else
			nkCartSetup.x, nkCartSetup.y = x, y
		end

	end, "nkCartographer.map.Moved")    

	Command.Event.Attach(LibMap.events["nkCartographer.map"].Resized, function (_, newWidth, newHeight, maximized)

		if maximized == true then
			nkCartSetup.maximizedWidth, nkCartSetup.maximizedHeight = newWidth, newHeight 
		else
			nkCartSetup.width, nkCartSetup.height = newWidth, newHeight
		end

	end, "nkCartographer.map.Moved")

	Command.Event.Attach(LibMap.events["nkCartographer.map"].Zoomed, function (_, newScale, maximized)
		if maximized == true then
			nkCartSetup.maximizedScale = newScale
		else
			nkCartSetup.scale = newScale
		end

	internalFunc.UpdateWaypointArrows ()

	end, "nkCartographer.map.Zoomed")

	Command.Event.Attach(LibMap.events["nkCartographer.map"].Toggled, function (_, newScale, maximized)
		internalFunc.UpdateWaypointArrows ()
		mapUI:SetZoneTitle(nkCartSetup.showZoneTitle)
	end, "nkCartographer.map.Toggled")

	return mapUI
	
end

---------- addon internal function block ---------

function internalFunc.initMap ()

	local debugId 
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "internalFunc.initMap") end

	if uiElements.mapUI == nil then uiElements.mapUI = _fctMapUI() end

	uiElements.mapUI:SetAnimated(nkCartSetup.animations, nkCartSetup.animationSpeed)
	uiElements.mapUI:SetSmoothScroll(nkCartSetup.smoothScroll)

	uiElements.mapUI:SetWidth(nkCartSetup.width)
	uiElements.mapUI:SetHeight(nkCartSetup.height)

	local details = InspectUnitDetail(data.playerUID)
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
    end

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

	local details = InspectUnitDetail(data.playerUID)
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

function internalFunc.UpdateMap (mapInfo, action, debugSource, checkForMinimapQuest)

	if uiElements.mapUI == nil then 
		if nkDebug then nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap", "No mapUI", mapInfo) end
		return 
	end

	local debugId
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "internalFunc.UpdateMap") end
	
	if nkDebug then nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap", stringFormat("%s - %s", action, debugSource), mapInfo) end
	
	local RESOURCE_TYPE_MAP = {
        ["RESOURCE.MINE"] = "MINE",
        ["RESOURCE.HERB"] = "HERB",
        ["RESOURCE.WOOD"] = "WOOD",
        ["RESOURCE.FISH"] = "FISH",
        ["RESOURCE.ARTIFACT"] = "ARTIFACT",
        ["RESOURCE.ARTIFACT.FAEYULE"] = "FAEYULE",
    }

	for key, details in pairs (mapInfo) do
		if action == "remove" then
			if checkForMinimapQuest == true or checkForMinimapQuest == nil then
				if internalFunc.IsKnownMinimapQuest (key) == false then uiElements.mapUI:RemoveElement(key) end
			else
				uiElements.mapUI:RemoveElement(key)
			end
		elseif action == "add" then
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
		elseif action == "change" then
			if uiElements.mapUI:ChangeElement(details) == false then
				if nkDebug then
					nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap change", "failed " .. debugSource, details)
					internalFunc.UpdateMap ({[key] = mapInfo}, "add", debugSource)
				end
			end
		elseif action == "coord" then
			if uiElements.mapUI:ChangeElement(details) == false then
				internalFunc.UpdateMap ({[key] = mapInfo}, "add", debugSource)
				if nkDebug then 
					nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap coord", "failed " .. debugSource, details)
				end
			end
		elseif action == "waypoint-add" then
			local unitDetails = InspectUnitDetail(key)
			uiElements.mapUI:AddElement({ id = "wp-" .. key, type = "WAYPOINT", descList = { unitDetails.name }, coordX = details.coordX, coordZ = details.coordZ })
			data.waypoints[key] = { coordX = details.coordX, coordZ = details.coordZ }
			if key == data.playerUID then data.waypoints[key].player = true end      
			internalFunc.UpdateWaypointArrows ()      
		elseif action == "waypoint-remove" then
			uiElements.mapUI:RemoveElement( "wp-" .. key)
			if data.waypoints[key] ~= nil and data.waypoints[key].gfx ~= nil then 
				data.waypoints[key].gfx:destroy()
			end
			data.waypoints[key] = nil
			internalFunc.UpdateWaypointArrows ()
		elseif action == "waypoint-change" then
			if uiElements.mapUI:ChangeElement({ id =  "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ }) == false then
				if nkDebug then
					nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap waypoint-change", "failed " .. debugSource, { id =  "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ })
				end
			end
			data.waypoints[key].coordX = details.coordX
			data.waypoints[key].coordZ = details.coordZ
			internalFunc.UpdateWaypointArrows ()
		end
	end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "internalFunc.UpdateMap", debugId) end

end

function internalFunc.UpdateUnit (mapInfo, action)

	if uiElements.mapUI == nil then return end

	local debugId 
	if nkDebug then 
		debugId = nkDebug.traceStart (addonInfo.identifier, "internalFunc.UpdateUnit") 
	end

	for key, details in pairs (mapInfo) do
	
		if action == "add" then

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

		elseif action == "change" then

			if key == data.playerUID then
			
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

			if key == data.playerUID then
				uiElements.mapUI:SetCoord(details.coordX, details.coordZ)
				uiElements.mapUI:SetCoordsLabel(details.coordX, details.coordZ)	
				internalFunc.UpdateWaypointArrows ()
			end

			if key == data.playerHostileTargetUID then
				details.id = "e" .. key
				local bData = {change = {["e" .. key] = details}}
				events.broadcastTarget(bData)
			end

		elseif action == "remove" then
			uiElements.mapUI:RemoveElement(key)
			if key == data.centerElement then data.centerElement = nil end
		end
	end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "internalFunc.UpdateUnit", debugId) end

end