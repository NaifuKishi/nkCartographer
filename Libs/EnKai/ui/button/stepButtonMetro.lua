local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiStepButtonMetro (name, parent)
  
  local button = EnKai.uiCreateFrame ('nkCanvas', name, parent)
  
  if button == nil then return nil end -- event check failed
  
  local label = EnKai.uiCreateFrame ('nkText', name .. '.label', button)
  
  -- GARBAGE COLLECTOR ROUTINES
  
  function button:destroy()
    internal.uiAddToGarbageCollector ('nkCanvas', button)
    internal.uiAddToGarbageCollector ('nkText', label)
  end   
  
   -- SPECIFIC FUNCTIONS
  
  local stroke = {r = 0.573, g = 0.616, b = 0.651, a = 1, thickness = 1 }
  local path = {  {xProportional = 0, yProportional = 0},
                  {xProportional = .9, yProportional = 0},
                  {xProportional = 1, yProportional = .5},
                  {xProportional = .9, yProportional = 1},
                  {xProportional = 0, yProportional = 1},
                  {xProportional = .1, yProportional = .5},
                  {xProportional = 0, yProportional = 0},
                  }  
  
  local pathFirst = {  {xProportional = 0, yProportional = 0},
                      {xProportional = .9, yProportional = 0},
                      {xProportional = 1, yProportional = .5},
                      {xProportional = .9, yProportional = 1},
                      {xProportional = 0, yProportional = 1},
                      {xProportional = 0, yProportional = 0}
                      }  
 
  local fill = {type = "solid", r = 0.118, g = 0.196, b = 0.259, a = 1}
  local fillSelected = {type = "solid",  r = 0, g = .5, b = .5, a = 1}
  local labelColor = { 0.373, 0.451, 0.506 }
  local labelColorSelected = { 1, 1, 1 }
  
  local selected = false
  local isFirst = false
  
  button:SetShape(path, fill, stroke)
  button:SetWidth(125)
  button:SetHeight(30)
    
  local scale = 1
  
  label:SetPoint("CENTER", button, "CENTER")
  label:SetFontSize(12)
  label:SetFontColor(labelColor[1], labelColor[2], labelColor[3], 1)
  label:SetLayer(3)
  
  function button:SetText(newText)
    label:SetText(newText)    
    if label:GetWidth() > button:GetWidth() - (10  / scale) then label:SetWidth(button:GetWidth() - ( 10 / scale) ) end    
  end
  
  function button:SetSelected(flag)
    
    local thisPath = path
    if isFirst == true then thisPath = pathFirst end
    
    if flag == true then
      button:SetShape (thisPath, fillSelected, stroke)
      label:SetFontColor(labelColorSelected[1], labelColorSelected[2], labelColorSelected[3], 1)
    else
      button:SetShape (thisPath, fill, stroke)      
      label:SetFontColor(labelColor[1], labelColor[2], labelColor[3], 1)      
    end
    
    selected = flag
    
  end
  
  function button:SetFirst(flag)
    
    isFirst = flag
    button:SetSelected(selected)
    
  end
  
  button:EventAttach(Event.UI.Input.Mouse.Cursor.In, function ()
    local thisPath = path
    if isFirst == true then thisPath = pathFirst end
    
    button:SetShape (thisPath, fillSelected, stroke)
    label:SetFontColor(labelColorSelected[1], labelColorSelected[2], labelColorSelected[3], 1)
    
    label:SetFontColor(labelColorSelected[1], labelColorSelected[2], labelColorSelected[3], 1)
  end, name .. "_Cursor_In")  
    
  button:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function ()
    
    button:SetSelected(selected)
    
  end, name .. "_Cursor_out") 
   
  button:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
    EnKai.eventHandlers[name]["Clicked"]()
  end, name .. "_Left_Click")

  EnKai.eventHandlers[name]["Clicked"], EnKai.events[name]["Clicked"] = Utility.Event.Create(addonInfo.identifier, name .. "Clicked")
    
  return button

end

uiFunctions.NKSTEPBUTTONMETRO = _uiStepButtonMetro