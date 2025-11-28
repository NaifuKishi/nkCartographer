local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal
local mapData       = privateVars.mapData

local mathFloor     = math.floor
local mathAbs       = math.abs

---------- addon internal function block ---------

local function _uiMapElementTexture(name, parent)

  local thisMapData = nil
  local parentMap = nil
  local zoom = 1
  local tooltipTitle = nil
  local tooltipLines = nil
  local maxZoom = 4
  local waypoint = nil
  local effectName = nil
  local tooltip = false
  local elementType = nil
  local duplicate = false
  local visibleState = false
  local smoothCoords = false
  local clickCallBack = nil
  local thisId
  
  local coordX, coordY, zoom = 0, 0, nil

	--if EnKai.internal.checkEvents (name, true) == false then return nil end
	
  local mapElement = EnKai.uiCreateFrame("nkTexture", name .. ".texture", parent)
  mapElement:SetLayer(2)
  mapElement:SetVisible(false)
  
  function mapElement:SetClickCallBack(newCallBack)
  
	if clickCallBack ~= nil then
		mapElement:EventDetach(Event.UI.Input.Mouse.Left.Down, nil, name .. ".Mouse.Left.Down")
	end
	
	clickCallBack = newCallBack
	
	if newCallBack == nil then return end
	
	mapElement:EventAttach(Event.UI.Input.Mouse.Left.Down, function () clickCallBack(thisId) end, name .. ".Mouse.Left.Down")
	
  
  end
  
  function mapElement:SetParentMap(newParentMap) parentMap = newParentMap end

  function mapElement:SetType(newElementType)
    elementType = newElementType
  
    thisMapData = mapData.mapElements[elementType]
    local addon = "Rift"
    if thisMapData.addon ~= nil then addon = thisMapData.addon end
    mapElement:SetTextureAsync (addon, thisMapData.path)
    
    if thisMapData.layer ~= nil then mapElement:SetLayer(thisMapData.layer) end
        
  end
  
  function mapElement:SetToolTip(title, newDesc)
    if title == nil and newDesc == nil then return end
    
    local descStart
    
    if title ~= nil then    
      tooltipTitle = EnKai.strings.trim (title)
      if newDesc ~= nil then descStart = 1 end
    else 
      tooltipTitle, descStart = newDesc[1], 2
    end
    
    tooltipLines = {}
    
    if descStart ~= nil then
      for idx = descStart, #newDesc, 1 do
        table.insert (tooltipLines, { text = newDesc[idx], wordwrap = true, minWidth = 250 })
      end
    end
    
  end

  function mapElement:SetCoord(x, y)
  
	if x == coordX and y == coordY then return end
	
	-- print ('---- texture ' .. mapElement:GetName() .. ' sectcoord ----')
	-- print (x, y)

	if smoothCoords == false and x ~= nil and mathFloor(mathAbs(coordX - x)) < 1 and y ~= nil and mathFloor(mathAbs(coordY - y)) < 1 then return end
		    
	-- if x ~= nil then print (mapElement:GetName() .. "-x " .. mathFloor(mathAbs(coordX - x))) end
	-- if y ~= nil then print (mapElement:GetName() .. "-y " .. mathFloor(mathAbs(coordY - y))) end	
			
    if x ~= nil then coordX = x end
    if y ~= nil then coordY = y end
		
    if coordX == nil or coordY == nil then return end
	
    local mapInfo = parentMap:GetMapInfo()
    
    local xP = 1 / (mapInfo.x2 - mapInfo.x1) * (coordX - mapInfo.x1)
    local yP = 1 /  (mapInfo.y2 - mapInfo.y1) * (coordY - mapInfo.y1) 
    
    local thisX, thisY
    
    thisX = (parentMap:GetMap():GetWidth() * xP) - (mapElement:GetWidth() / 2)
    thisY = (parentMap:GetMap():GetHeight() * yP) - (mapElement:GetWidth() / 2)
    
    mapElement:SetPoint("TOPLEFT", parentMap:GetMap(), "TOPLEFT", thisX, thisY)
    
  end
  
  function mapElement:SetZoom(newZoom)
    
	if newZoom == zoom then return end
	
    local factor = thisMapData.factor or 1
    
    if thisMapData.minZoom ~= nil then 
      if thisMapData.minZoom > newZoom then     
        mapElement:SetHeight((thisMapData.width * factor) / thisMapData.minZoom * newZoom)
        mapElement:SetWidth((thisMapData.height * factor) / thisMapData.minZoom * newZoom) 
      else
        mapElement:SetHeight(thisMapData.width * factor)
        mapElement:SetWidth(thisMapData.height * factor)
      end
    else
      mapElement:SetHeight((thisMapData.width * factor) / maxZoom * newZoom)
      mapElement:SetWidth((thisMapData.height * factor) / maxZoom * newZoom)
    end

    zoom = newZoom
    
    if coordX ~= nil and coordY ~= nil then mapElement:SetCoord() end
    
  end

  function mapElement:GetId() return thisId end
  function mapElement:SetId(newId) thisId = newId end
  function mapElement:SetSmoothCoords (flag) smoothCoords = flag end
  function mapElement:GetCoord() return coordX, coordY end
  function mapElement:GetTooltip() return tooltip end
  
  function mapElement:SetDuplicate(flag) duplicate = flag end
  function mapElement:GetDuplicate() return duplicate end
  
  local oSetVisible = mapElement.SetVisible
  
  function mapElement:SetVisible(flag)
	if flag == visibleState then return end
	visibleState = flag
	oSetVisible(self, flag)
  end
  
  ----- EVENTS
  
  mapElement:EventAttach(Event.UI.Input.Mouse.Cursor.In, function ()
    if tooltipTitle == nil then return end
    parentMap:GetTooltip():SetTitle(tooltipTitle)
    parentMap:GetTooltip():SetLines(tooltipLines)
    parentMap:GetTooltip():ClearPoint("TOPRIGHT")
    parentMap:GetTooltip():SetPoint("TOPLEFT", mapElement, "CENTER", 10, 0)

    if parentMap:GetTooltip():GetLeft() + parentMap:GetTooltip():GetWidth() > parentMap:GetLeft() + parentMap:GetWidth() or
	   parentMap:GetTooltip():GetLeft() + parentMap:GetTooltip():GetWidth() > UIParent:GetLeft() + UIParent:GetWidth()
	then
      parentMap:GetTooltip():ClearPoint("TOPLEFT")
      parentMap:GetTooltip():SetPoint("TOPRIGHT", mapElement, "CENTER", -10, 0)
    end
    
    parentMap:GetTooltip():SetVisible(true)
    tooltip = true
  end, mapElement:GetName() .. ".Cursor.In")
  
  mapElement:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function ()
    parentMap:GetTooltip():SetVisible(false)
    tooltip = false
  end, mapElement:GetName() .. ".Cursor.Out")
  
  return mapElement
  
end

uiFunctions.NKMAPELEMENTTEXTURE = _uiMapElementTexture