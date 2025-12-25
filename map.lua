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

local inspectUnitDetail 	= Inspect.Unit.Detail
local inspectZoneDetail 	= Inspect.Zone.Detail
local inspectSystemSecure 	= Inspect.System.Secure
local inspectSystemWatchdog = Inspect.System.Watchdog
local inspectItemDetail 	= Inspect.Item.Detail
local inspectMouse 			= Inspect.Mouse
local inspectTimeReal 		= Inspect.Time.Real

local EnKaiGetLanguage		= EnKai.tools.lang.getLanguage
local EnKaiGetLanguageShort = EnKai.tools.lang.getLanguageShort
local EnKaiTableCopy		= EnKai.tools.table.copy
local EnKaiUUID				= EnKai.tools.uuid

local stringFind			= string.find
local stringMatch			= string.match
local stringFormat			= string.format

local mathDeg				= math.deg
local mathAtan2				= math.atan2

---------- local function block ---------

local function _processRareData(id, counter, name, x, z, comment)
  
  local thisId = "rare-" .. id .. "-" .. counter
          
  local thisData = { id = thisId, type = "UNIT.RARE", descList = {name }, coordX = x, coordZ = z }
  table.insert(thisData.descList, "Rare Mob")
  
  if comment ~= "" then table.insert(thisData.descList, comment) end      
  
  uiElements.mapUI:AddElement(thisData)
  _rareData[thisId] = thisData
end

local function _getRareDarData ()
  
  if _zoneDetails == nil then return end
  
  _rareData = {}
  
  for idx = 1, #RareDar.data, 1 do
    if RareDar.data[idx].zone[EnKaiGetLanguage()] == _zoneDetails.name then
      local mobs = RareDar.data[idx].mobs
      
      for idx2 = 1, #mobs, 1 do
        if data.rareMobKilled[mobs[idx2].achv[EnKaiGetLanguage()]] ~= true then      
          local posList = mobs[idx2].pos
          
          for idx3 = 1, #posList, 1 do
            _processRareData(mobs[idx2].id, idx3, mobs[idx2].targ[EnKaiGetLanguage()], posList[idx3][1], posList[idx3][2], mobs[idx2].comment[EnKaiGetLanguage()])
          end
        end
      end
      
    end 
  end

end

local function _getRareTrackerData ()

  local zoneData = Inspect.Addon.Detail('RareTracker').data.moblocs[data.lastZone]
  
  if zoneData == nil then return end

  local mobs = zoneData.mobs
  
  _rareData = {}
  
  for idx = 1, #mobs, 1 do
    
    if data.rareMobKilled[mobs[idx].n[EnKaiGetLanguageShort()]] ~= true then      
  
      local posList = mobs[idx].loc
      
      for idx2 = 1, #posList, 1 do
        _processRareData(mobs[idx].n[EnKaiGetLanguageShort()], idx2, mobs[idx].n[EnKaiGetLanguageShort()], posList[idx2].x, posList[idx2].z, "")
      end
    end
  end
  
end

local function _trackGathering (details)

	if nkCartGathering.gatheringData[data.lastZone] == nil then nkCartGathering.gatheringData[data.lastZone] = {} end
	if nkCartGathering.artifactsData[data.lastZone] == nil then nkCartGathering.artifactsData[data.lastZone] = {} end

	for key, data in pairs (nkCartGathering.gatheringData[data.lastZone]) do
		if data.coordX == details.coordX and data.coordZ == details.coordZ then return end
	end

	local thisData = EnKaiTableCopy(details)
	thisData.type = "TRACK" .. stringMatch (thisData.type, "RESOURCE(.+)")

	local thisType = stringMatch(details.type, "RESOURCE%.(.+)") or stringMatch(details.type, "RESOURCE%.(.+)%.")
	thisData.id = thisType .. "-" .. EnKaiUUID()

	if thisType == "ARTIFACT" then
		nkCartGathering.artifactsData[data.lastZone][thisData.id] = thisData
	else  
		nkCartGathering.gatheringData[data.lastZone][thisData.id] = thisData
	end

end

