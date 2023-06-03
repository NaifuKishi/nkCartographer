local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal
local data       = privateVars.data
local oFuncs	  = privateVars.oFuncs

---------- addon internal function block ---------

local function _uiWindowElement(name, parent)

  --if EnKai.internal.checkEvents (name, true) == false then return nil end

  local window = EnKai.uiCreateFrame ('nkFrame', name, parent)
  local body = EnKai.uiCreateFrame ('nkFrame', name .. '.body', window)
  local header = EnKai.uiCreateFrame ('nkFrame', name .. ".header", window)
  local title = EnKai.uiCreateFrame ('nkText', name .. ".title", header)
  local closeIcon = EnKai.uiCreateFrame ('nkTexture', name .. ".closeIcon", header)
  local arrow = EnKai.uiCreateFrame ('nkTexture', name .. ".arrow", header)
  local moveCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. ".moveCheckbox", header)
    
  local autoHide = false
  local autoHideHeader = false
  local autoHideHeaderDuration = 10
  local autoHideHeaderDelay = 10
  local dragable = true
  local closeable = true
  local collapseable = true
  local titleAlign = "center"
  local titleOffSet = 0
  local internalSetPoint = false
  local reverseAtBorder = true
  local resizable = false
      
  window:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 200, 0)
  window:SetWidth(100)
  window:SetHeight(100)
  
  header:SetPoint("TOPLEFT", window, "TOPLEFT")
  header:SetPoint("TOPRIGHT", window, "TOPRIGHT")
  header:SetHeight(20)
  header:SetBackgroundColor(0, 0, 0, 1)
  header:SetLayer(2)
  
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
      window:ProcessMove()         
      EnKai.eventHandlers[name]["Moved"](window:GetLeft(), window:GetTop())
  end, name .. ".header.Left.Up")
  
  header:EventAttach( Event.UI.Input.Mouse.Left.Upoutside, function (self)
    if self.leftDown ~= true then return end
    self.leftDown = false
    window:ProcessMove()
    EnKai.eventHandlers[name]["Moved"](window:GetLeft(), window:GetTop())
  end , name .. ".header.Left.Upoutside")
  
  header:EventAttach(Event.UI.Input.Mouse.Cursor.In, function (self)    
    header:SetAlpha(1)    
    if autoHideHeader == true then EnKai.fx.pauseEffect (name .. '.autoHideHeader' ) end
    if autoHide == true then EnKai.fx.pauseEffect (name .. '.autohide' ) end          
    if collapseable ~= true then window:ShowContent(true) end 
    EnKai.eventHandlers[name]["HeaderShown"]()
  end, name .. ".header.Mouse.Cursor.In")

  header:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function (self)
    if autoHideHeader == true then EnKai.fx.updateTime (name .. '.autoHideHeader' ) end
    if autoHide == true then EnKai.fx.updateTime (name .. '.autohide' ) end
  end, name .. ".body.Mouse.Cursor.Out")

  title:SetPoint("CENTER", header, "CENTER")
  title:SetFontColor(0.925, 0.894, 0.741, 1)
  title:SetFontSize(16)
  
  closeIcon:SetPoint("CENTERRIGHT", header, "CENTERRIGHT", -10, 0)
  closeIcon:SetTextureAsync ("EnKai", "gfx/icons/small-cancel.png")
  closeIcon:SetHeight(12)
  closeIcon:SetWidth(12)
  
  closeIcon:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
    window:SetVisible(false)
    EnKai.eventHandlers[name]["Closed"]()
  end, name .. "-.closeIcon.Left.Click")
  
  arrow:SetVisible(false) 
  arrow:SetWidth(14)
  arrow:SetHeight(14)
  arrow:SetPoint("CENTERLEFT", header, "CENTERLEFT", 5, 0)
  arrow:SetTextureAsync("EnKai", "gfx/windowModernArrowRight.png")
  
  arrow:EventAttach( Event.UI.Input.Mouse.Left.Down, function (self, _, x, y)
  
    window:ToggleCollapse()
    
  end, name .. ".arrow.Mouse.Left.Down")
  
  moveCheckbox:SetVisible(false)
  moveCheckbox:SetBoxWidth(10)
  moveCheckbox:SetBoxHeight(10)
  moveCheckbox:SetWidth(10) 
  moveCheckbox:SetPoint("CENTERLEFT", arrow, "CENTERRIGHT", 10, 0)
  moveCheckbox:SetChecked(false)
  --moveCheckbox:SetColor(0.925, 0.894, 0.741, 1)
  
  Command.Event.Attach(EnKai.events[name .. '.moveCheckbox'].CheckboxChanged, function (_, newValue)
     dragable = newValue
     EnKai.eventHandlers[name]["Dragable"](newValue)
  end, name .. '.moveCheckbox.CheckboxChanged')
      
  body:SetBackgroundColor(0, 0, 0, .5)
  body:SetPoint("TOPLEFT", window, "TOPLEFT", 0, 20)
  body:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT")
  body:SetLayer(1)
  
  local resizeIcon = EnKai.uiCreateFrame ('nkTexture', name .. '.resizeIcon', body)
  resizeIcon:SetPoint("BOTTOMRIGHT", body, "BOTTOMRIGHT")
  resizeIcon:SetTextureAsync("EnKai", "gfx/icons/small-resize.png")
  resizeIcon:SetWidth(20)
  resizeIcon:SetHeight(20)
  resizeIcon:SetAlpha(0)
  resizeIcon:SetLayer(2)
  
  resizeIcon:EventAttach(Event.UI.Input.Mouse.Cursor.In, function (self) if resizable == true then resizeIcon:SetAlpha(1) end end, name .. ".resizeIcon.Mouse.Cursor.In")
  resizeIcon:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function (self) if resizable == true then resizeIcon:SetAlpha(0) end end, name .. ".resizeIcon.Mouse.Cursor.Out")
  
  resizeIcon:EventAttach(Event.UI.Input.Mouse.Left.Down, function (self)
  
    if resizable == false then return end
  
    self.leftDown = true    
    
    local mouse = Inspect.Mouse()
    
    self.origX = mouse.x
    self.origY = mouse.y
    self.origWidth = window:GetWidth()
    self.origHeight= window:GetHeight() 
  end, name .. ".resizeIcon.Mouse.Left.Down")
  
  resizeIcon:EventAttach(Event.UI.Input.Mouse.Cursor.Move, function (self, _, x, y) 
    
    if self.leftDown ~= true then return end
    
    local mouse = Inspect.Mouse()
    
    local newHeight = self.origHeight + (mouse.y - self.origY)
    if newHeight < 100 then newHeight = 100 end
    
    local newWidth = self.origWidth + (mouse.x - self.origX)
    if newWidth < 100 then newWidth = 100 end
    
    window:SetHeight(newHeight)
    window:SetWidth(newWidth)
    
  end, name .. ".header.Cursor.Move")
  
  resizeIcon:EventAttach(Event.UI.Input.Mouse.Left.Up, function (self)
    if self.leftDown ~= true then return end 
    self.leftDown = false
    EnKai.eventHandlers[name]["Resized"](window:GetWidth(), window:GetHeight()) 
  end, name .. ".resizeIcon.Mouse.Left.Up")
  
  resizeIcon:EventAttach(Event.UI.Input.Mouse.Left.Upoutside, function (self)
    if self.leftDown ~= true then return end 
    self.leftDown = false
    EnKai.eventHandlers[name]["Resized"](window:GetWidth(), window:GetHeight())
  end, name .. ".resizeIcon.Mouse.Left.UpOutside")
  
  function window:SetResizable(flag)
    resizable = flag
  end

  function window:ProcessMove()
    if reverseAtBorder == true and window:GetTop() + window:GetHeight() >= UIParent:GetHeight() then
      body:SetPoint("TOPLEFT", window, "TOPLEFT")
      body:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", 0, -20)
      header:ClearPoint("TOPLEFT")
      header:ClearPoint("TOPRIGHT")
      header:SetPoint("BOTTOMLEFT", window, "BOTTOMLEFT")
      header:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT")
      internalSetPoint = true
      window:SetPoint("TOPLEFT", UIParent, "TOPLEFT", window:GetLeft(), UIParent:GetHeight()-window:GetHeight())
      internalSetPoint = false
      
    else
      body:SetPoint("TOPLEFT", window, "TOPLEFT", 0, 20)
      body:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT")
      header:ClearPoint("BOTTOMLEFT")
      header:ClearPoint("BOTTOMRIGHT")
      header:SetPoint("TOPLEFT", window, "TOPLEFT")
      header:SetPoint("TOPRIGHT", window, "TOPRIGHT")
      if window:GetTop() < 0 then
        internalSetPoint = true 
        window:SetPoint("TOPLEFT", UIParent, "TOPLEFT", window:GetLeft(), 0)
        internalSetPoint = false 
      end
    end
  end
  
  function window:ShowMoveToggle(flag)
    moveCheckbox:SetVisible(flag)
  end
  
  function window:ShowAutoHideToggle(flag)
    arrow:SetVisible(flag)
  end

  function window:SetAutoHide(flag, duration)
    
    if duration == nil then duration = 5 end
    
    if flag == true then
      if autoHide == false then EnKai.fx.register (name .. '.autohide', body, { id = 'timedhide', duration = duration, callback = function() window:Collapse(true) end  } ) end
    else
      if autoHide == true then EnKai.fx.cancel (name .. '.autohide' ) end
    end
    
    autoHide = flag
  end
  
  function window:SetAutoHideHeader(flag, duration, delay)
  
    autoHideHeaderDelay = delay
    autoHideHeaderDuration = duration
    if autoHideHeaderDuration == nil then autoHideHeaderDuration = 5 end
      
    if flag == true then
      window:SetAutoHide(flag, delay-1)
      EnKai.fx.register (name .. '.autoHideHeader', header, { id = 'alpha', delay = delay, startAlpha=1, endAlpha=.2, duration = duration, modifier = -1, 
                                                              initCallback = function() EnKai.eventHandlers[name]["HeaderHide"]() end,
                                                              callback = function() EnKai.eventHandlers[name]["HeaderHidden"]() end  } )
    else
      window:SetAutoHide(flag, delay-1)
      EnKai.fx.cancel (name .. '.autoHideHeader' )
    end
    
    autoHideHeader = flag
    
  end
  
  
  function window:SetDragable(flag)
    dragable = flag
    moveCheckbox:SetChecked(flag)
  end
  
  function window:SetCloseable(flag)
    closeable = flag
    closeIcon:SetVisible(flag)
  end
  
  function window:GetContent() return body end
  function window:GetHeader() return header end
  
  function window:SetTitle(newTitle)
    title:ClearAll()
    title:SetText(newTitle)
    if title:GetWidth() > header:GetWidth() then title:SetWidth(header:GetWidth()) end
    
    if titleAlign == "center" then
      title:SetPoint("CENTER", header, "CENTER", titleOffSet, 0)
    elseif titleAlign == "left" then
      title:SetPoint("CENTERLEFT", header, "CENTERLEFT", titleOffSet, 0)
    else
      title:SetPoint("CENTERRIGHT", header, "CENTERRIGHT", titleOffSet, 0)
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
  
  function window:SetTitleColor (r, g, b, a)
	title:SetFontColor(r, g, b, a)
  end
  
  function window:ShowContent(flag)
    if flag == true and autoHide == true then
      EnKai.fx.updateTime (name .. '.autohide' )      
    end
    body:SetVisible(flag)
  end
  
  
  local oSetBackgroundColor = window.SetBackgroundColor
  
  function window:SetBackgroundColor(r,g,b,a)
    body:SetBackgroundColor(r,g,b,a)
  end
  
  local oSetWidth, oSetHeight, oSetPoint = window.SetWidth, window.SetHeight, window.SetPoint
    
  function window:SetWidth(newWidth)
    oSetWidth(self, newWidth)
    window:SetTitle(title:GetText())  
  end 
  
  function window:SetHeight(newHeight)
    oSetHeight(self, newHeight)
    if window:GetTop() + newHeight >= UIParent:GetHeight() then window:ProcessMove() end
  end
  
  function window:SetPoint(from, object, to, x, y)
  
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
      if window:GetTop() + window:GetHeight() >= UIParent:GetHeight() then window:ProcessMove() end
    end
  end 
  
  function window:DisplayHeader(flag)
    header:SetVisible(flag)
  end
  
  function window:Collapse(flag)
    
    if flag == true then
      arrow:SetTextureAsync("EnKai", "gfx/windowModernArrowRight.png")
      body:SetVisible(false)
      EnKai.eventHandlers[name]["Collapsed"](true)
    else
      arrow:SetTextureAsync("EnKai", "gfx/windowModernArrowDown.png")
      body:SetVisible(true)
      EnKai.eventHandlers[name]["Collapsed"](false)
    end        
  end
  
  function window:SetCollapseable (flag)
    collapseable = flag
    if flag == true or autoHide == true then
      arrow:SetVisible(true)
      arrow:SetTextureAsync("EnKai", "gfx/windowModernArrowDown.png")
      body:SetVisible(true)
    else
      arrow:SetVisible(false)
    end 
  end
  
  function window:SetReverseAtBorder(flag)
    reverseAtBorder = flag
  end
  
  function window:ToggleCollapse()
    
    if oFuncs.oInspectSystemSecure() == true then return end
    
    if collapseable == true then
      if body:GetVisible() == true then       
        arrow:SetTextureAsync("EnKai", "gfx/windowModernArrowRight.png")
        body:SetVisible(false)
        --if autoHideHeader == true then window:SetAutoHideHeader(true, autoHideHeaderDuration, autoHideHeaderDelay) end
        EnKai.eventHandlers[name]["Collapsed"](true)        
      else
        arrow:SetTextureAsync("EnKai", "gfx/windowModernArrowDown.png")
        body:SetVisible(true)
        EnKai.eventHandlers[name]["Collapsed"](false)
        --EnKai.fx.cancel (name .. '.autoHideHeader' )
      end
    elseif autoHide == true then
      window:SetAutoHide(false, 5)
      arrow:SetTextureAsync("EnKai", "gfx/windowModernArrowDown.png")
      EnKai.eventHandlers[name]["Collapsed"](true)
    else
      window:SetAutoHide(true, 5)
      arrow:SetTextureAsync("EnKai", "gfx/windowModernArrowRight.png")
      EnKai.eventHandlers[name]["Collapsed"](false)
    end
  end
  
  local oSetSecureMode = window.SetSecureMode
  
  function window:SetSecureMode(newMode)
  
	oSetSecureMode(self, newMode)
	body:SetSecureMode(newMode)
  
  end
  
  EnKai.eventHandlers[name]["Moved"], EnKai.events[name]["Moved"] = Utility.Event.Create(addonInfo.identifier, name .. "Moved") 
  EnKai.eventHandlers[name]["Resized"], EnKai.events[name]["Resized"] = Utility.Event.Create(addonInfo.identifier, name .. "Resized")
  EnKai.eventHandlers[name]["Closed"], EnKai.events[name]["Closed"] = Utility.Event.Create(addonInfo.identifier, name .. "Closed")
  EnKai.eventHandlers[name]["Collapsed"], EnKai.events[name]["Collapsed"] = Utility.Event.Create(addonInfo.identifier, name .. "Collapsed")
  EnKai.eventHandlers[name]["Dragable"], EnKai.events[name]["Dragable"] = Utility.Event.Create(addonInfo.identifier, name .. "Dragable")
  EnKai.eventHandlers[name]["HeaderHide"], EnKai.events[name]["HeaderHide"] = Utility.Event.Create(addonInfo.identifier, name .. "HeaderHide")
  EnKai.eventHandlers[name]["HeaderHidden"], EnKai.events[name]["HeaderHidden"] = Utility.Event.Create(addonInfo.identifier, name .. "HeaderHidden")
  EnKai.eventHandlers[name]["HeaderShown"], EnKai.events[name]["HeaderShown"] = Utility.Event.Create(addonInfo.identifier, name .. "HeaderShown")
  
  return window
end

uiFunctions.NKWINDOWELEMENT = _uiWindowElement