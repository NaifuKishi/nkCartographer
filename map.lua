local addonInfo, privateVars = ...

---------- init namespace ---------

local data                  = privateVars.data
local uiElements            = privateVars.uiElements
local _internal             = privateVars.internal
local _events               = privateVars.events
local lang        			= privateVars.langTexts

---------- init local variables ---------

local _zoneDetails          = nil
local _rareData             = {}

---------- make global functions local ---------

local _oInspectUnitDetail = Inspect.Unit.Detail
local _oInspectZoneDetail = Inspect.Zone.Detail
local _oInspectSystemSecure = Inspect.System.Secure
local _oInspectSystemWatchdog = Inspect.System.Watchdog
local _oInspectItemDetail = Inspect.Item.Detail
local _oInspectMouse = Inspect.Mouse

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
    if RareDar.data[idx].zone[EnKai.tools.lang.getLanguage()] == _zoneDetails.name then
      local mobs = RareDar.data[idx].mobs
      
      for idx2 = 1, #mobs, 1 do
        if data.rareMobKilled[mobs[idx2].achv[EnKai.tools.lang.getLanguage()]] ~= true then      
          local posList = mobs[idx2].pos
          
          for idx3 = 1, #posList, 1 do
            _processRareData(mobs[idx2].id, idx3, mobs[idx2].targ[EnKai.tools.lang.getLanguage()], posList[idx3][1], posList[idx3][2], mobs[idx2].comment[EnKai.tools.lang.getLanguage()])
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
    
    if data.rareMobKilled[mobs[idx].n[EnKai.tools.lang.getLanguageShort()]] ~= true then      
  
      local posList = mobs[idx].loc
      
      for idx2 = 1, #posList, 1 do
        _processRareData(mobs[idx].n[EnKai.tools.lang.getLanguageShort()], idx2, mobs[idx].n[EnKai.tools.lang.getLanguageShort()], posList[idx2].x, posList[idx2].z, "")
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

	local thisData = EnKai.tools.table.copy(details)
	thisData.type = "TRACK" .. string.match (thisData.type, "RESOURCE(.+)")

	local thisType = string.match(details.type, "RESOURCE%.(.+)") or string.match(details.type, "RESOURCE%.(.+)%.")
	thisData.id = thisType .. "-" .. EnKai.tools.uuid()

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
	zoneTitle:SetEffectGlow({ colorB = 0, colorA = 1, colorG = 0, colorR = 0, strength = 3, blurX = 3, blurY = 3 })

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

	local setupIcon = EnKai.uiCreateFrame("nkTexture", "nkCartographer.map.setupIcon",  mapUI:GetHeader())
	setupIcon:SetPoint("CENTERLEFT", mapUI:GetHeader(), "CENTERLEFT", 5, 0)
	setupIcon:SetHeight(16)
	setupIcon:SetWidth(16)
	setupIcon:SetTextureAsync("EnKai", "gfx/icons/config.png")

	setupIcon:EventAttach(Event.UI.Input.Mouse.Left.Down, function () _internal.ShowConfig() end, setupIcon:GetName() .. ".Mouse.Left.Down")

	local waypointIcon = EnKai.uiCreateFrame("nkTexture", "nkCartographer.map.waypointIcon",  mapUI:GetHeader())
	waypointIcon:SetPoint("CENTERLEFT", setupIcon, "CENTERRIGHT", 5, 0)
	waypointIcon:SetHeight(16)
	waypointIcon:SetWidth(16)
	waypointIcon:SetTextureAsync("EnKai", "gfx/icons/pin.png")

	waypointIcon:EventAttach(Event.UI.Input.Mouse.Left.Down, function () _internal.WaypointDialog() end, waypointIcon:GetName() .. ".Mouse.Left.Down")

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

	_internal.UpdateWaypointArrows ()

	end, "nkCartographer.map.Zoomed")

	Command.Event.Attach(EnKai.events["nkCartographer.map"].Toggled, function (_, newScale, maximized)
		_internal.UpdateWaypointArrows ()
		mapUI:SetZoneTitle(nkCartSetup.showZoneTitle)
	end, "nkCartographer.map.Toggled")

	return mapUI
	
end

---------- addon internal function block ---------