local function _fctMapUI ()

	local mapUI = EnKai.uiCreateFrame("nkMap", "nkCartographer.map", uiElements.context)

	local locked
	if nkCartSetup.locked == true then locked = false else locked = true end

	mapUI:SetResizable(locked)
	mapUI:SetDragable(locked)
	mapUI:SetLayer(2)

	mapUI:ShowHeader(false)
	mapUI:ShowCoords(false)	

	local texture = EnKai.uiCreateFrame("nkTexture", "nkCartographer.map.texture", uiElements.context)
	texture:SetLayer(1)

	function mapUI:SetBackground(newBG)
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

	local zoneTitle = EnKai.uiCreateFrame("nkText", "nkCartographer.map.zoneTitle", mapUI:GetMask())
	zoneTitle:SetPoint("CENTERTOP", mapUI:GetContent(), "CENTERTOP")
	zoneTitle:SetLayer(9999)
	
	EnKai.ui.setFont (zoneTitle, addonInfo.id, "MontserratSemiBold")

	zoneTitle:SetEffectGlow({ colorB = 0, colorA = 1, colorG = 0, colorR = 0, strength = 3, blurX = 3, blurY = 3 })

	local coords = EnKai.uiCreateFrame("nkText", "nkCartographer.map.coords", mapUI)
	coords:SetPoint("CENTERBOTTOM", mapUI:GetContent(), "CENTERBOTTOM", 0, 15)
	coords:SetLayer(9999)
	coords:SetFontSize(20)
	coords:SetEffectGlow({ colorB = 0, colorA = 1, colorG = 0, colorR = 0, strength = 3, blurX = 3, blurY = 3 })
	
	EnKai.ui.setFont (coords, addonInfo.id, "MontserratBold")

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

	--[[local setupIcon = EnKai.uiCreateFrame("nkTexture", "nkCartographer.map.setupIcon",  mapUI:GetHeader())
	setupIcon:SetPoint("CENTERLEFT", mapUI:GetHeader(), "CENTERLEFT", 5, 0)
	setupIcon:SetHeight(16)
	setupIcon:SetWidth(16)
	setupIcon:SetTextureAsync("EnKai", "gfx/icons/config.png")

	setupIcon:EventAttach(Event.UI.Input.Mouse.Left.Down, function () internalFunc.ShowConfig() end, setupIcon:GetName() .. ".Mouse.Left.Down")

	local waypointIcon = EnKai.uiCreateFrame("nkTexture", "nkCartographer.map.waypointIcon",  mapUI:GetHeader())
	waypointIcon:SetPoint("CENTERLEFT", setupIcon, "CENTERRIGHT", 5, 0)
	waypointIcon:SetHeight(16)
	waypointIcon:SetWidth(16)
	waypointIcon:SetTextureAsync("EnKai", "gfx/icons/pin.png")

	waypointIcon:EventAttach(Event.UI.Input.Mouse.Left.Down, function () internalFunc.WaypointDialog() end, waypointIcon:GetName() .. ".Mouse.Left.Down")]]

	Command.Event.Attach(EnKai.events["nkCartographer.map"].Moved, function (_, x, y, maximized)

		if maximized == true then
			nkCartSetup.maximizedX, nkCartSetup.maximizedY = x, y 
		else
			nkCartSetup.x, nkCartSetup.y = x, y
		end

	end, "nkCartographer.map.Moved")    

	Command.Event.Attach(EnKai.events["nkCartographer.map"].Resized, function (_, newWidth, newHeight, maximized)

		if maximized == true then
			nkCartSetup.maximizedWidth, nkCartSetup.maximizedHeight = newWidth, newHeight 
		else
			nkCartSetup.width, nkCartSetup.height = newWidth, newHeight
		end

	end, "nkCartographer.map.Moved")

	Command.Event.Attach(EnKai.events["nkCartographer.map"].Zoomed, function (_, newScale, maximized)
		if maximized == true then
			nkCartSetup.maximizedScale = newScale
		else
			nkCartSetup.scale = newScale
		end

	internalFunc.UpdateWaypointArrows ()

	end, "nkCartographer.map.Zoomed")

	Command.Event.Attach(EnKai.events["nkCartographer.map"].Toggled, function (_, newScale, maximized)
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

	local details = inspectUnitDetail(data.playerUID)
	internalFunc.SetZone (details.zone)

	uiElements.mapUI:SetPointMaximized(nkCartSetup.maximizedX, nkCartSetup.maximizedY)  
	uiElements.mapUI:SetWidthMaximized(nkCartSetup.maximizedWidth)
	uiElements.mapUI:SetHeightMaximized(nkCartSetup.maximizedHeight)

	uiElements.mapUI:SetPoint("TOPLEFT", UIParent, "TOPLEFT", nkCartSetup.x, nkCartSetup.y)
	uiElements.mapUI:SetZoom(nkCartSetup.scale, false)
	uiElements.mapUI:SetZoom(nkCartSetup.maximizedScale, true)

	local points, units = EnKai.map.getAll()
	internalFunc.UpdateMap(points, "add", "internalFunc.initMap")
	internalFunc.UpdateUnit (units, "add")

	if nkDebug and uiElements.debugPanel then
		local mapInfo = uiElements.mapUI:GetMapInfo()
		uiElements.debugPanel:SetCoord(mapInfo.x1, mapInfo.x2, mapInfo.y1, mapInfo.y2)
	end

	Command.Event.Attach(Event.System.Update.Begin, function ()
      
      if data.delayStart ~= nil then
          local tmpTime = inspectTimeReal()
          if EnKai.tools.math.round((tmpTime - data.delayStart), 1) > 1 then 
            uiElements.mapUI:SetPoint("TOPLEFT", UIParent, "TOPLEFT", nkCartSetup.x, nkCartSetup.y)
            Command.Event.Detach(Event.System.Update.Begin, nil, "nkCartographer.resetPosition")	
          end
      else
        data.delayStart = inspectTimeReal()
      end
      
    end, "nkCartographer.resetPosition")		

	local function _toggleMinMax()
		uiElements.mapUI:ToggleMinMax()
	end

    EnKai.managerV2.RegisterButton('nkCartographer.config', addonInfo.id, "gfx/minimapIcon.png", internalFunc.ShowConfig)
	EnKai.managerV2.RegisterButton('nkCartographer.toggle', addonInfo.id, "gfx/minimapIconCloseMap.png", internalFunc.showHide)
	EnKai.managerV2.RegisterButton('nkCartographer.minmax', addonInfo.id, "gfx/minimapIconResize.png", _toggleMinMax)
    
    local minimapFrame = EnKai.managerV2.GetFrame()
    if minimapFrame then      
      minimapFrame:SetPoint("TOPLEFT", uiElements.mapUI, "BOTTOMLEFT")
	  minimapFrame:SetWidth(uiElements.mapUI:GetWidth())
    end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "internalFunc.initMap", debugId) end
  
