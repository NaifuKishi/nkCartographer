local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiStepButton (name, parent)
  
  local button = EnKai.uiCreateFrame ('nkCanvas', name, parent)
  
  if button == nil then return nil end -- event check failed
  
  local number = EnKai.uiCreateFrame ('nkText', name .. '.number', button)
  local label = EnKai.uiCreateFrame ('nkText', name .. '.label', button)
  
  -- GARBAGE COLLECTOR ROUTINES
  
  function button:destroy()
    internal.uiAddToGarbageCollector ('nkCanvas', button)
    internal.uiAddToGarbageCollector ('nkText', number)
    internal.uiAddToGarbageCollector ('nkTexture', label)
  end   
  
   -- SPECIFIC FUNCTIONS
  
  local stroke = {r = .2, g = .2, b = .2, a = 1, thickness = 1 }
  local path = {  {xProportional = 0, yProportional = 0},
                  {xProportional = 1, yProportional = 0},
                  {xProportional = 1, yProportional = 1},
                  {xProportional = 0, yProportional = 1},
                  {xProportional = 0, yProportional = 0}
                  }  
  
  local fill = {type = "solid", r = .8, g = .8, b = .8, a = .2}
  local fillSelected = {type = "gradientLinear", transform = Utility.Matrix.Create(2, 2, (math.pi / 2), 0, 0), color = {{ r = 0.3, g = .3, b = .3, a = 1, position = 0},  { r =.5, g = .5, b = .5, a = 1, position = .2 },  { r = 0.5, g = .5, b = .5, a = 1, position = 1 }}}
  
  local selected = false
  
  button:SetShape(path, fill, stroke)
  button:SetWidth(150)
  button:SetHeight(50)
    
  local labelColor = { 0, 0, 0, 1 }
  local scale = 1
  
  button:SetWidth(142)
  button:SetHeight(42)
  
  number:SetPoint("CENTERTOP", button, "CENTERTOP", 0, 0)
  number:SetFontSize(16)
  number:SetFontColor(labelColor[1], labelColor[2], labelColor[3], .4)
  number:SetLayer(3)
  
  label:SetPoint("CENTERTOP", button, "CENTERTOP", 0, 20)
  label:SetFontSize(12)
  label:SetFontColor(labelColor[1], labelColor[2], labelColor[3], .4)
  label:SetLayer(3)
  
  function button:SetNumber(newText)
    number:SetText(newText)
  end
  
  function button:SetText(newText)
    label:SetText(newText)    
    if label:GetWidth() > button:GetWidth() - (10  / scale) then label:SetWidth(button:GetWidth() - ( 10 / scale) ) end    
  end
  
  function button:ShowNumber(flag)
  
    if flag == true then
      number:SetVisible(true)
      label:SetPoint("CENTERTOP", button, "CENTERTOP", 0, 20)
      label:SetFontSize(12)
    else
      number:SetVisible(false)
      label:SetPoint("CENTERTOP", button, "CENTERTOP", 0, 10)
      label:SetFontSize(14)    
    end
  
  end
  
  function button:SetSelected(flag)
    
    if flag == true then
      button:SetShape (path, fillSelected, stroke)
      number:SetFontColor(labelColor[1], labelColor[2], labelColor[3], 1)
      label:SetFontColor(labelColor[1], labelColor[2], labelColor[3], .1)
    else
      button:SetShape (path, fill, stroke)      
      number:SetFontColor(labelColor[1], labelColor[2], labelColor[3], .4 )
      label:SetFontColor(labelColor[1], labelColor[2], labelColor[3], .4)      
    end
    
    selected = flag
    
  end
  
  button:EventAttach(Event.UI.Input.Mouse.Cursor.In, function ()
     button:SetShape (path, fillSelected, stroke)
     number:SetFontColor(labelColor[1], labelColor[2], labelColor[3], 1)
     label:SetFontColor(labelColor[1], labelColor[2], labelColor[3], 1)
  end, name .. "_Cursor_In")  
    
  button:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function ()
    
     if selected == false then
      button:SetShape (path, fill, stroke)      
      number:SetFontColor(labelColor[1], labelColor[2], labelColor[3], .4 )
      label:SetFontColor(labelColor[1], labelColor[2], labelColor[3], .4)
    end
    
  end, name .. "_Cursor_out") 
   
  button:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
    EnKai.eventHandlers[name]["Clicked"]()
  end, name .. "_Left_Click")

  EnKai.eventHandlers[name]["Clicked"], EnKai.events[name]["Clicked"] = Utility.Event.Create(addonInfo.identifier, name .. "Clicked")
    
  return button

end

uiFunctions.NKSTEPBUTTON = _uiStepButton