function _internal.initMap ()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_internal.initMap") end

	if uiElements.mapUI == nil then uiElements.mapUI = _fctMapUI() end

	uiElements.mapUI:SetAnimated(nkCartSetup.animations, nkCartSetup.animationSpeed)
	uiElements.mapUI:SetSmoothScroll(nkCartSetup.smoothScroll)

	uiElements.mapUI:SetWidth(nkCartSetup.width)
	uiElements.mapUI:SetHeight(nkCartSetup.height)

	local details = _oInspectUnitDetail(data.playerUID)
	_internal.SetZone (details.zone)

	uiElements.mapUI:SetPointMaximized(nkCartSetup.maximizedX, nkCartSetup.maximizedY)  
	uiElements.mapUI:SetWidthMaximized(nkCartSetup.maximizedWidth)
	uiElements.mapUI:SetHeightMaximized(nkCartSetup.maximizedHeight)
	uiElements.mapUI:SetPoint("TOPLEFT", UIParent, "TOPLEFT", nkCartSetup.x, nkCartSetup.y)
	uiElements.mapUI:SetZoom(nkCartSetup.scale, false)
	uiElements.mapUI:SetZoom(nkCartSetup.maximizedScale, true)

	local points, units = EnKai.map.getAll()
	_internal.UpdateMap(points, "add", "_internal.initMap")
	_internal.UpdateUnit (units, "add")

	if nkDebug and uiElements.debugPanel then
		local mapInfo = uiElements.mapUI:GetMapInfo()
		uiElements.debugPanel:SetCoord(mapInfo.x1, mapInfo.x2, mapInfo.y1, mapInfo.y2)
	end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_internal.initMap", debugId) end
  
end

function _internal.UpdateWaypointArrows ()

  if uiElements.mapUI == nil or data.centerElement == nil then return end
  
  local map = uiElements.mapUI:GetMap()
  local mapInfo = uiElements.mapUI:GetMapInfo()

  for key, details in pairs (data.waypoints) do
  
--	dump (details)
--	dump (mapInfo)
    if details.coordX >= mapInfo.x1 and details.coordX <= mapInfo.x2 and details.coordZ >= mapInfo.y1 and details.coordZ <= mapInfo.y2 then 
  
      if details.gfx == nil then
        details.gfx = EnKai.uiCreateFrame("nkCanvas", "nkCartographer.waypointarrow." .. EnKai.tools.uuid(), uiElements.mapUI:GetMask())
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

function _internal.SetZone (newZoneID)

	local debugId
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_internal.SetZone") end

	local newWorld = EnKai.map.getZoneWorld(newZoneID)
	local isNewWorld = false

	if newWorld ~= data.currentWorld then isNewWorld = true end

	if data.lastZone ~= nil then 
		_internal.ShowPOI(false)
		_internal.ShowRareMobs(false)
		if isNewWorld then _internal.ShowQuest(false) end
		if nkCartSetup.trackGathering == true then _internal.ShowGathering(false) end
		if nkCartSetup.trackArtifacts == true then _internal.ShowArtifacts(false) end
	end

	data.currentWorld = newWorld

	if data.currentWorld == nil then
		EnKai.tools.error.display ("nkCartographer", "zone " .. newZoneID .. " not found", 2)
		data.currentWorld = "unknown"
		--return
	end

	uiElements.mapUI:SetMap("world", data.currentWorld)

	local details = _oInspectUnitDetail(data.playerUID)
	data.locationName = details.locationName
	uiElements.mapUI:SetCoord(details.coordX, details.coordZ)

	_zoneDetails = _oInspectZoneDetail(newZoneID)
	uiElements.mapUI:SetZoneTitle(nkCartSetup.showZoneTitle)

	if _oInspectSystemSecure() == false then Command.System.Watchdog.Quiet() end

	data.lastZone = newZoneID
	_internal.ShowPOI(true)  
	_internal.ShowCustomPoints()
	_internal.ShowRareMobs(true)
	_internal.FindMissing()

	if isNewWorld then _internal.ShowQuest(true) end

	if nkCartSetup.trackGathering == true then _internal.ShowGathering(true) end
	if nkCartSetup.trackArtifacts == true then _internal.ShowArtifacts(true) end

	if nkDebug and uiElements.debugPane then
		local mapInfo = uiElements.mapUI:GetMapInfo()
		uiElements.debugPanel:SetCoord(mapInfo.x1, mapInfo.x2, mapInfo.y1, mapInfo.y2)
	end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_internal.SetZone", debugId) end

end

