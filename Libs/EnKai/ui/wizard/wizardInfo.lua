local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiWizardInfo(name, parent)

  local wizard = EnKai.uiCreateFrame("nkWindowMetro", name, parent)
  
  if wizard == nil then return nil end -- event check failed

  local body = EnKai.uiCreateFrame("nkFrame", name .. ".innerBody", wizard:GetContent())
  local titleDesc = EnKai.uiCreateFrame("nkText", name .. ".titleDesc", body)
  local mainGFX = EnKai.uiCreateFrame("nkTexture", name .. ".mainGFX", body)
  local closeButton = EnKai.uiCreateFrame("nkButtonMetro", name .. ".closeButton", wizard:GetContent())
  
  local stepCount = 0
  local stepInfo = {}
  local currentStep = 0
  local stepButtons = {}
  
  local textFragmentGC = {}
  local arrowGC = {}
  
  local textFragments = {}
  local textFragmentWidth = 120
  local arrows = {}
  
  -- GARBAGE COLLECTOR ROUTINES
  
  function wizard:destroy()
    wizard:destroy()
    internal.uiAddToGarbageCollector ('nkText', titleDesc)
    internal.uiAddToGarbageCollector ('nkTexture', mainGFX)
    closeButton:destroy()
    
    for k, v in pairs (stepButtons) do
      v:destroy()
    end
    
    for k, v in pairs(textFragmentGC) do
       internal.uiAddToGarbageCollector ('nkText', v)
    end
    
    for k, v in pairs(arrowGC) do
       internal.uiAddToGarbageCollector ('nkCanvas', v)
    end
    
    for k, v in pairs(textFragments) do
       internal.uiAddToGarbageCollector ('nkText', v)
    end
    
    for k, v in pairs(arrows) do
       internal.uiAddToGarbageCollector ('nkCanvas', v)
    end

  end   
  
   -- SPECIFIC FUNCTIONS
  
  local init = false
  
  local arrowStroke = {r = 1, g = 1, b = 1, a = 1, thickness = 1 }
  
  local textureWidth = 400;
  
  wizard:SetWidth(600)
  wizard:SetHeight(400)    
  wizard:SetBackgroundColor(0, 0, 0, .8) 
  wizard:SetLayer(1)
  wizard:SetCloseable(true)
    
  body:SetPoint("TOPLEFT", wizard:GetContent(), "TOPLEFT", 10, 0)
  body:SetPoint("BOTTOMRIGHT", wizard:GetContent(), "BOTTOMRIGHT", -10, -40)
  body:SetBackgroundColor(.878,.878,.878,0)
    
  titleDesc:SetPoint("TOPCENTER", body, "TOPCENTER", 0, 60)
  titleDesc:SetFontSize(20)
  titleDesc:SetFontColor(1, 1, 1, 1)
  
  mainGFX:SetPoint("TOPCENTER", body, "TOPCENTER", 0, 95)
  mainGFX:SetLayer(1)
  
  closeButton:SetPoint("BOTTOMRIGHT", wizard:GetContent(), "BOTTOMRIGHT", -20, -20)
  closeButton:SetText("close")
  closeButton:SetFontColor(1, 1, 1)
  closeButton:SetColor(0, .5, .5)
  closeButton:SetIcon("EnKai", "gfx/icons/close.png")
  closeButton:SetScale(.8)
  
  Command.Event.Attach(EnKai.events[name .. ".closeButton"].Clicked, function (_, newValue)
    wizard:SetVisible(false)
  end, name .. ".closeButton.Clicked")
  
  local function initStep(thisStep)
  
    if currentStep > 0 then
      stepButtons[currentStep]:SetSelected(false)
    end    
    
    currentStep = thisStep
    
    stepButtons[thisStep]:SetSelected(true)
    
    titleDesc:SetText(stepInfo[thisStep].desc)
    
    mainGFX:ClearAll()
    mainGFX:SetPoint("TOPCENTER", wizard:GetContent(), "TOPCENTER", 0, 95)
    mainGFX:SetTexture (stepInfo[thisStep].texture.addon, stepInfo[thisStep].texture.path)
    
    local scale = mainGFX:GetWidth() / textureWidth
    
    mainGFX:SetWidth(textureWidth)
    mainGFX:SetHeight(mainGFX:GetHeight() / scale)
    
    mainGFX:SetTexture (stepInfo[thisStep].texture.addon, stepInfo[thisStep].texture.path) -- the second setting of the texture is needed cause the stupid API doesn't re-apply width and height after it has once been set without setting the texturer anew
    
    if mainGFX:GetHeight()+115 > wizard:GetContent():GetHeight() then wizard:SetHeight(mainGFX:GetHeight()+135) end
    
    for k, v in pairs(textFragments) do 
      v:SetVisible(false)      
      table.insert(textFragmentGC, v)      
    end
    
    textFragments = {}
    
    for k, v in pairs(arrows) do 
      v:SetVisible(false)
      table.insert(arrowGC, v) 
    end
     
    arrows = {}
    
    for k, v in pairs(stepInfo[thisStep].pointers) do
          
      local textFragment
      if #textFragmentGC > 0 then
        textFragment = textFragmentGC[1]
        table.remove(textFragmentGC, 1)
      else
        textFragment = EnKai.uiCreateFrame("nkText", name .. ".textfragment." .. k, wizard:GetContent())
        textFragment:SetFontSize(12)
        textFragment:SetFontColor(1, 1, 1, 1)
        textFragment:SetLayer(2)
        textFragment:SetWordwrap(true)        
      end
        
      textFragment:ClearAll()
      textFragment:SetWidth(textFragmentWidth)
      textFragment:SetPoint("TOPLEFT", wizard:GetContent(), "TOPLEFT", v.from[1], v.from[2]+95)
      textFragment:SetText(v.text, true)
      textFragment:SetVisible(true)
      
      table.insert(textFragments, textFragment)
      
      if (v.to ~= nil) then
      
        local arrow
        if #arrowGC > 0 then
          arrow = arrowGC[1]
          table.remove(arrowGC, 1)
        else
          arrow = EnKai.uiCreateFrame("nkCanvas", name .. ".arrow." .. k, wizard:GetContent())
          arrow:SetLayer(3)
        end
                  
        arrow:ClearAll()
        arrow:SetVisible(true)
        
        if (v.from[1] <= v.to[1]) then              
          if (v.from[2] < v.to[2]) then
            arrow:SetPoint("TOPLEFT", textFragment, "CENTERRIGHT", 2, 0)
            arrow:SetPoint("BOTTOMRIGHT", mainGFX, "TOPLEFT", v.to[1], v.to[2])
          
            arrow:SetShape({{xProportional = 0, yProportional = 0}, {xProportional = 1, yProportional = 1}}, nil, arrowStroke)             
          else
            arrow:SetPoint("BOTTOMLEFT", textFragment, "CENTERRIGHT", 2, 0)
            arrow:SetPoint("TOPRIGHT", mainGFX, "TOPLEFT", v.to[1], v.to[2])        
                  
            arrow:SetShape({{xProportional = 0, yProportional = 1}, {xProportional = 1, yProportional = 0}}, nil, arrowStroke)
          end        
        else
          arrow:SetPoint("TOPRIGHT", textFragment, "CENTERLEFT", -2, 0)
          arrow:SetPoint("BOTTOMLEFT", mainGFX, "TOPLEFT", v.to[1], v.to[2])
          
          if (v.from[2] < v.to[2]) then
            arrow:SetShape({{xProportional = 0, yProportional = 1}, {xProportional = 1, yProportional = 0}}, nil, arrowStroke)             
          else
            arrow:SetShape({{xProportional = 0, yProportional = 1}, {xProportional = 1, yProportional = 0}}, nil, arrowStroke)
          end        
        end
        
        table.insert(arrows, arrow)
      end
      
    end
    
  end
  
  function wizard:SetupStep(stepNo, thisStepInfo)
    
    if stepNo > stepCount then stepCount = stepNo end
    
    stepInfo[stepNo] = thisStepInfo
  
  end
  
  local oSetVisible = wizard.SetVisible
  
  function wizard:SetVisible(flag)
  
    if flag == false then
      oSetVisible(self, false)
      return
    elseif init == true then  
      oSetVisible(self, true)
      return
    end
  
    if stepCount == 0 then EnKai.tools.error.display ("EnKai", "error in nkWizardInfo:Show(): step count may not be 0", 2) end
    
    local from, to, object, x, y = "TOPLEFT", "TOPLEFT", wizard:GetContent(), 10, 10
    local minWidth = 20 
    local isFirst = true
    
    for k, info in pairs(stepInfo) do
      local buttonName = name .. ".stepbutton." .. k
    
      local thisButton = EnKai.uiCreateFrame("nkStepButtonMetro", buttonName, wizard:GetContent())
      thisButton:SetText(info.label)      
      thisButton:SetFirst(isFirst)
      thisButton:SetPoint(from, object, to, x, y)
      
      
      
      Command.Event.Attach(EnKai.events[buttonName].Clicked, function ()
        initStep(k)
      end, buttonName .. '.Clicked')
      
      to, object, x, y ="TOPRIGHT", thisButton, -thisButton:GetWidth()*.1, 0
      minWidth = minWidth + thisButton:GetWidth()
      
      isFirst = false
      
      stepButtons[k] = thisButton
    end
    
    if wizard:GetWidth() < minWidth then
       wizard:SetWidth(minWidth) 
       textFragmentWidth = 120 * (minWidth / 600)
    end
    
    if currentStep == 0 then initStep(1) end
    
    init = true
    
    oSetVisible(self, true)
    
  end
  
  function wizard:SetTextureWidth(newWidth)
    
    textureWidth = newWidth
  
  end
  
  return wizard
  
end

uiFunctions.NKWIZARDINFO = _uiWizardInfo