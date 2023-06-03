local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal
local data          = privateVars.data
local mapData       = privateVars.mapData
local oFuncs	  	= privateVars.oFuncs

---------- addon internal function block ---------

local function _uiMap(name, parent)

	if EnKai.internal.checkEvents (name, true) == false then return nil end 

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
	local maxZoom = 4
	local cursorX, cursorY
	local coordsArea = {}
	local waypoint = nil
	local cursorCoordX, cursorCoordY
	local animated = true
	local smoothScroll = true  
	local animationSpeed = 0
	local allowWayPoints = true

	---------- UI ELEMENTS ----------

	local ui = EnKai.uiCreateFrame("nkWindowElement", name .. ".window", parent)
	ui:SetWidth(425)
	ui:SetHeight(370)
	ui:SetDragable(true)
	ui:SetCloseable(false)
	ui:SetFontSize(12)

	local iconZoomIn = EnKai.uiCreateFrame("nkTexture", name ..".iconZoomIn", ui:GetHeader())
	iconZoomIn:SetTextureAsync("EnKai", "gfx/icons/zoomIn.png")
	iconZoomIn:SetPoint("CENTERRIGHT", ui:GetHeader(), "CENTERRIGHT", -5, 0)
	iconZoomIn:SetHeight(16)
	iconZoomIn:SetWidth(16)

	local iconZoomOut = EnKai.uiCreateFrame("nkTexture", name ..".iconZoomOut", ui:GetHeader())
	iconZoomOut:SetTextureAsync("EnKai", "gfx/icons/zoomOut.png")
	iconZoomOut:SetPoint("CENTERRIGHT", iconZoomIn, "CENTERLEFT", -2, 0)
	iconZoomOut:SetHeight(16)
	iconZoomOut:SetWidth(16)

	local iconMinMax = EnKai.uiCreateFrame("nkTexture", name ..".iconMinMax", ui:GetHeader())
	iconMinMax:SetTextureAsync("EnKai", "gfx/icons/maximize.png")
	iconMinMax:SetPoint("CENTERRIGHT", iconZoomOut, "CENTERLEFT", -2, 0)
	iconMinMax:SetHeight(16)
	iconMinMax:SetWidth(16)

	local coordLabel = EnKai.uiCreateFrame("nkText", name .. ".coordLabel", ui:GetHeader())
	coordLabel:SetFontSize(12)
	coordLabel:SetFontColor(1, 1, 1, 1)
	coordLabel:SetPoint("CENTER", ui:GetHeader(), "CENTER") 

	local mask = UI.CreateFrame('Mask', name .. ".mask", ui:GetContent())
	mask:SetPoint("TOPLEFT", ui:GetContent(), "TOPLEFT")
	mask:SetPoint("BOTTOMRIGHT", ui:GetContent(), "BOTTOMRIGHT")
	
	-- local temp = EnKai.uiCreateFrame('nkFrame', name .. ".temp", ui:GetContent())
	-- temp:SetPoint("TOPLEFT", ui:GetContent(), "TOPLEFT")
	-- temp:SetPoint("BOTTOMRIGHT", ui:GetContent(), "BOTTOMRIGHT")
	-- temp:SetBackgroundColor(1,1,1,1)

	local map = EnKai.uiCreateFrame("nkTexture", name .. ".map", mask)
	map:SetLayer(1)

	local tooltip = EnKai.uiCreateFrame("nkTooltip", name .. ".tooltip", ui)
	tooltip:SetVisible(false)
	tooltip:SetLayer(999)

	---------- LOCAL METHODS ----------

	local function _fctRedraw ()

		local debugId  
		if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:Redraw") end    

		local thisScale = scale
		if maximized == true then thisScale = maximizedScale end
		local beforeScale = thisScale

		if mapInfo.width * thisScale < mask:GetWidth() or mapInfo.height * thisScale < mask:GetHeight() then

			local xScale, yScale = 0, 0

			xScale = 1 / mapInfo.width * mask:GetWidth()
			yScale = 1 / mapInfo.height * mask:GetHeight()

			if xScale > yScale then
				thisScale = xScale
			else
				thisScale = yScale
			end

		end

		map:SetWidth(mapInfo.width * thisScale)
		map:SetHeight(mapInfo.height * thisScale)

		if x == nil and y == nil then	
			ui:SetCoord((mapInfo.x2 - mapInfo.x1)/2, (mapInfo.y2 - mapInfo.y1)/2)
		else
			ui:SetCoord()
		end

		for key, thisElement in pairs (elements) do
			thisElement:SetZoom(thisScale)
			thisElement:SetCoord()
		end

		if beforeScale ~= thisScale then
			if maximized == true then maximizedScale = thisScale else scale = thisScale end
				EnKai.eventHandlers[name]["Zoomed"](thisScale, maximized)
			end

			if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:Redraw", debugId) end

		end

	local function _fctZoomOut()

		if map:GetWidth() >= mask:GetWidth() and map:GetHeight() >= mask:GetHeight() then

			local debugId  
			if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:ZoomOut") end

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
				EnKai.eventHandlers[name]["Zoomed"](thisScale, maximized)
			end 

			if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:ZoomOut", debugId) end     
		end
	end

	local function _fctZoomIn()

		local debugId
		if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:ZoomIn") end

		local thisScale = scale
		if maximized == true then thisScale = maximizedScale end

		if thisScale < maxZoom then
			if maximized == true then 
				maximizedScale = maximizedScale + scaleStep
			else
				scale = scale + scaleStep
			end    

			_fctRedraw()
			EnKai.eventHandlers[name]["Zoomed"](thisScale, maximized)
		end

		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:ZoomIn", debugId) end

	end

	local function _fctUpdateCoord(cursorX, cursorY)

		local diffX = mask:GetLeft() - map:GetLeft() + (cursorX - mask:GetLeft())
		local diffY = mask:GetTop() - map:GetTop() + (cursorY - mask:GetTop())

		local xP = 1 / map:GetWidth() * diffX
		local yP = 1 / map:GetHeight() * diffY

		cursorCoordX = math.floor(((mapInfo.x2 - mapInfo.x1) * xP) + mapInfo.x1)
		cursorCoordY = math.floor(((mapInfo.y2 - mapInfo.y1) * yP) + mapInfo.y1) 

		coordLabel:SetText(string.format("%d / %d", cursorCoordX, cursorCoordY))

	end

	local function _fctPosition(newX, newY)

		if x == newX and y == newY then return end

		x, y = newX, newY
		
		if x + map:GetWidth() < mask:GetWidth() then
			x = mask:GetWidth() - map:GetWidth()
		elseif x > 0 then x = 0 end

		if y + map:GetHeight() < mask:GetHeight() then
			y = mask:GetHeight() - map:GetHeight()
		elseif y > 0 then y = 0 end

		map:SetPoint("TOPLEFT", mask, "TOPLEFT", x, y)

	end

	local function _fctProcessWayPoint () 

		if waypoint ~= nil then

			if cursorCoordX >= (waypoint.x - 5) and cursorCoordX <= (waypoint.x + 5) and cursorCoordY >= (waypoint.y -5 ) and cursorCoordY <= (waypoint.y +5) then
				waypoint = nil
				Command.Map.Waypoint.Clear()
				internal.MapEventWaypoint(_, {[EnKai.unit.getPlayerDetails().id] = true})
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
			iconMinMax:SetTextureAsync("EnKai", "gfx/icons/maximize.png")

			maximizedWidth = ui:GetWidth()
			maximizedHeight = ui:GetHeight()

			coordX, coordY = origCoordX, origCoordY

			ui:SetWidth(width)
			ui:SetHeight(height)
			ui:SetPoint("TOPLEFT", UIParent, "TOPLEFT", origX, origY)
		else
			maximized = true
			iconMinMax:SetTextureAsync("EnKai", "gfx/icons/minimize.png")

			width = ui:GetWidth()
			height = ui:GetHeight()

			origCoordX, origCoordY =  coordX, coordY
			origX, origY = ui:GetLeft(), ui:GetTop()

			ui:SetWidth(maximizedWidth)
			ui:SetHeight(maximizedHeight)
			ui:SetPoint("TOPLEFT", UIParent, "TOPLEFT", maximizedX, maximizedY)      
		end

		_fctRedraw()

		if internal == true then EnKai.eventHandlers[name]["Toggled"]() end
	end

	function ui:SetMap(activeType, mapName)

		if activeMap == mapName then return end

		activeType = activeType
		activeMap = mapName

		mapInfo = EnKai.map.getMapData (mapName) 

		if mapInfo.width <= mapInfo.height then
			scaleStep = 1 / mapInfo.width * mask:GetWidth()
		else
			scaleStep = 1 / mapInfo.height * mask:GetHeight()
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

		coordLabel:SetText(string.format("%d / %d", coordX, coordY))
		
		local pX = 1 / (mapInfo.x2 - mapInfo.x1) * (coordX - mapInfo.x1)
		local pY = 1 / (mapInfo.y2 - mapInfo.y1) * (coordY - mapInfo.y1)

		local newX = (mask:GetWidth() / 2) - (map:GetWidth() * pX)
		local newY = (mask:GetHeight() / 2) - (map:GetHeight() * pY)

		if smoothScroll == false then newX, newY = math.floor(newX), math.floor(newY) end

		if newX == x and newY == y then return end

		_fctPosition(newX, newY)

		if x == math.floor(newX) and y == math.floor(newY) then return end -- only do computation of radius for significant x / y change

		--print (mask:GetLeft(), map:GetLeft())
		
		local xPixel = (mapInfo.x2 - mapInfo.x1) / map:GetWidth()
		local yPixel = (mapInfo.y2 - mapInfo.y1) / map:GetHeight()
		
		coordsArea = {	x1 = mapInfo.x1 + ((mask:GetLeft() - map:GetLeft()) * xPixel),
						y1 = mapInfo.y1 + ((mask:GetTop() - map:GetTop()) * yPixel) }
		coordsArea.x2 = coordsArea.x1 + (mask:GetWidth() * xPixel)
		coordsArea.y2 = coordsArea.y1 + (mask:GetHeight() * xPixel)
		
		-- local xP1 = 1 / map:GetWidth() * (mask:GetLeft() - map:GetLeft())
		-- local yP1 = 1 / map:GetHeight() * (mask:GetTop() - map:GetTop())

		-- local xP2 = 1 / map:GetWidth() * (mask:GetLeft() - map:GetLeft() + mask:GetWidth())
		-- local yP2 = 1 / map:GetHeight() * (mask:GetTop() - map:GetTop() + mask:GetHeight())

		-- coordsArea = {	x1 = ((mapInfo.x2 - mapInfo.x1) * xP1) + mapInfo.x1,
						-- x2 = ((mapInfo.x2 - mapInfo.x1) * xP2) + mapInfo.x1,
						-- y1 = ((mapInfo.y2 - mapInfo.y1) * yP1) + mapInfo.y1, 
						-- y2 = ((mapInfo.y2 - mapInfo.y1) * yP2) + mapInfo.y1}

		for id, element in pairs(elements) do

			local eleX, eleZ = element:GetCoord()

			if eleX ~= nil and eleZ ~= nil then

				local radius = 0
				if element.GetRadius and element:GetRadius() ~= nil then radius = element:GetRadius() / 2 end

				if (eleX + radius) < coordsArea.x1 or (eleX - radius) > coordsArea.x2 or ( eleZ + radius) < coordsArea.y1 or ( eleZ - radius) > coordsArea.y2 then
					--print (element:GetId())
					element:SetVisible(false)
				--elseif element:GetWidth() <= 10 and element:GetHeight() <= 10 then
					--print (element:GetId())
					--element:SetVisible(false)
				elseif not element:GetDuplicate() then
					element:SetVisible(true)
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
		if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:AddElement") end

		if mapData.mapElements[newElement.type] == nil then
			if nkDebug then print ("unknown map element type: " .. newElement.type) end 
			if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:AddElement", debugId) end
			return 
		end

		if elements[newElement.id] ~= nil then return end

		local duplicate = false

		local checkKey = tostring(newElement.coordX) .. tostring(newElement.coordY) .. tostring(newElement.coordZ) .. tostring(newElement.type)
		--print ('add', newElement.id)
		
		if checkIdentical[checkKey] ~= nil and #checkIdentical[checkKey] > 0 then
			--if nkDebug then print ('duplicate', checkKey) end
			table.insert(checkIdentical[checkKey], newElement.id)
			duplicate = true
		else
			checkIdentical[checkKey] = {}
		end

		table.insert(checkIdentical[checkKey], newElement.id)

		local thisElement
		local mapInfo = mapData.mapElements[newElement.type]

		if mapInfo.anim ~= nil then
			thisElement = EnKai.uiCreateFrame("nkMapElementCanvas", newElement.type .. "." .. EnKai.tools.uuid(), mask)
		elseif mapInfo.gfxType == nil or string.lower(mapInfo.gfxType) == 'texture' then
			thisElement = EnKai.uiCreateFrame("nkMapElementTexture", newElement.type .. "." .. EnKai.tools.uuid(), mask)
		elseif string.lower(mapInfo.gfxType) == "canvas" then
			thisElement = EnKai.uiCreateFrame("nkMapElementCanvas", newElement.type .. "." .. EnKai.tools.uuid(), mask)
		end

		thisElement:SetId(newElement.id)
		thisElement:SetDuplicate(duplicate)

		if thisElement.SetSmoothCoords ~= nil then
			thisElement:SetSmoothCoords(newElement.smoothCoords or false)
		end	

		local thisScale = scale
		if maximized == true then thisScale = maximizedScale end

		thisElement:SetParentMap(ui)    

		if newElement.radius ~= nil then thisElement:SetRadius(newElement.radius) end
		thisElement:SetType(newElement.type)

		thisElement:SetToolTip(newElement.title, newElement.descList)

		if newElement.angle ~= nil and thisElement.SetAngle ~= nil then thisElement:SetAngle(newElement.angle) end    

		thisElement:SetZoom(thisScale, maximized)

		local thisY = newElement.coordY
		if newElement.coordZ ~= nil then thisY = newElement.coordZ end

		if (thisY == nil or newElement.coordX == nil) then
			if nkDebug then
				EnKai.tools.error.display ("EnKai", "map entry without coordinates", 2)
				nkDebug.logEntry (oFuncs.oInspectAddonCurrent(), "_uiMap", "ui:AddElement error", "map entry without coordinates" .. newElement.id .. "\n\n" .. EnKai.tools.table.serialize(newElement))
				--dump (newElement)
			end
		else
			thisElement:SetZoom(thisScale, maximized)
			thisElement:SetCoord(newElement.coordX, thisY)
		end

		if not duplicate then thisElement:SetVisible(true) end

		if newElement.clickCallBack ~= nil and thisElement.SetClickCallBack ~= nil then		
			thisElement:SetClickCallBack (newElement.clickCallBack)
		end

		elements[newElement.id] = thisElement

		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:AddElement", debugId) end

	end

	function ui:ChangeElement (updateElement)

		local debugId  
		if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:ChangeElement") end

		if nkDebug then 
			if elements[updateElement.id] == nil then 
				nkDebug.logEntry (oFuncs.oInspectAddonCurrent(), "_uiMap", "ui:ChangeElement error", "unknown element with id " .. updateElement.id)				
				--print ("unknown element with id " .. updateElement.id) 
			end
		end

		local thisElement = elements[updateElement.id]
		
		if thisElement == nil then 
			if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:ChangeElement", debugId) end
			return false 
		end -- potential overlap in shard hopping

		local thisY = updateElement.coordY
		if updateElement.coordZ ~= nil then thisY = updateElement.coordZ end

		thisElement:SetCoord(updateElement.coordX, thisY)

		if updateElement.angle ~= nil and thisElement.SetAngle ~= nil then thisElement:SetAngle(updateElement.angle) end

		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:ChangeElement", debugId) end

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
		if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:RemoveElement") end

		--print ('remove', removeElement)
		
		local thisElement = elements[removeElement]

		for id, details in pairs(checkIdentical) do
			if EnKai.tools.table.isMember(details, removeElement) then
				local pos = EnKai.tools.table.getTablePos (details, removeElement)
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

		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai _uiMap:RemoveElement", debugId) end

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

	---------- EVENTS ---------- 

	Command.Event.Attach(EnKai.events[name .. '.window'].Moved, function (_, newX, newY)
	
		if maximized == true then
			maximizedX, maximizedY = newX, newY
		else
			origX, origY = newX, newY
		end
		
		EnKai.eventHandlers[name]["Moved"](newX, newY, maximized)
		
	end, name .. '.window.Moved')

	Command.Event.Attach(EnKai.events[name .. '.window'].Resized, function (_, newWidth, newHeight)

		_fctRedraw()
		_fctPosition(x, y)

		if maximized == true then
			maximizedHeight = newHeight
			maximizedWidth = newWidth
		else
			width = newWidth
			height = newHeight
		end

		EnKai.eventHandlers[name]["Resized"](newWidth, newHeight, maximized)
		
	end, name .. '.window.Resized')

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Wheel.Back, function () _fctZoomOut() end, ui:GetName() .. ".Mouse.Wheel.Back")
	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Wheel.Forward, function () _fctZoomIn() end, ui:GetName() .. ".Mouse.Wheel.Forward")

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Left.Down.Bubble, function ()

		drag = true
		mouseData = Inspect.Mouse()

	end, ui:GetName() .. ".Mouse.Left.Down.Bubble")

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Cursor.Move.Bubble, function (self, _, posX, posY)

		if drag ~= true then
			_fctUpdateCoord(posX, posY) 
			return 
		end

		local diffX, diffY = posX - mouseData.x, posY - mouseData.y

		local xP = 1 / map:GetWidth() * math.abs(diffX)
		local yP = 1 / map:GetHeight() * math.abs(diffY)

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
		mouseData = Inspect.Mouse()

	end, ui:GetName() .. ".Cursor.Move.Bubble")

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Left.Up.Bubble, function () drag = false end, ui:GetName() .. ".Mouse.Left.Up.Bubble")
	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Left.Upoutside, function () drag = false end, ui:GetName()  .. ".Mouse.left.Upoutside")

	ui:GetContent():EventAttach(Event.UI.Input.Mouse.Right.Down.Bubble, function ()
	
		--if nkDebug then print ("Right.Down.Bubble", allowWayPoints) end
		if allowWayPoints == false then return end
		
		_fctProcessWayPoint()
		
	end, ui:GetName() .. ".Mouse.Right.Down.Bubble")  

	iconZoomIn:EventAttach(Event.UI.Input.Mouse.Left.Down, function () _fctZoomIn() end, iconZoomIn:GetName() .. ".iconZoomIn.Mouse.Left.Down")
	iconZoomOut:EventAttach(Event.UI.Input.Mouse.Left.Down, function () _fctZoomOut() end, iconZoomOut:GetName() .. ".iconZoomOut.Mouse.Left.Down")
	iconMinMax:EventAttach(Event.UI.Input.Mouse.Left.Down, function () ui:ToggleMinMax(true) end, iconMinMax:GetName() .. ".iconMinMax.Mouse.Left.Down")

	---------- EVENT HANDLERS ---------- 

	EnKai.eventHandlers[name]["Moved"], EnKai.events[name]["Moved"] = Utility.Event.Create(addonInfo.identifier, name .. "Moved")
	EnKai.eventHandlers[name]["Resized"], EnKai.events[name]["Resized"] = Utility.Event.Create(addonInfo.identifier, name .. "Resized")
	EnKai.eventHandlers[name]["Zoomed"], EnKai.events[name]["Zoomed"] = Utility.Event.Create(addonInfo.identifier, name .. "Zoomed")
	EnKai.eventHandlers[name]["Toggled"], EnKai.events[name]["Toggled"] = Utility.Event.Create(addonInfo.identifier, name .. "Toggled")

	return ui
	
end

uiFunctions.NKMAP = _uiMap