function _internal.UpdateMap (mapInfo, action, debugSource, checkForMinimapQuest)

	if uiElements.mapUI == nil then return end

	local debugId
	if nkDebug then debugId = nkDebug.traceStart (addonInfo.identifier, "_internal.UpdateMap") end
	
	if nkDebug then nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateMap", string.format("%s - %s", action, debugSource), mapInfo) end
	
	for key, details in pairs (mapInfo) do
		if action == "remove" then
			if checkForMinimapQuest == true or checkForMinimapQuest == nil then
				if _internal.IsKnownMinimapQuest (key) == false then uiElements.mapUI:RemoveElement(key) end
			else
				uiElements.mapUI:RemoveElement(key)
			end
		elseif action == "add" then
			if details["type"] == nil then
				if nkDebug then
					nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateMap add", "details.type == nil", details)
				end
			elseif details.type ~= "UNKNOWN" and details.type ~= "PORTAL" then -- filter minimap portal and use poi portal instead
				uiElements.mapUI:AddElement(details)
				if string.find(details.type, "RESOURCE") == 1 and nkCartSetup.trackGathering == true then _trackGathering(details) end
			elseif details.type == "UNKNOWN" then
				if data.postponedAdds == nil then data.postponedAdds = {} end
				if nkQuestBase.query.isInit() == false or nkQuestBase.query.isPackageLoaded('nt') == false or nkQuestBase.query.isPackageLoaded('classic') == false then
					data.postponedAdds[key] = details
				else
					if _oInspectSystemWatchdog() < 0.1 then
						data.postponedAdds[key] = details
					else
						if _internal.IsKnownMinimapQuest (details.id) == false then
							if nkCartSetup.showUnknown == true then
								err, retValue = pcall(_internal.CheckUnknownForQuest, details)
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
					nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateMap change", "failed " .. debugSource, details)
					--print ("debugSource: " .. debugSource)
					--dump (details)
					 _internal.UpdateMap ({[key] = mapInfo}, "add", debugSource)
				end
			end
		elseif action == "coord" then
			if uiElements.mapUI:ChangeElement(details) == false then
				 
				 _internal.UpdateMap ({[key] = mapInfo}, "add", debugSource)
				
				if nkDebug then 
					nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateMap coord", "failed " .. debugSource, details)
					--print ("debugSource: " .. debugSource)
					--dump (details) 
				end
			end
		elseif action == "waypoint-add" then
			local unitDetails = _oInspectUnitDetail(key)
			uiElements.mapUI:AddElement({ id = "wp-" .. key, type = "WAYPOINT", descList = { unitDetails.name }, coordX = details.coordX, coordZ = details.coordZ })
			data.waypoints[key] = { coordX = details.coordX, coordZ = details.coordZ }
			if key == data.playerUID then data.waypoints[key].player = true end      
			_internal.UpdateWaypointArrows ()      
		elseif action == "waypoint-remove" then
			uiElements.mapUI:RemoveElement( "wp-" .. key)
			if data.waypoints[key] ~= nil and data.waypoints[key].gfx ~= nil then 
				data.waypoints[key].gfx:destroy()
				--data.waypoints[key].gfxArrow:destroy() 
			end
			data.waypoints[key] = nil
			_internal.UpdateWaypointArrows ()
		elseif action == "waypoint-change" then
			if uiElements.mapUI:ChangeElement({ id =  "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ }) == false then
				if nkDebug then
					nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateMap waypoint-change", "failed " .. debugSource, { id =  "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ })
					--print ("debugSource: " .. debugSource)
					--dump({ id =  "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ })
				end
			end
			data.waypoints[key].coordX = details.coordX
			data.waypoints[key].coordZ = details.coordZ
			_internal.UpdateWaypointArrows ()
		end
	end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_internal.UpdateMap", debugId) end

end

function _internal.UpdateUnit (mapInfo, action)

	if uiElements.mapUI == nil then return end

	local debugId  
	if nkDebug then 
		debugId = nkDebug.traceStart (addonInfo.identifier, "_internal.UpdateUnit") 
	end

	for key, details in pairs (mapInfo) do
	
		if action == "add" then

			if details.type == "player" then
				local unitDetails = _oInspectUnitDetail("player")
				details.type = "UNIT.PLAYER"
				details.title = unitDetails.name
				details.angle = 0         
				data.centerElement = key
				uiElements.mapUI:AddElement(details)
			elseif details.type == "player.pet" then
				local unitDetails = _oInspectUnitDetail("player.pet")
				details.type = "UNIT.PLAYERPET"
				details.title = unitDetails.name         
				uiElements.mapUI:AddElement(details)
			elseif string.find(details.type, "group") ~= nil and string.find(details.type, "group..%.") == nil then				
			
				local unitDetails = _oInspectUnitDetail(details.type)
				details.type = "UNIT.GROUPMEMBER"        
				details.title = unitDetails.name
				details.smoothCoords = true
				uiElements.mapUI:AddElement(details)
				
				if nkDebug and details.type == "UNIT.GROUPMEMBER" then 
					nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateUnit", action .. ": " .. (details.type or '?'), details)
				end
			else
				if nkDebug and string.find(details.type, "mouseover") == nil then 
					nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateUnit", "not adding " .. (details.type or '?'), details)
				end
				--dump (details)
			end

		elseif action == "change" then

			if key == data.playerUID then
			
				-- get player angle to show direction on map

				local coordX, coordZ = uiElements.mapUI:GetCoords()         
				local deltaZ = details.coordZ - coordZ
				local deltaX = details.coordX - coordX

				local angle = math.deg(math.atan2(deltaZ, deltaX))								
				details.angle = -angle
			end

			if key == data.playerTargetUID then
				details.id = "npc" .. key
				if uiElements.mapUI:ChangeElement(details) == false then
					if nkDebug then
						nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateUnit", "could not change element", details)
					end
				end

				details.id = "t" .. key
				if uiElements.mapUI:ChangeElement(details) == false then
					if nkDebug then
						nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateUnit", "could not change element", details)
					end
				end

			elseif string.find(details.type, "mouseover") == nil and string.find(details.type, ".pet") == nil and string.find(details.type, "player.target.target.target") == nil then
				
				-- if nkDebug and details.type ~= "UNIT.PLAYER" then 
					-- nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateUnit", "changing " .. (details.type or '?'), details)
				-- end
				
				if uiElements.mapUI:ChangeElement(details) == false then
					if details.type == 'player.target' then
						_internal.UpdateUnit ({[key] = details}, "add")
					else
						if nkDebug then
							nkDebug.logEntry (addonInfo.identifier, "_internal.UpdateUnit", "could not change element", details)
							--print (' _internal.UpdateUnit', details.type)
							--dump(details)
						end
					end
				end
			end

			if key == data.playerUID then
				uiElements.mapUI:SetCoord(details.coordX, details.coordZ)
				_internal.UpdateWaypointArrows ()
			end

			if key == data.playerHostileTargetUID then
				details.id = "e" .. key
				local bData = {change = {["e" .. key] = details}}
				_events.broadcastTarget(bData)
			end

		elseif action == "remove" then
			uiElements.mapUI:RemoveElement(key)
			if key == data.centerElement then data.centerElement = nil end
		end
	end

	if nkDebug then debugId = nkDebug.traceEnd (addonInfo.identifier, "_internal.UpdateUnit", debugId) end

end

function _internal.ShowQuest(flag)
  
  if flag == true and nkCartSetup.showQuest == true then
    _internal.GetQuests();
  else
    if data.currentQuestList ~= nil then
      for questId, mappoints in pairs(data.currentQuestList) do 
        _internal.UpdateMap (mappoints, "remove")
      end       
    end
    
    _internal.UpdateMap (data.minimapQuestList, "remove")
    
    if data.missingQuestList ~= nil then
      for questId, mappoints in pairs(data.missingQuestList) do 
        _internal.UpdateMap (mappoints, "remove")
      end       
    end

    data.currentQuestList = {}
    data.minimapQuestList = {}
    data.minimapIdToQuest = {}    
    data.missingQuestList = {}
    
  end
  
end

function _internal.ShowPOI(flag)

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

      lastPoi[k].descList = { v[EnKai.tools.lang.getLanguageShort ()] }
    end
  end  
  
  if lastPoi == nil then return end
  
  if flag == true and nkCartSetup.showPOI == true then
    _internal.UpdateMap (lastPoi, "add", "_internal.ShowPOI")
  else
    _internal.UpdateMap (lastPoi, "remove")
  end

end

function _internal.ShowRareMobs(flag)

  if flag == true then
    if Inspect.Addon.Detail('RareDar') ~= nil then
      _getRareDarData ()
    elseif Inspect.Addon.Detail('RareTracker') ~= nil then
      _getRareTrackerData ()
    end
  else
    _internal.UpdateMap (_rareData, "remove")
  end

end

function _internal.ShowGathering(flag)

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
				_internal.UpdateMap (temp[idx], action, "_internal.ShowGathering")
				coroutine.yield(idx)
			end
		end
	)

	EnKai.coroutines.add ({ func = gridCoRoutine, counter = #temp, active = true })

end

function _internal.ShowArtifacts(flag)

  if nkCartGathering.artifactsData[data.lastZone] == nil then return end

  if flag == true then
     _internal.UpdateMap (nkCartGathering.artifactsData[data.lastZone], "add")
  else
    _internal.UpdateMap (nkCartGathering.artifactsData[data.lastZone], "remove")
  end

end

function _internal.CollectArtifact(itemData)

  if nkCartGathering.artifactsData[data.lastZone] == nil then nkCartGathering.artifactsData[data.lastZone] = {} end

  local unitDetails = _oInspectUnitDetail('player') 
  local coordRangeX = {unitDetails.coordX-2, unitDetails.coordX+2}
  local coordRangeZ = {unitDetails.coordZ-2, unitDetails.coordZ+2}      

  for key, _ in pairs (itemData) do
    local details = _oInspectItemDetail(key)
	
	--dump(details)
    
    if details and string.find(details.category, "artifact") == 1 then
    
      local artifactType = string.upper(string.match(details.category, "artifact (.+)"))
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
        local thisData = { id = string.match(type, "TRACK.(.+)") .. EnKai.tools.uuid(), type = type, descList = {}, coordX = unitDetails.coordX, coordY = unitDetails.coordY, coordZ = unitDetails.coordZ }
        nkCartGathering.artifactsData[data.lastZone][thisData.id] = thisData
      end
    end
  end

end

function _internal.WaypointDialog()

	local xpos, ypos
	
	if _oInspectSystemSecure() == true then return end

	if uiElements.waypointDialog == nil then
		local name = "nkCartographer.waypointDialog"
		local coordLabel, xposEdit, yposEdit, sepLabel, setButton		
	
		uiElements.waypointDialog = EnKai.uiCreateFrame("nkWindowElement", name, uiElements.contextSecure)
		uiElements.waypointDialog:SetLayer(3)
		uiElements.waypointDialog:SetWidth(200)
		uiElements.waypointDialog:SetHeight(140)	
		uiElements.waypointDialog:SetTitle(lang.waypointDialogTitle)
		uiElements.waypointDialog:SetSecureMode('restricted')
		
		Command.Event.Attach(EnKai.events[name].Closed, function () 
			xposEdit:Leave()
			yposEdit:Leave()
		end, name .. ".Closed")
		
		coordLabel = EnKai.uiCreateFrame("nkText", name .. ".coordLabel", uiElements.waypointDialog:GetContent())
		coordLabel:SetPoint("CENTERTOP", uiElements.waypointDialog:GetContent(), "CENTERTOP", 0, 10)
		coordLabel:SetFontColor(1, 1, 1, 1)
		coordLabel:SetFontSize(12)
		coordLabel:SetText(lang.coordLabel)
		
		sepLabel = EnKai.uiCreateFrame("nkText", name .. ".sepLabel", uiElements.waypointDialog:GetContent())
		sepLabel:SetPoint("CENTERTOP", coordLabel, "CENTERBOTTOM", 0, 10)
		sepLabel:SetFontColor(1, 1, 1, 1)
		sepLabel:SetFontSize(12)
		sepLabel:SetText("/")
				
		xposEdit = EnKai.uiCreateFrame("nkTextField", name .. ".xposEdit", uiElements.waypointDialog:GetContent())
		yposEdit = EnKai.uiCreateFrame("nkTextField", name .. ".yposEdit", uiElements.waypointDialog:GetContent())
				
		xposEdit:SetPoint("CENTERRIGHT", sepLabel, "CENTERLEFT", -5, 0)
		xposEdit:SetWidth(50)
		xposEdit:SetTabTarget(yposEdit)
		
		local function _setMacro()
			if xpos == nil or ypos == nil or tonumber(xpos) == nil or tonumber(ypos) == nil then return end
			
			EnKai.events.addInsecure(function() setButton:SetMacro(string.format("setwaypoint %d %d", xpos, ypos)) end)
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
	
	local mouseData = _oInspectMouse()
	uiElements.waypointDialog:SetPoint("TOPLEFT", UIParent, "TOPLEFT", mouseData.x - uiElements.waypointDialog:GetWidth(), mouseData.y - uiElements.waypointDialog:GetHeight())

end

function _internal.ShowCustomPoints()

	if nkCartSetup.userPOI[data.currentWorld] ~= nil then _internal.UpdateMap (nkCartSetup.userPOI[data.currentWorld], "add") end

end

function _internal.AddCustomPoint(x, y, title)

	if nkCartSetup.userPOI[data.currentWorld] == nil then nkCartSetup.userPOI[data.currentWorld] = {} end
	
	local thisID = "CUSTOMPOI" .. EnKai.tools.uuid ()
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
	_internal.UpdateMap (thisEntry, "add")
	
end

function _internal.ClearCustomPoints()

	if nkCartSetup.userPOI[data.currentWorld] ~= nil then 
		_internal.UpdateMap (nkCartSetup.userPOI[data.currentWorld], "remove")
		nkCartSetup.userPOI[data.currentWorld] = {}
	end

end

function _internal.debugPanel()

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