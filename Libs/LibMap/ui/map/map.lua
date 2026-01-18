local addonInfo, privateVars = ...

---------- init namespace ---------

if not LibMap then LibMap = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal
local data          = privateVars.data
local mapData       = privateVars.mapData

local inspectAddonCurrent	= Inspect.Addon.Current
local inspectMouse			= Inspect.Mouse

local stringFormat			= string.format
local stringLower			= string.lower
local stringFind			= string.find

local mathFloor				= math.floor
local mathAbs				= math.abs
local mathMax				= math.max

local LibMapUUID				= LibEKL.Tools.UUID

---------- addon internal function block ---------

local function _uiMap(name, parent)

	if LibMap.internal.checkEvents (name, true) == false then return nil end 

	---------- VARIABLES ---------- 

	local activeMap = nil;
	local activeType = nil;
	local mapInfo = nil
	local scale = nil
	local scaleStep = nil
	local x, y
	local drag = false
	local mouseData = nil
	local coordX, coordY = 0, 0
	local elements = {}
	local checkIdentical = {}
	local maximized = false
	local maximizedX, maximizedY = 1, 1
	local maximizedScale = 1
	local width, height = 425, 370
	local maximizedWidth, maximizedHeight = 800, 600
	local origCoordX, origCoordY = nil, nil, nil
	local origX, origY = nil, nil
	local maxZoom = 6
	local cursorX, cursorY
	local coordsArea = {}
	local waypoint = nil
	local cursorCoordX, cursorCoordY
	local animated = true
	local smoothScroll = true  
	local animationSpeed = 0
	local allowWayPoints = true

	local mapWidth, mapHeight
	local maskWidth, maskHeight

	---------- UI ELEMENTS ----------

	local ui = LibEKL.UICreateFrame("nkWindowElement", name .. ".window", parent)
	ui:SetWidth(425)
	ui:SetHeight(370)
	ui:SetDragable(true)
	ui:SetCloseable(false)
	ui:SetFontSize(12)

	local iconZoomIn = LibEKL.UICreateFrame("nkTexture", name ..".iconZoomIn", ui:GetHeader())
	iconZoomIn:SetTextureAsync("LibMap", "gfx/icons/zoomIn.png")
	iconZoomIn:SetPoint("CENTERRIGHT", ui:GetHeader(), "CENTERRIGHT", -5, 0)
	iconZoomIn:SetHeight(16)
	iconZoomIn:SetWidth(16)

	local iconZoomOut = LibEKL.UICreateFrame("nkTexture", name ..".iconZoomOut", ui:GetHeader())
	iconZoomOut:SetTextureAsync("LibMap", "gfx/icons/zoomOut.png")
	iconZoomOut:SetPoint("CENTERRIGHT", iconZoomIn, "CENTERLEFT", -2, 0)
	iconZoomOut:SetHeight(16)
	iconZoomOut:SetWidth(16)

	local iconMinMax = LibEKL.UICreateFrame("nkTexture", name ..".iconMinMax", ui:GetHeader())
	iconMinMax:SetTextureAsync("LibMap", "gfx/icons/maximize.png")
	iconMinMax:SetPoint("CENTERRIGHT", iconZoomOut, "CENTERLEFT", -2, 0)
	iconMinMax:SetHeight(16)
	iconMinMax:SetWidth(16)

	local coordLabel = LibEKL.UICreateFrame("nkText", name .. ".coordLabel", ui:GetHeader())
	coordLabel:SetFontSize(12)
	coordLabel:SetFontColor(1, 1, 1, 1)
	coordLabel:SetPoint("CENTER", ui:GetHeader(), "CENTER") 
	coordLabel:SetLayer(3)

	LibMap.ui.setFont(coordLabel, addonInfo.id, "MontserratSemiBold")

	local mask = UI.CreateFrame('Mask', name .. ".mask", ui:GetContent())
	mask:SetPoint("TOPLEFT", ui:GetContent(), "TOPLEFT")
	mask:SetPoint("BOTTOMRIGHT", ui:GetContent(), "BOTTOMRIGHT")

	maskHeight = mask:GetHeight()
	maskWidth = mask:GetWidth()

	local map = LibEKL.UICreateFrame("nkTexture", name .. ".map", mask)
	map:SetLayer(1)

	local oMapSetWidth = map.SetWidth
	function map:SetWidth (width)
		if mapWidth == width then return end
		mapWidth = width
		oMapSetWidth(self, width)
	end

	local oMapSetHeight = map.SetHeight
	function map:SetHeight (height)
		if mapHeight == height then return end
		mapHeight = height
		oMapSetHeight(self, height)
	end


	local tooltip = LibMap.uiCreateFrame("nkTooltip", name .. ".tooltip", ui)
	tooltip:SetVisible(false)
	tooltip:SetLayer(999)	
	tooltip:SetFont (addonInfo.id, "MontserratSemiBold")

	---------- LOCAL METHODS ----------

	local function _fctRedraw ()

		local debugId  
		if nkDebug then debugId = nkDebug.traceStart (inspectAddonCurrent(), "LibMap _uiMap:Redraw") end    
		
		local currentScale = maximized and maximizedScale or scale
    	local originalScale = currentScale

		local mapInfoWidth = mapInfo.width
    	local mapInfoHeight = mapInfo.height

		if mapInfoWidth * currentScale < maskWidth or mapInfoHeight * currentScale < maskHeight then
			local xScale = 1 / mapInfoWidth * maskWidth
			local yScale = 1 / mapInfoHeight * maskHeight
			currentScale = mathMax(xScale, yScale)
		end

		map:SetWidth(mapInfoWidth * currentScale)
		map:SetHeight(mapInfoHeight * currentScale)

		if x == nil and y == nil then	
			ui:SetCoord((mapInfo.x2 - mapInfo.x1)/2, (mapInfo.y2 - mapInfo.y1)/2)
		else
			ui:SetCoord()
		end

		for key, thisElement in pairs (elements) do
			thisElement:SetZoom(currentScale)
			thisElement:SetCoord()			
		end

		if originalScale ~= currentScale then
			if maximized == true then maximizedScale = currentScale else scale = currentScale end
			LibMap.eventHandlers[name]["Zoomed"](currentScale, maximized)
		end

		if nkDebug then nkDebug.traceEnd (inspectAddonCurrent(), "LibMap _uiMap:Redraw", debugId) end

	end

	local function _fctZoomOut()

		if mapWidth >= maskWidth and mapHeight >= maskHeight then

			local debugId  
			if nkDebug then debugId = nkDebug.traceStart (inspectAddonCurrent(), "LibMap _uiMap:ZoomOut") end

			local thisScale = scale
			if maximized == true then thisScale = maximizedScale end

			if (thisScale - scaleStep >= 0) then
				if maximized == true then 
					maximizedScale = maximizedScale - scaleStep
					thisScale = maximizedScale
				else
					scale = scale - scaleStep
					thisScale = scale
				end        
				
				_fctRedraw()
				LibMap.eventHandlers[name]["Zoomed"](thisScale, maximized)
			end 

			if nkDebug then nkDebug.traceEnd (inspectAddonCurrent(), "LibMap _uiMap:ZoomOut", debugId) end     
		end
	end

	local function _fctZoomIn()

		local debugId
		if nkDebug then debugId = nkDebug.traceStart (inspectAddonCurrent(), "LibMap _uiMap:ZoomIn") end

		local thisScale = scale
		if maximized == true then thisScale = maximizedScale end

		if thisScale < maxZoom then
			if maximized == true then 
				maximizedScale = maximizedScale + scaleStep
			else
				scale = scale + scaleStep
			end    

			_fctRedraw()
			LibMap.eventHandlers[name]["Zoomed"](thisScale, maximized)
		end

		if nkDebug then nkDebug.traceEnd (inspectAddonCurrent(), "LibMap _uiMap:ZoomIn", debugId) end

	end

	local function _fctUpdateCoord(cursorX, cursorY)

		local debugId
		if nkDebug then debugId = nkDebug.traceStart (inspectAddonCurrent(), "_fctUpdateCoord") end

		local diffX = mask:GetLeft() - map:GetLeft() + (cursorX - mask:GetLeft())
		local diffY = mask:GetTop() - map:GetTop() + (cursorY - mask:GetTop())

		local xP = 1 / mapWidth * diffX
		local yP = 1 / mapHeight * diffY

		cursorCoordX = mathFloor(((mapInfo.x2 - mapInfo.x1) * xP) + mapInfo.x1)
		cursorCoordY = mathFloor(((mapInfo.y2 - mapInfo.y1) * yP) + mapInfo.y1) 

		coordLabel:SetText(stringFormat("%d / %d", cursorCoordX, cursorCoordY))

		if nkDebug then nkDebug.traceEnd (inspectAddonCurrent(), "_fctUpdateCoord", debugId) end

	end

	local function _fctPosition(newX, newY)

		if x == newX and y == newY then return end

		x, y = newX, newY
		
		if x + mapWidth < maskWidth then
			x = maskWidth - mapWidth
		elseif x > 0 then x = 0 end

		if y + mapHeight < maskHeight then
			y = maskHeight - mapHeight
		elseif y > 0 then y = 0 end

		map:SetPoint("TOPLEFT", mask, "TOPLEFT", x, y)

	end

	local function _fctProcessWayPoint () 

		if waypoint ~= nil then

			if cursorCoordX >= (waypoint.x - 5) and cursorCoordX <= (waypoint.x + 5) and cursorCoordY >= (waypoint.y -5 ) and cursorCoordY <= (waypoint.y +5) then
				waypoint = nil
				Command.Map.Waypoint.Clear()
				internal.MapEventWaypoint(_, {[LibEKL.Unit.GetPlayerDetails().id] = true})
			else
				Command.Map.Waypoint.Clear()
				Command.Map.Waypoint.Set (cursorCoordX, cursorCoordY)
				waypoint = {x = cursorCoordX, y = cursorCoordY}
			end
		else
			waypoint = {x = cursorCoordX, y = cursorCoordY}
			Command.Map.Waypoint.Set (cursorCoordX, cursorCoordY)
		end

	end

	---------- PUBLIC METHODS ----------

	function ui:ToggleMinMax(internal)

		if maximized == true then
			maximized = false
			iconMinMax:SetTextureAsync("LibMap", "gfx/icons/maximize.png")

			maximizedWidth = ui:GetWidth()
			maximizedHeight = ui:GetHeight()

			coordX, coordY = origCoordX, origCoordY

			ui:SetWidth(width)
			ui:SetHeight(height)
			ui:SetPoint("TOPLEFT", UIParent, "TOPLEFT", origX, origY)

		else
			maximized = true
			iconMinMax:SetTextureAsync("LibMap", "gfx/icons/minimize.png")

			width = ui:GetWidth()
			height = ui:GetHeight()

			origCoordX, origCoordY =  coordX, coordY
			origX, origY = ui:GetLeft(), ui:GetTop()

			ui:SetWidth(maximizedWidth)
			ui:SetHeight(maximizedHeight)
			ui:SetPoint("TOPLEFT", UIParent, "TOPLEFT", maximizedX, maximizedY)      			
		end

		maskHeight = mask:GetHeight()
		maskWidth = mask:GetWidth()

		_fctRedraw()

		if internal == true then LibMap.eventHandlers[name]["Toggled"]() end
	end

	function ui:SetMap(activeType, mapName)

		if activeMap == mapName then return end

		activeType = activeType
		activeMap = mapName

		mapInfo = LibMap.map.getMapData (mapName) 

		if mapInfo.width <= mapInfo.height then
			scaleStep = 1 / mapInfo.width * maskWidth
		else
			scaleStep = 1 / mapInfo.height * maskHeight
		end 

		if scale == nil then scale = scaleStep end

		local addon = mapInfo.addon
		if addon == nil then addon = "Rift" end
		map:SetTextureAsync(addon, mapInfo.path)

		x, y = nil, nil

		_fctRedraw()

	end

	function ui:SetZoom (newZoomLevel, thisMaximized)

		if newZoomLevel <= 0 or newZoomLevel > maxZoom then return end

		for idx = 0, maxZoom, scaleStep do
			if newZoomLevel < idx then
				if thisMaximized == true then
					maximizedScale = newZoomLevel - scaleStep
					if maximized == true then _fctRedraw () end
				else
					scale = newZoomLevel - scaleStep
					if maximized == false then _fctRedraw () end
				end

				return
			end
		end

	end

	function ui:SetCoord (newCoordX, newCoordY)

		if coordX == newCoordX and coordY == newCoordY then return end

		if newCoordX ~= nil then coordX = newCoordX end
		if newCoordY ~= nil then coordY = newCoordY end

		if coordX == nil then coordX = (mapInfo.x2 - mapInfo.x1) / 2 end
		if coordY == nil then coordY = (mapInfo.y2 - mapInfo.y1) / 2 end

		if coordX < mapInfo.x1 then coordX = mapInfo.x1 end
		if coordY < mapInfo.y1 then coordY = mapInfo.y1 end

		coordLabel:SetText(stringFormat("%d / %d", coordX, coordY))
		
		local pX = 1 / (mapInfo.x2 - mapInfo.x1) * (coordX - mapInfo.x1)
		local pY = 1 / (mapInfo.y2 - mapInfo.y1) * (coordY - mapInfo.y1)

		local newX = (maskWidth / 2) - (mapWidth * pX)
		local newY = (maskHeight / 2) - (mapHeight * pY)

		if smoothScroll == false then newX, newY = mathFloor(newX), mathFloor(newY) end

		if newX == x and newY == y then return end

		_fctPosition(newX, newY)

		--if x == mathFloor(newX) and y == mathFloor(newY) then return end -- only do computation of radius for significant x / y change

		local xPixel = (mapInfo.x2 - mapInfo.x1) / mapWidth
		local yPixel = (mapInfo.y2 - mapInfo.y1) / mapHeight
		
		coordsArea = {	x1 = mapInfo.x1 + ((mask:GetLeft() - map:GetLeft()) * xPixel),
						y1 = mapInfo.y1 + ((mask:GetTop() - map:GetTop()) * yPixel) }
		coordsArea.x2 = coordsArea.x1 + (maskWidth * xPixel)
		coordsArea.y2 = coordsArea.y1 + (maskHeight * xPixel)

		for id, element in pairs(elements) do

			local eleX, eleZ = element:GetCoord()

			if eleX ~= nil and eleZ ~= nil then

				local radius = 0
				if element.GetRadius and element:GetRadius() ~= nil then radius = element:GetRadius() / 2 end

				-- Check if the element's coordinates, considering its radius, are within the coordsArea
				if eleX + radius >= coordsArea.x1 and eleX - radius <= coordsArea.x2 and eleZ + radius >= coordsArea.y1 and eleZ - radius <= coordsArea.y2 then
					--if not element:GetDuplicate() then
						element:SetVisible(true)
					--else
					--	element:SetVisible(false)
					--end
				else
					element:SetVisible(false)
				end
			end

		end 

	end

	function ui:SetPointMaximized(x, y)
		maximizedX = x
		maximizedY = y
	end

	function ui:SetWidthMaximized(newWidth)
		maximizedWidth = newWidth
	end

	function ui:SetHeightMaximized(newHeight)
		maximizedHeight = newHeight
	end

	function ui:AddElement (newElement)

		-- der check auf duplicates funktioniert ist aber nicht ideal. Er versteckt nur statt überhaupt nicht zu bauen. Immerhin ...
		
		local debugId 
		if nkDebug then debugId = nkDebug.traceStart (inspectAddonCurrent(), "LibMap _uiMap:AddElement") end

		if nkDebug then nkDebug.logEntry (addonInfo.identifier, "ui:AddElement", newElement.title, newElement) end
				
		if mapData.mapElements[newElement.type] == nil then
			if nkDebug then print ("unknown map element type: " .. newElement.type) end 
			if nkDebug then nkDebug.traceEnd (inspectAddonCurrent(), "LibMap _uiMap:AddElement", debugId) end
			return 
		end

		local log = true

		if elements[newElement.id] ~= nil then 
			return 
		end

		local duplicate = false

		-- check if the exact same map identicator is found at exact the same position
		-- this happens for example if you can return more than one quests to the same quest giver

		local checkKey = tostring(newElement.coordX) .. tostring(newElement.coordY) .. tostring(newElement.coordZ) .. tostring(newElement.type)
		
		if checkIdentical[checkKey] ~= nil and #checkIdentical[checkKey] > 0 then
			table.insert(checkIdentical[checkKey], newElement.id)
			duplicate = true
		else
			checkIdentical[checkKey] = {}
		end

		if duplicate then
			if nkDebug then nkDebug.logEntry (addonInfo.identifier, "ui:AddElement", "     duplicate") end
			return
		end

		table.insert(checkIdentical[checkKey], newElement.id)

		local thisElement
		local mapInfo = mapData.mapElements[newElement.type]
		
		if mapInfo.anim ~= nil then
			if nkDebug then nkDebug.logEntry (addonInfo.identifier, "ui:AddElement", "     mapInfo.anim") end
			thisElement = LibMap.uiCreateFrame("nkMapElementCanvas", newElement.type .. "." .. LibMapUUID(), mask)
		elseif mapInfo.gfxType == nil or stringLower(mapInfo.gfxType) == 'texture' then
			if nkDebug then nkDebug.logEntry (addonInfo.identifier, "ui:AddElement", "     texture") end
			thisElement = LibMap.uiCreateFrame("nkMapElementTexture", newElement.type .. "." .. LibMapUUID(), mask)
			if mapInfo.layer ~= nil then thisElement:SetLayer(mapInfo.layer) end
		elseif stringLower(mapInfo.gfxType) == "canvas" then
			if nkDebug then nkDebug.logEntry (addonInfo.identifier, "ui:AddElement", "     canvas") end
			thisElement = LibMap.uiCreateFrame("nkMapElementCanvas", newElement.type .. "." .. LibMapUUID(), mask)
		end

		thisElement:SetId(newElement.id)
		--thisElement:SetDuplicate(duplicate)

		if thisElement.SetSmoothCoords ~= nil then
			thisElement:SetSmoothCoords(newElement.smoothCoords or false)
		end	

		local thisScale = scale
		if maximized == true then thisScale = maximizedScale end

		--if nkDebug and log then			 
		--	nkDebug.logEntry (addonInfo.identifier, "Scale", thisScale)
		--end

		thisElement:SetParentMap(ui)    

		if newElement.radius ~= nil then thisElement:SetRadius(newElement.radius) end
		thisElement:SetType(newElement.type)
		
		if newElement.type ~= "UNIT.PLAYER" then
			thisElement:SetToolTip(newElement.title, newElement.descList)
		end

		if newElement.angle ~= nil and thisElement.SetAngle ~= nil then thisElement:SetAngle(newElement.angle) end    

		--thisElement:SetZoom(thisScale, maximized)

		local thisY = newElement.coordY
		if newElement.coordZ ~= nil then thisY = newElement.coordZ end

		if (thisY == nil or newElement.coordX == nil) then
			if nkDebug then
				LibEKL.Tools.Error.Display ("LibMap", "map entry without coordinates", 2)
				nkDebug.logEntry (inspectAddonCurrent(), "_uiMap", "ui:AddElement error", "map entry without coordinates" .. newElement.id .. "\n\n" .. LibEKL.Tools.Table.Serialize(newElement))
			end
		else
			thisElement:SetZoom(thisScale, maximized)
			thisElement:SetCoord(newElement.coordX, thisY)
		end

		--if not duplicate then thisElement:SetVisible(true)  end
		thisElement:SetVisible(true)

		thisElement.title = newElement.title

		if newElement.clickCallBack ~= nil and thisElement.SetClickCallBack ~= nil then		
			thisElement:SetClickCallBack (newElement.clickCallBack)
		end

		elements[newElement.id] = thisElement

		if nkDebug then nkDebug.logEntry (addonInfo.identifier, "ui:AddElement", stringFormat("     added %s", newElement.id)) end

		if nkDebug then nkDebug.traceEnd (inspectAddonCurrent(), "LibMap _uiMap:AddElement", debugId) end

	end

	function ui:ChangeElement (updateElement)

		local debugId  
		if nkDebug then debugId = nkDebug.traceStart (inspectAddonCurrent(), "LibMap _uiMap:ChangeElement") end

		if nkDebug then 
			if elements[updateElement.id] == nil then 
				nkDebug.logEntry (inspectAddonCurrent(), "_uiMap", "ui:ChangeElement error", "unknown element with id " .. updateElement.id)				
			end
		end

		local thisElement = elements[updateElement.id]
		
		if thisElement == nil then 
			if nkDebug then nkDebug.traceEnd (inspectAddonCurrent(), "LibMap _uiMap:ChangeElement", debugId) end
			return false 
		end -- potential overlap in shard hopping

		local thisY = updateElement.coordY
		if updateElement.coordZ ~= nil then thisY = updateElement.coordZ end

		thisElement:SetCoord(updateElement.coordX, thisY)

		if updateElement.angle ~= nil and thisElement.SetAngle ~= nil then thisElement:SetAngle(updateElement.angle) end

		if nkDebug then nkDebug.traceEnd (inspectAddonCurrent(), "LibMap _uiMap:ChangeElement", debugId) end

		return true

	end

	function ui:RemoveAllElements()

		for key, _ in pairs(elements) do
			ui:RemoveElement(key)
		end

		checkIdentical = {}

	end

	function ui:RemoveElement(removeElement)

		if elements[removeElement] == nil then return end

		local debugId  
		if nkDebug then debugId = nkDebug.traceStart (inspectAddonCurrent(), "LibMap _uiMap:RemoveElement") end

		local thisElement = elements[removeElement]

		for id, details in pairs(checkIdentical) do
			if LibEKL.Tools.Table.IsMember(details, removeElement) then
				local pos = LibEKL.Tools.Table.GetTablePos (details, removeElement)
				table.remove(details, pos)
				checkIdentical[id] = details

				if thisElement:GetVisible() == true and #details > 0 then
					for k, v in pairs(details) do
						if elements[v] ~= nil then
							elements[v]:SetDuplicate(false)
							elements[v]:SetVisible(true)
							break
						end
					end
				end

				break
			end
		
		end

		if thisElement:GetTooltip() == true then tooltip:SetVisible(false) end

		thisElement:destroy()
		elements[removeElement] = nil

		if nkDebug then nkDebug.traceEnd (inspectAddonCurrent(), "LibMap _uiMap:RemoveElement", debugId) end

	end

	function ui:GetScale()
	
		if maximized == true then
			return maximizedScale, true
		else
			return scale, false
		end
		
	end

	function ui:UpdateMapInfo(newMapInfo)
	
		mapInfo = newMapInfo
		_fctRedraw()
		
	end

	function ui:SetAnimated(flag, speed)
	
		animated = flag
		animationSpeed = speed or 0

		for key, element in pairs(elements) do
			if element.SetAnimated ~= nil then element:SetAnimated(flag, animationSpeed) end 
		end

	end

	function ui:GetAnimated() return animated end
	function ui:GetMapInfo() return mapInfo end
	function ui:GetMap() return map end
	function ui:GetMapName() return activeMap end
	function ui:GetMask() return mask end
	function ui:GetTooltip() return tooltip end
	function ui:GetCoords() return coordX, coordY end
	function ui:GetElement(key) return elements[key] end
	function ui:SetSmoothScroll(flag) smoothScroll = flag end
	function ui:GetAnimationSpeed() return animationSpeed end
	function ui:ShowCoords(flag) coordLabel:SetVisible(flag) end
	function ui:SetAllowWayPoints(flag) allowWayPoints = flag end
	function ui:SetMaximizable(flag) iconMinMax:SetVisible(flag) end

	function ui:ShowHeader(flag)
		iconZoomIn:SetVisible(flag)
		iconZoomOut:SetVisible(flag)
		iconMinMax:SetVisible(flag)
		ui:DisplayHeader(flag)
	end

	---------- EVENTS ---------- 

	Command.Event.Attach(LibEKL.Events[name .. '.window'].Moved, function (_, newX, newY)
	
		if maximized == true then
			maximizedX, maximizedY = newX, newY
		else
			origX, origY = newX, newY
		end
		
		LibMap.eventHandlers[name]["Moved"](newX, newY, maximized)
		
	end, name .. '.window.Moved')

	Command.Event.Attach(LibEKL.Events[name .. '.window'].Resized, function (_, newWidth, newHeight)

		_fctRedraw()
		_fctPosition(x, y)

		if maximized == true then
			maximizedHeight = newHeight
			maximizedWidth = newWidth
		else
			width = newWidth
			height = newHeight
		end

		LibMap.eventHandlers[name]["Resized"](newWidth, newHeight, maximized)
		
	end, name .. '.window.Resized')

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Wheel.Back, function () _fctZoomOut() end, ui:GetName() .. ".Mouse.Wheel.Back")
	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Wheel.Forward, function () _fctZoomIn() end, ui:GetName() .. ".Mouse.Wheel.Forward")

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Left.Down.Bubble, function ()

		drag = true
		mouseData = inspectMouse()

	end, ui:GetName() .. ".Mouse.Left.Down.Bubble")

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Cursor.Out, function ()
		LibMap.eventHandlers[name]["MouseMoved"]("")
	end, ui:GetName() .. ".Cursor.Out")

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Cursor.Move.Bubble, function (self, _, posX, posY)

		if drag ~= true then
			_fctUpdateCoord(posX, posY) 
			--print ("hossa")
			LibMap.eventHandlers[name]["MouseMoved"](coordLabel:GetText())
			return 
		end

		local diffX, diffY = posX - mouseData.x, posY - mouseData.y

		local xP = 1 / mapWidth * mathAbs(diffX)
		local yP = 1 / mapHeight * mathAbs(diffY)

		if diffX < 0 then
			coordX = coordX + ((mapInfo.x2 - mapInfo.x1) * xP)
		else
			coordX = coordX - ((mapInfo.x2 - mapInfo.x1) * xP)       
		end

		if diffY < 0 then
			coordY = coordY + ((mapInfo.y2 - mapInfo.y1) * yP)
		else
			coordY = coordY - ((mapInfo.y2 - mapInfo.y1) * yP)       
		end

		ui:SetCoord ()
		mouseData = inspectMouse()		

	end, ui:GetName() .. ".Cursor.Move.Bubble")

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Left.Up.Bubble, function () drag = false end, ui:GetName() .. ".Mouse.Left.Up.Bubble")
	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Left.Upoutside, function () drag = false end, ui:GetName()  .. ".Mouse.left.Upoutside")

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Right.Down.Bubble, function ()
	
		if allowWayPoints == false then return end
		
		_fctProcessWayPoint()
		
	end, ui:GetName() .. ".Mouse.Right.Down.Bubble")  

	iconZoomIn:EventAttach(Event.UI.Input.Mouse.Left.Down, function () _fctZoomIn() end, iconZoomIn:GetName() .. ".iconZoomIn.Mouse.Left.Down")
	iconZoomOut:EventAttach(Event.UI.Input.Mouse.Left.Down, function () _fctZoomOut() end, iconZoomOut:GetName() .. ".iconZoomOut.Mouse.Left.Down")
	iconMinMax:EventAttach(Event.UI.Input.Mouse.Left.Down, function () ui:ToggleMinMax(true) end, iconMinMax:GetName() .. ".iconMinMax.Mouse.Left.Down")

	---------- EVENT HANDLERS ---------- 

	LibMap.eventHandlers[name]["Moved"], LibMap.events[name]["Moved"] = Utility.Event.Create(addonInfo.identifier, name .. "Moved")
	LibMap.eventHandlers[name]["MouseMoved"], LibMap.events[name]["MouseMoved"] = Utility.Event.Create(addonInfo.identifier, name .. "MouseMoved")
	LibMap.eventHandlers[name]["Resized"], LibMap.events[name]["Resized"] = Utility.Event.Create(addonInfo.identifier, name .. "Resized")
	LibMap.eventHandlers[name]["Zoomed"], LibMap.events[name]["Zoomed"] = Utility.Event.Create(addonInfo.identifier, name .. "Zoomed")
	LibMap.eventHandlers[name]["Toggled"], LibMap.events[name]["Toggled"] = Utility.Event.Create(addonInfo.identifier, name .. "Toggled")

	return ui
	
end

uiFunctions.NKMAP = _uiMap