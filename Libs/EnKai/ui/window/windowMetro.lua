local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal
local data       = privateVars.data
local oFuncs	  = privateVars.oFuncs

---------- addon internal function block ---------

local function _uiWindowMetro(name, parent)

  local window = EnKai.uiCreateFrame("nkCanvas", name, parent)  
  local shadowL, shadowR, shadowT, shadowB
  
  if window == nil then return nil end -- event check failed
  
  local body = EnKai.uiCreateFrame("nkFrame", name .. '.body', window)
  local header = EnKai.uiCreateFrame("nkFrame", name .. '.header', window)
  local title = EnKai.uiCreateFrame("nkText", name .. ".title", window)
  local closeIcon = EnKai.uiCreateFrame("nkTexture", name .. ".closeIcon", window)
   
  -- GARBAGE COLLECTOR ROUTINES
  
  function window:destroy()
    internal.uiAddToGarbageCollector ('nkCanvas', window)
    internal.uiAddToGarbageCollector ('nkFrame', body)
	internal.uiAddToGarbageCollector ('nkFrame', header)
    internal.uiAddToGarbageCollector ('nkText', title)
    internal.uiAddToGarbageCollector ('nkTexture', closeIcon)
	
	if shadowL ~= nil then
		internal.uiAddToGarbageCollector ('nkFrame', shadowL)
		internal.uiAddToGarbageCollector ('nkFrame', shadowR)
		internal.uiAddToGarbageCollector ('nkFrame', shadowT)
		internal.uiAddToGarbageCollector ('nkFrame', shadowB)
	end
	
  end 
  
  -- SPECIFIC FUNCTIONS
  
  local autoHide = false
  local dragable = true
  local closeable = true
  local collapseable = true
  local titleAlign = "left"
  local titleOffSet = 10
  local internalSetPoint = false
  local reverseAtBorder = true
  
  local windowFill = { type = "solid", r = EnKai.art.GetThemeColor('windowColor')[2].r, g  = EnKai.art.GetThemeColor('windowColor')[2].g, b = EnKai.art.GetThemeColor('windowColor')[2].b, a = EnKai.art.GetThemeColor('windowColor')[2].a} 
  local windowStroke =  { thickness = 1, r = EnKai.art.GetThemeColor('windowColor')[1].r, g  = EnKai.art.GetThemeColor('windowColor')[1].g, b = EnKai.art.GetThemeColor('windowColor')[1].b, a = EnKai.art.GetThemeColor('windowColor')[1].a}
  local headerColor = EnKai.art.GetThemeColor('windowColor')[3]
    
  window:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 200, 0)
  window:SetWidth(100)
  window:SetHeight(100)
  
  header:SetPoint("TOPLEFT", window, "TOPLEFT")
  header:SetPoint("TOPRIGHT", window, "TOPRIGHT", 0, 10)
  header:SetLayer(1)
  
  body:SetPoint("TOPLEFT", window, "TOPLEFT", 0, 30)
  body:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT")
  
  function window:SetShadow(flag)
  
	if flag == true then
	
		if shadowL == nil then
		
			shadowL = EnKai.uiCreateFrame("nkFrame", name .. '.shadowL', window)
			shadowR = EnKai.uiCreateFrame("nkFrame", name .. '.shadowR', window)
			shadowT = EnKai.uiCreateFrame("nkFrame", name .. '.shadowT', window)
			shadowB = EnKai.uiCreateFrame("nkFrame", name .. '.shadowB', window)
		
			shadowL:SetPoint("TOPLEFT", window, "TOPLEFT", -5, -5)
			shadowL:SetPoint("BOTTOMRIGHT", window, "BOTTOMLEFT", 0, 5)
			shadowL:SetBackgroundColor(0, 0, 0, .7)
			shadowL:SetLayer(-1)

			shadowR:SetPoint("TOPLEFT", window, "TOPRIGHT", 0, -5)
			shadowR:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", 5, 5)
			shadowR:SetBackgroundColor(0, 0, 0, .7)
			shadowR:SetLayer(-1)

			shadowT:SetPoint("TOPLEFT", window, "TOPLEFT", 0, -5)
			shadowT:SetPoint("BOTTOMRIGHT", window, "TOPRIGHT", 0, 0)
			shadowT:SetBackgroundColor(0, 0, 0, .7)
			shadowT:SetLayer(-1)

			shadowB:SetPoint("TOPLEFT", window, "BOTTOMLEFT", 0, 0)
			shadowB:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", 0, 5)
			shadowB:SetBackgroundColor(0, 0, 0, .7)
			shadowB:SetLayer(-1)		
		end
		
		shadowL:SetVisible(true)
		shadowR:SetVisible(true)
		shadowT:SetVisible(true)
		shadowB:SetVisible(true)
	
	else
		if shadowL ~= nil then
			shadowL:SetVisible(false)
			shadowR:SetVisible(false)
			shadowT:SetVisible(false)
			shadowB:SetVisible(false)
		end
	
	end
  
  
  end
  
  function window:Resize ()
  
    local xProp = 1 / window:GetWidth() * 5
    local yProp = 1 / window:GetHeight() * 5
    
    --print (xProp, yProp)
    
    local path = {  {xProportional = xProp, yProportional = 0},
                    {xProportional = (1-xProp), yProportional = 0},
                    {xProportional = 1, yProportional = yProp, xControlProportional = 1, yControlProportional = 0},
                    {xProportional = 1, yProportional =  1},
                    {xProportional = 0, yProportional = 1},
                    {xProportional = 0, yProportional = yProp},
                    {xProportional = xProp, yProportional = 0, xControlProportional = 0, yControlProportional = 0}
                 }  
      
    window:SetShape(path, windowFill, windowStroke)
    
  end
  
  window:Resize()
  
  function window:SetColor(stroke, fill)
    if stroke ~= nil then 
      windowStroke = stroke
      windowStroke.thickness = 1
    end
    if fill ~= nil then 
      windowFill = fill
      windowFill.type = 'solid' 
    end
    window:Resize()
  end
  
  function window:SetTitleFontColor(r, g, b, a)
    title:SetFontColor(r, g, b, a)
    headerColor = {r = r, g = g, b = b, a = a}
  end
  
  window:EventAttach(Event.UI.Input.Mouse.Left.Down, function (self)
    -- dummy event to prevent click through
  end, name .. ".Left.Down")
  
  window:EventAttach(Event.UI.Input.Mouse.Right.Down, function (self)
    -- dummy event to prevent click through
  end, name .. ".Right.Down")
  
  header:EventAttach(Event.UI.Input.Mouse.Left.Down, function (self)    
    if dragable == false then return end
    if window:GetSecureMode() == 'restricted' and oFuncs.oInspectSystemSecure() == true then return end
    
    self.leftDown = true
    local mouse = Inspect.Mouse()
    
    self.originalXDiff = mouse.x - self:GetLeft()
    self.originalYDiff = mouse.y - self:GetTop()
    
    local left, top, right, bottom = window:GetBounds()
    
    window:ClearPoint("TOPLEFT")
    window:SetPoint("TOPLEFT", UIParent, "TOPLEFT", left, top)
  end, name .. ".header.Left.Down")
  
  header:EventAttach( Event.UI.Input.Mouse.Cursor.Move, function (self, _, x, y)  
    if self.leftDown ~= true then return end
    
    local newX, newY = x - self.originalXDiff, y - self.originalYDiff
    
    if newX >= data.uiBoundLeft and newX <= data.uiBoundRight and newY + window:GetHeight() >= data.uiBoundTop and newY + window:GetHeight() <= data.uiBoundBottom then    
      window:SetPoint("TOPLEFT", UIParent, "TOPLEFT", newX, newY)
    end
  end, name .. ".header.Cursor.Move")
  
  header:EventAttach( Event.UI.Input.Mouse.Left.Up, function (self) 
    if self.leftDown ~= true then return end
      self.leftDown = false
    EnKai.eventHandlers[name]["Moved"](window:GetLeft(), window:GetTop())
  end, name .. ".header.Left.Up")
  
  header:EventAttach( Event.UI.Input.Mouse.Left.Upoutside, function (self)
    if self.leftDown ~= true then return end
    self.leftDown = false
    EnKai.eventHandlers[name]["Moved"](window:GetLeft(), window:GetTop())
  end , name .. ".header.Left.Upoutside")
  
  title:SetPoint("TOPLEFT", window, "TOPLEFT", 15, 15)
  title:SetFontColor(headerColor.a, headerColor.g, headerColor.b, headerColor.a)
  title:SetFontSize(14)
  
  closeIcon:SetPoint("TOPRIGHT", window, "TOPRIGHT", -10, 10)
  closeIcon:SetTextureAsync ("EnKai", "gfx/icons/small-cancel.png")
  closeIcon:SetHeight(12)
  closeIcon:SetWidth(12)
  closeIcon:SetLayer(2)
  
  closeIcon:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
    window:SetVisible(false)
    EnKai.eventHandlers[name]["Closed"]()
  end, name .. "-.closeIcon.Left.Click")
  
  local oSetVisible = window.SetVisible

	function window:SetVisible(flag)
		oSetVisible(self, flag)
		if flag == true then EnKai.eventHandlers[name]["Shown"]() end
	end
 
  function window:SetCloseable(flag)
    closeable = flag
    closeIcon:SetVisible(flag)
  end
  
  function window:GetContent() return body end
  
  function window:SetTitle(newTitle)
    title:ClearAll()
    title:SetText(newTitle)
    if title:GetWidth() > window:GetWidth() then title:SetWidth(window:GetWidth()) end
    
    if titleAlign == "center" then
      title:SetPoint("CENTERTOP", window, "CENTERTOP", titleOffSet, 5)
    elseif titleAlign == "left" then
      title:SetPoint("TOPLEFT", window, "TOPLEFT", titleOffSet, 5)
    else
      title:SetPoint("TOPRIGHT", window, "TOPRIGHT", titleOffSet, 5)
    end
  end
  
  function window:SetTitleAlign(newAlign, newOffSet)
    if newAlign == "center" or newAlign == "left" or newAlign == "right" then titleAlign = newAlign end
    if newOffSet ~= nil then titleOffSet = tonumber(newOffSet) end
    window:SetTitle(title:GetText())
  end

  function window:SetFontSize(newFontSize)
    title:SetFontSize(newFontSize)
    window:SetTitle(title:GetText())    
  end

  function window:SetDragable(flag) dragable = flag end  
  
	local oSetWidth, oSetHeight, oSetPoint = window.SetWidth, window.SetHeight, window.SetPoint
    
  function window:SetWidth(newWidth)
    oSetWidth(self, newWidth)
    window:SetTitle(title:GetText())
    window:Resize()
  end 
  
  function window:SetHeight(newHeight)
    oSetHeight(self, newHeight)
    window:Resize()
  end
  
  function window:SetPoint(from, object, to, x, y)
  
    local height, width = window:GetHeight(), window:GetWidth()
  
    window:ClearAll()

    window:SetWidth(width)
    window:SetHeight(height)
    
    if reverseAtBorder == false then
      if x ~= nil and y ~= nil then     
        oSetPoint(self, from, object, to, x, y)
      else
        oSetPoint(self, from, object, to)
      end
    else
      if x ~= nil then
        if x < 0 then x = 0 end
        if x + window:GetWidth() > UIParent:GetWidth() then x = UIParent:GetWidth() - window:GetWidth() end
      end
      
      if y ~= nil then
        if y < 0 then y = 0 end
      end
  
      if x ~= nil and y ~= nil then     
        oSetPoint(self, from, object, to, x, y)
      else
        oSetPoint(self, from, object, to)
      end
      
      if internalSetPoint == true then return end      
    end
    
  end 
  
  function window:SetWindowColor(r, g, b, a)
	 windowFill = { type = "solid", r = r, g = g, b = b, a = a} 
	 window:Resize()
  end
  
  EnKai.eventHandlers[name]["Moved"], EnKai.events[name]["Moved"] = Utility.Event.Create(addonInfo.identifier, name .. "Moved") 
  EnKai.eventHandlers[name]["Closed"], EnKai.events[name]["Closed"] = Utility.Event.Create(addonInfo.identifier, name .. "Closed")
  EnKai.eventHandlers[name]["Dragable"], EnKai.events[name]["Dragable"] = Utility.Event.Create(addonInfo.identifier, name .. "Dragable")
  EnKai.eventHandlers[name]["Shown"], EnKai.events[name]["Shown"] = Utility.Event.Create(addonInfo.identifier, name .. "Shown")
    
  return window
end

uiFunctions.NKWINDOWMETRO = _uiWindowMetro