end

function internalFunc.UpdateWaypointArrows ()

  if uiElements.mapUI == nil or data.centerElement == nil then return end
  
  local map = uiElements.mapUI:GetMap()
  local mapInfo = uiElements.mapUI:GetMapInfo()

  for key, details in pairs (data.waypoints) do
  
--	dump (details)
--	dump (mapInfo)
    if details.coordX >= mapInfo.x1 and details.coordX <= mapInfo.x2 and details.coordZ >= mapInfo.y1 and details.coordZ <= mapInfo.y2 then 
  
      if details.gfx == nil then
        details.gfx = EnKai.uiCreateFrame("nkCanvas", "nkCartographer.waypointarrow." .. EnKaiUUID(), uiElements.mapUI:GetMask())
        details.gfx:SetLayer(999)      
      end
      
      local canvas, width, height, xmod, zmod
      local coordX, coordZ = uiElements.mapUI:GetElement(data.centerElement):GetCoord()    
      local stroke = { thickness = 3, r = 1, g = 0.8, b = 0.4, a = 1}
      local headX, headY = 0, 0
          
      if details.player == true then stroke = { thickness = 3, r = 0.463, g = 0.741, b = 0.722, a = 1} end
      
      if details.coordX <= coordX then
      
        width, xmod = coordX - details.coordX, -1
      
        if details.coordZ <= coordZ then
          canvas = {{xProportional = 1, yProportional = 1}, {xProportional = 0, yProportional = 0}}
          height, zmod = coordZ - details.coordZ, -1
        else
          canvas = {{xProportional = 1, yProportional = 0}, {xProportional = 0, yProportional = 1}}
          height, zmod, headY = details.coordZ - coordZ, 0, 1
        end
      else
        width, xmod, headX = details.coordX - coordX, 0, 1
      
        if details.coordZ <= coordZ then
          canvas = {{xProportional = 0, yProportional = 1}, {xProportional = 1, yProportional = 0}}
          height, zmod = coordZ - details.coordZ, -1
        else
          canvas = {{xProportional = 0, yProportional = 0}, {xProportional = 1, yProportional = 1}}
          height, zmod, headY = details.coordZ - coordZ, 0, 1
        end
      end
          
      local newWidth = map:GetWidth() / (mapInfo.x2 - mapInfo.x1) * width
      local newHeight = map:GetHeight() / (mapInfo.y2 - mapInfo.y1) * height
      
      local xP = 1 / (mapInfo.x2 - mapInfo.x1) * (coordX - mapInfo.x1)
      local yP = 1 /  (mapInfo.y2 - mapInfo.y1) * (coordZ - mapInfo.y1) 
      
      local thisX = (map:GetWidth() * xP) 
      local thisY = (map:GetHeight() * yP)
  
      details.gfx:ClearAll()    
      details.gfx:SetWidth(newWidth)
      details.gfx:SetHeight(newHeight)
      details.gfx:SetShape(canvas, nil, stroke)
      details.gfx:SetPoint("TOPLEFT", map, "TOPLEFT", thisX + (newWidth * xmod), thisY + (newHeight * zmod))
    end
      
  end  

end

function internalFunc.SetZone (newZoneID)

	local debugId
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "internalFunc.SetZone") end

	local newWorld = EnKai.map.getZoneWorld(newZoneID)
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
		EnKai.tools.error.display ("nkCartographer", "zone " .. newZoneID .. " not found", 2)
		data.currentWorld = "unknown"
		--return
	end

	uiElements.mapUI:SetMap("world", data.currentWorld)

	local details = inspectUnitDetail(data.playerUID)
	data.locationName = details.locationName
	uiElements.mapUI:SetCoord(details.coordX, details.coordZ)	
	uiElements.mapUI:SetCoordsLabel(details.coordX, details.coordZ)	

	_zoneDetails = inspectZoneDetail(newZoneID)
	uiElements.mapUI:SetZoneTitle(nkCartSetup.showZoneTitle)

	if inspectSystemSecure() == false then Command.System.Watchdog.Quiet() end

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
	
	for key, details in pairs (mapInfo) do
		if action == "remove" then
			--dump (mapInfo)

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
			elseif details.type ~= "UNKNOWN" and details.type ~= "PORTAL" then -- filter minimap portal and use poi portal instead
				--if debugSource == "processQuests" then dump (details) end
				uiElements.mapUI:AddElement(details)
				if stringFind(details.type, "RESOURCE") == 1 and nkCartSetup.trackGathering == true then _trackGathering(details) end
			elseif details.type == "UNKNOWN" then
				if data.postponedAdds == nil then data.postponedAdds = {} end
				if nkQuestBase.query.isInit() == false or nkQuestBase.query.isPackageLoaded('poa') == false or nkQuestBase.query.isPackageLoaded('nt') == false or nkQuestBase.query.isPackageLoaded('classic') == false then
					data.postponedAdds[key] = details
				else
					if inspectSystemWatchdog() < 0.1 then
						data.postponedAdds[key] = details
					else
						if internalFunc.IsKnownMinimapQuest (details.id) == false then
							if nkCartSetup.showUnknown == true then
								err, retValue = pcall(internalFunc.CheckUnknownForQuest, details)
								if err and not retValue then uiElements.mapUI:AddElement(details) end
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
					--print ("debugSource: " .. debugSource)
					--dump (details)
					 internalFunc.UpdateMap ({[key] = mapInfo}, "add", debugSource)
				end
			end
		elseif action == "coord" then
			if uiElements.mapUI:ChangeElement(details) == false then
				 
				 internalFunc.UpdateMap ({[key] = mapInfo}, "add", debugSource)
				
				if nkDebug then 
					nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap coord", "failed " .. debugSource, details)
					--print ("debugSource: " .. debugSource)
					--dump (details) 
				end
			end
		elseif action == "waypoint-add" then
			local unitDetails = inspectUnitDetail(key)
			uiElements.mapUI:AddElement({ id = "wp-" .. key, type = "WAYPOINT", descList = { unitDetails.name }, coordX = details.coordX, coordZ = details.coordZ })
			data.waypoints[key] = { coordX = details.coordX, coordZ = details.coordZ }
			if key == data.playerUID then data.waypoints[key].player = true end      
			internalFunc.UpdateWaypointArrows ()      
		elseif action == "waypoint-remove" then
			uiElements.mapUI:RemoveElement( "wp-" .. key)
			if data.waypoints[key] ~= nil and data.waypoints[key].gfx ~= nil then 
				data.waypoints[key].gfx:destroy()
				--data.waypoints[key].gfxArrow:destroy() 
			end
			data.waypoints[key] = nil
			internalFunc.UpdateWaypointArrows ()
		elseif action == "waypoint-change" then
			if uiElements.mapUI:ChangeElement({ id =  "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ }) == false then
				if nkDebug then
					nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateMap waypoint-change", "failed " .. debugSource, { id =  "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ })
					--print ("debugSource: " .. debugSource)
					--dump({ id =  "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ })
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
				local unitDetails = inspectUnitDetail("player")
				details.type = "UNIT.PLAYER"
				details.title = unitDetails.name
				details.angle = 0         
				data.centerElement = key
				uiElements.mapUI:AddElement(details)
			elseif details.type == "player.pet" then
				local unitDetails = inspectUnitDetail("player.pet")
				details.type = "UNIT.PLAYERPET"
				details.title = unitDetails.name         
				uiElements.mapUI:AddElement(details)
			elseif stringFind(details.type, "group") ~= nil and stringFind(details.type, "group..%.") == nil then				
			
				local unitDetails = inspectUnitDetail(details.type)
				details.type = "UNIT.GROUPMEMBER"        
				details.title = unitDetails.name
				details.smoothCoords = true
				uiElements.mapUI:AddElement(details)
				
				if nkDebug and details.type == "UNIT.GROUPMEMBER" then 
					nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateUnit", action .. ": " .. (details.type or '?'), details)
				end
			else
				if nkDebug and stringFind(details.type, "mouseover") == nil then 
					nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateUnit", "not adding " .. (details.type or '?'), details)
				end
				--dump (details)
			end

		elseif action == "change" then

			if key == data.playerUID then
			
				-- get player angle to show direction on map

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
				
				-- if nkDebug and details.type ~= "UNIT.PLAYER" then 
					-- nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateUnit", "changing " .. (details.type or '?'), details)
				-- end
				
				if uiElements.mapUI:ChangeElement(details) == false then
					if details.type == 'player.target' then
						internalFunc.UpdateUnit ({[key] = details}, "add")
					else
						if nkDebug then
							nkDebug.logEntry (addonInfo.identifier, "internalFunc.UpdateUnit", "could not change element", details)
							--print (' internalFunc.UpdateUnit', details.type)
							--dump(details)
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

function internalFunc.ShowQuest(flag)
  
  if flag == true and nkCartSetup.showQuest == true then
    internalFunc.GetQuests();
  else
    if data.currentQuestList ~= nil then
      for questId, mappoints in pairs(data.currentQuestList) do 
        internalFunc.UpdateMap (mappoints, "remove")
      end       
    end
    
    internalFunc.UpdateMap (data.minimapQuestList, "remove")
    
    if data.missingQuestList ~= nil then
      for questId, mappoints in pairs(data.missingQuestList) do 
        internalFunc.UpdateMap (mappoints, "remove")
      end       
    end

    data.currentQuestList = {}
    data.minimapQuestList = {}
    data.minimapIdToQuest = {}    
    data.missingQuestList = {}
    
  end
  
end

function internalFunc.ShowPOI(flag)

  local lastPoi = EnKai.map.GetZonePOI (data.lastZone)
  
  if flag == true and nkAM_Loot ~= nil and EnKai.unit.getGroupStatus () ~= 'single' then
	local bossInfo = nkAM_Loot.getPOI(data.lastZone)
	if bossInfo ~= nil then
		if data.customPOIs[data.lastZone] == nil then data.customPOIs[data.lastZone] = {} end
		for k, v in pairs(bossInfo) do			
			data.customPOIs[data.lastZone][k] = v
		end
	end	
  end
  
  local customPoi = data.customPOIs[data.lastZone]
  
  if customPoi ~= nil then
    if lastPoi == nil then lastPoi = {} end
    for k, v in pairs(customPoi) do 
      lastPoi[k] = v
      lastPoi[k].id = k
      
      if lastPoi[k].type == "POI.ACHIEVEMENT" then
        lastPoi[k].title = lang.poiAchievement
      elseif lastPoi[k].type == "POI.PUZZLE" then
        lastPoi[k].title = lang.poiPuzzle
      end

      lastPoi[k].descList = { v[EnKaiGetLanguageShort ()] }
    end
  end  
  
  if lastPoi == nil then return end
  
  if flag == true and nkCartSetup.showPOI == true then
    internalFunc.UpdateMap (lastPoi, "add", "internalFunc.ShowPOI")
  else
    internalFunc.UpdateMap (lastPoi, "remove")
  end

end

function internalFunc.ShowRareMobs(flag)

  if flag == true then
    if Inspect.Addon.Detail('RareDar') ~= nil then
      _getRareDarData ()
    elseif Inspect.Addon.Detail('RareTracker') ~= nil then
      _getRareTrackerData ()
    end
  else
    internalFunc.UpdateMap (_rareData, "remove")
  end

end

function internalFunc.ShowGathering(flag)

	if nkCartGathering.gatheringData[data.lastZone] == nil then return end

	local action = "add"
	if flag == false then action = "remove" end
	
	local temp = {}
	
	for k, v in pairs(nkCartGathering.gatheringData[data.lastZone]) do
		table.insert(temp, {[k] = v})
	end
	
	local gridCoRoutine = coroutine.create(
		function ()
			for idx = 1, #temp, 1 do
				internalFunc.UpdateMap (temp[idx], action, "internalFunc.ShowGathering")
				coroutine.yield(idx)
			end
		end
	)

	EnKai.coroutines.add ({ func = gridCoRoutine, counter = #temp, active = true })

end

function internalFunc.ShowArtifacts(flag)

  if nkCartGathering.artifactsData[data.lastZone] == nil then return end

  if flag == true then
     internalFunc.UpdateMap (nkCartGathering.artifactsData[data.lastZone], "add")
  else
    internalFunc.UpdateMap (nkCartGathering.artifactsData[data.lastZone], "remove")
  end

end

function internalFunc.CollectArtifact(itemData)

  if nkCartGathering.artifactsData[data.lastZone] == nil then nkCartGathering.artifactsData[data.lastZone] = {} end

  local unitDetails = inspectUnitDetail('player') 
  local coordRangeX = {unitDetails.coordX-2, unitDetails.coordX+2}
  local coordRangeZ = {unitDetails.coordZ-2, unitDetails.coordZ+2}      

  for key, _ in pairs (itemData) do
    local details = inspectItemDetail(key)
	
	--dump(details)
    
    if details and stringFind(details.category, "artifact") == 1 then
    
      local artifactType = string.upper(stringMatch(details.category, "artifact (.+)"))
      if artifactType == "FAE YULE" then artifactType = "FAEYULE" end
      local type = "TRACK.ARTIFACT." .. artifactType
      
      local knownPos = false
      
      for _, info in pairs(nkCartGathering.artifactsData[data.lastZone]) do
        if info.coordX >= coordRangeX[1] and info.coordX <= coordRangeX[2] and
           info.coordZ >= coordRangeZ[1] and info.coordZ <= coordRangeZ[2] then
           knownPos = true
           break;
        end
      end
      
      if knownPos == false then
        local thisData = { id = stringMatch(type, "TRACK.(.+)") .. EnKaiUUID(), type = type, descList = {}, coordX = unitDetails.coordX, coordY = unitDetails.coordY, coordZ = unitDetails.coordZ }
        nkCartGathering.artifactsData[data.lastZone][thisData.id] = thisData
      end
    end
  end

end

function internalFunc.WaypointDialog()

	local xpos, ypos
	
	if inspectSystemSecure() == true then return end

	if uiElements.waypointDialog == nil then
		local name = "nkCartographer.waypointDialog"
		local coordLabel, xposEdit, yposEdit, sepLabel, setButton		
	
		uiElements.waypointDialog = EnKai.uiCreateFrame("nkWindowElement", name, uiElements.contextSecure)
		uiElements.waypointDialog:SetLayer(3)
		uiElements.waypointDialog:SetWidth(200)
		uiElements.waypointDialog:SetHeight(140)	
		uiElements.waypointDialog:SetTitle(lang.waypointDialogTitle)
		uiElements.waypointDialog:SetSecureMode('restricted')
		uiElements.waypointDialog:SetTitleFont(addonInfo.id, "MontserratSemiBold")
		
		Command.Event.Attach(EnKai.events[name].Closed, function () 
			xposEdit:Leave()
			yposEdit:Leave()
		end, name .. ".Closed")
		
		coordLabel = EnKai.uiCreateFrame("nkText", name .. ".coordLabel", uiElements.waypointDialog:GetContent())
		coordLabel:SetPoint("CENTERTOP", uiElements.waypointDialog:GetContent(), "CENTERTOP", 0, 10)
		coordLabel:SetFontColor(1, 1, 1, 1)
		coordLabel:SetFontSize(12)
		coordLabel:SetText(lang.coordLabel)

		EnKai.ui.setFont(coordLabel, addonInfo.id, "Montserrat")
		
		sepLabel = EnKai.uiCreateFrame("nkText", name .. ".sepLabel", uiElements.waypointDialog:GetContent())
		sepLabel:SetPoint("CENTERTOP", coordLabel, "CENTERBOTTOM", 0, 10)
		sepLabel:SetFontColor(1, 1, 1, 1)
		sepLabel:SetFontSize(12)
		sepLabel:SetText("/")

		EnKai.ui.setFont(sepLabel, addonInfo.id, "Montserrat")
				
		xposEdit = EnKai.uiCreateFrame("nkTextField", name .. ".xposEdit", uiElements.waypointDialog:GetContent())
		yposEdit = EnKai.uiCreateFrame("nkTextField", name .. ".yposEdit", uiElements.waypointDialog:GetContent())
				
		xposEdit:SetPoint("CENTERRIGHT", sepLabel, "CENTERLEFT", -5, 0)
		xposEdit:SetWidth(50)
		xposEdit:SetTabTarget(yposEdit)
		
		local function _setMacro()
			if xpos == nil or ypos == nil or tonumber(xpos) == nil or tonumber(ypos) == nil then return end
			
			EnKai.events.addInsecure(function() setButton:SetMacro(stringFormat("setwaypoint %d %d", xpos, ypos)) end)
		end
		
		Command.Event.Attach(EnKai.events[name .. ".xposEdit"].TextfieldChanged, function (_, newValue) 
			xpos = newValue
			_setMacro()
		end, name .. ".xposEdit.TextfieldChanged")
				
		yposEdit:SetPoint("CENTERLEFT", sepLabel, "CENTERRIGHT", 5, 0)
		yposEdit:SetWidth(50)
		yposEdit:SetTabTarget(xposEdit)
		
		Command.Event.Attach(EnKai.events[name .. ".yposEdit"].TextfieldChanged, function (_, newValue) 
			ypos = newValue
			_setMacro()
		end, name .. ".yposEdit.TextfieldChanged")
		
		setButton = EnKai.uiCreateFrame("nkButtonMetro", name .. ".setButton", uiElements.waypointDialog:GetContent())
		setButton:SetPoint("CENTERTOP", sepLabel, "CENTERBOTTOM", 0, 20)
		setButton:SetText(lang.btSet)
		setButton:SetIcon("EnKai", "gfx/icons/ok.png")
		setButton:SetScale(.8)
		setButton:SetLayer(9)
		setButton:SetFont(addonInfo.id, "MontserratSemiBold")

		Command.Event.Attach(EnKai.events[name .. ".setButton"].Clicked, function () 
			xposEdit:Leave()
			yposEdit:Leave()
			
			EnKai.events.addInsecure(function() uiElements.waypointDialog:SetVisible(false) end)			
			
		end, name .. ".setButton.Clicked")

	else
		if uiElements.waypointDialog:GetVisible() == true then
			uiElements.waypointDialog:SetVisible(false)
		else
			uiElements.waypointDialog:SetVisible(true)
		end		
	end
	
	local mouseData = inspectMouse()
	uiElements.waypointDialog:SetPoint("TOPLEFT", UIParent, "TOPLEFT", mouseData.x - uiElements.waypointDialog:GetWidth(), mouseData.y - uiElements.waypointDialog:GetHeight())

end

function internalFunc.ShowCustomPoints()

	if nkCartSetup.userPOI[data.currentWorld] ~= nil then internalFunc.UpdateMap (nkCartSetup.userPOI[data.currentWorld], "add") end

end

function internalFunc.AddCustomPoint(x, y, title)

	if nkCartSetup.userPOI[data.currentWorld] == nil then nkCartSetup.userPOI[data.currentWorld] = {} end
	
	local thisID = "CUSTOMPOI" .. EnKaiUUID ()
	local thisEntry = {
		[thisID] = {
			coordX = x,
			coordY = y,
			descList = { title },
			description = title,
			id = thisID,
			type = "CUSTOMPOI"			
		}
	}
	
	nkCartSetup.userPOI[data.currentWorld][thisID] = thisEntry[thisID]	
	internalFunc.UpdateMap (thisEntry, "add")
	
end

function internalFunc.ClearCustomPoints()

	if nkCartSetup.userPOI[data.currentWorld] ~= nil then 
		internalFunc.UpdateMap (nkCartSetup.userPOI[data.currentWorld], "remove")
		nkCartSetup.userPOI[data.currentWorld] = {}
	end

end

function internalFunc.debugPanel()

	local name = "nkCartographer.debugPanel"

	local debugPanel, x1label, x2label, y1label, y2label, x1, x2, y1, y2

	debugPanel = EnKai.uiCreateFrame("nkFrame", name, uiElements.context)
	debugPanel:SetWidth(200)
	debugPanel:SetHeight(100)
	debugPanel:SetPoint("TOPRIGHT", uiElements.mapUI, "TOPLEFT")
	debugPanel:SetBackgroundColor(0,0,0,.5)

	x1label = EnKai.uiCreateFrame("nkText", name .. ".x1label", debugPanel)
	x2label = EnKai.uiCreateFrame("nkText", name .. ".x2label", debugPanel)
	y1label = EnKai.uiCreateFrame("nkText", name .. ".y1label", debugPanel)
	y2label = EnKai.uiCreateFrame("nkText", name .. ".y2label", debugPanel)

	x1 = EnKai.uiCreateFrame("nkTextfield", name .. ".x1", debugPanel)
	x2 = EnKai.uiCreateFrame("nkTextfield", name .. ".x2", debugPanel)
	y1 = EnKai.uiCreateFrame("nkTextfield", name .. ".y1", debugPanel)
	y2 = EnKai.uiCreateFrame("nkTextfield", name .. ".y2", debugPanel)

	x1label:SetPoint("TOPLEFT", debugPanel, "TOPLEFT", 10, 10)
	x1label:SetText("x1: ")

	y1label:SetPoint("TOPLEFT", debugPanel, "TOPLEFT", 10, 30)
	y1label:SetText("y1: ")

	x1:SetPoint("CENTERLEFT", x1label, "CENTERRIGHT", 5, 0)
	y1:SetPoint("CENTERLEFT", y1label, "CENTERRIGHT", 5, 0)

	x2:SetPoint("BOTTOMRIGHT", debugPanel, "BOTTOMRIGHT", -10, -30)
	y2:SetPoint("BOTTOMRIGHT", debugPanel, "BOTTOMRIGHT", -10, -10)

	x2label:SetPoint("CENTERRIGHT", x2, "CENTERLEFT", 5, 0)
	y2label:SetPoint("CENTERRIGHT", y2, "CENTERLEFT", 5, 0)
	x2label:SetText("x2: ")
	y2label:SetText("y2: ")

	Command.Event.Attach(EnKai.events[name .. ".x1"].TextfieldChanged, function ()

		local mapInfo = uiElements.mapUI:GetMapInfo()
		mapInfo.x1 = tonumber(x1:GetText())
		uiElements.mapUI:UpdateMapInfo(mapInfo)

	end, name .. ".x1.TextfieldChanged")

	Command.Event.Attach(EnKai.events[name .. ".x2"].TextfieldChanged, function ()

		local mapInfo = uiElements.mapUI:GetMapInfo()
		mapInfo.x2 = tonumber(x2:GetText())
		uiElements.mapUI:UpdateMapInfo(mapInfo)

	end, name .. ".x2.TextfieldChanged")

	Command.Event.Attach(EnKai.events[name .. ".y1"].TextfieldChanged, function ()

		local mapInfo = uiElements.mapUI:GetMapInfo()
		mapInfo.y1 = tonumber(y1:GetText())
		uiElements.mapUI:UpdateMapInfo(mapInfo)

	end, name .. ".y1.TextfieldChanged")

	Command.Event.Attach(EnKai.events[name .. ".y2"].TextfieldChanged, function ()

		local mapInfo = uiElements.mapUI:GetMapInfo()
		mapInfo.y2 = tonumber(y2:GetText())
		uiElements.mapUI:UpdateMapInfo(mapInfo)

	end, name .. ".y2.TextfieldChanged")

	function debugPanel:SetCoord(newX1, newX2, newY1, newY2)
		x1:SetText(newX1)
		x2:SetText(newX2)
		y1:SetText(newY1)
		y2:SetText(newY2)
	end
	
	return debugPanel
  
end