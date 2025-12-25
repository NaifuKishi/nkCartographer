local addonInfo, privateVars = ...

---------- init namespace ---------

local data          = privateVars.data
local uiElements    = privateVars.uiElements
local internalFunc  = privateVars.internalFunc
local lang          = privateVars.langTexts
local events        = privateVars.events

privateVars.settingsUI = {}

local settingsUI = privateVars.settingsUI

---------- init variables ---------

data.borderDesigns = {
  none        = {DE = "Keiner", EN = "None", RU = "None"},
  default     = {DE = "Standard", EN = "Default", RU = "Default", addon = "Rift", path = "Bank_I8F.dds", offset = 10},
  blackStrong = {DE = "Schwarz Breit", EN = "Black wide", RU = "Black wide", addon = "nkCartographer", path = "gfx/bgBlack.png", offset = 10},  
  blackLight  = {DE = "Schwarz Schmal", EN = "Black narrow", RU = "Black narrow", addon = "nkCartographer", path = "gfx/bgBlack.png", offset = 5},
  blackSmall  = {DE = "Schwarz dünn", EN = "Black simple", RU = "Black simple", addon = "nkCartographer", path = "gfx/bgBlack.png", offset = 2},
  gold        = {DE = "Gold", EN = "Gold", RU = "Gold", addon = "Rift", path = "tutorial_bg_small.png.dds", offset = 10},
  gray        = {DE = "Grau", EN = "Gray", RU = "Gray", addon = "Rift", path = "bg_item_package_gray.png.dds", offset = 15},
} -- list of border designs for the map

---------- local function block ---------

function settingsUI.checkbox (name, parent, text, active, callBack)

    local thisCheckbox = EnKai.uiCreateFrame("nkCheckbox", name, parent)
    
    thisCheckbox:SetText(text, true)
    thisCheckbox:SetActive(active)
    thisCheckbox:SetLabelWidth(200)
    thisCheckbox:SetFontSize(14)
    thisCheckbox:SetTextFont(addonInfo.id, "MontserratSemiBold")
    thisCheckbox:SetLabelColor(data.theme.labelColor.r, data.theme.labelColor.g, data.theme.labelColor.b, data.theme.labelColor.a)
    thisCheckbox:SetColor(data.theme.formElementColorMain)
    thisCheckbox:SetColorInner(data.theme.formElementColorSub)
    thisCheckbox:SetEffectGlow({strength = 3})
    
    Command.Event.Attach(EnKai.events[name].CheckboxChanged, function (_, newValue)		
        callBack(newValue)
    end, name .. ".CheckboxChanged")

    return thisCheckbox

end

function settingsUI.combobox (name, parent, text, active, callBack)

    local thisCombobox = EnKai.uiCreateFrame("nkCombobox", name, parent)
    
    thisCombobox:SetText(text, true)
    thisCombobox:SetActive(active)
    thisCombobox:SetLabelWidth(200)
	  thisCombobox:SetWidth(400)    
    thisCombobox:SetFont(addonInfo.id, "MontserratSemiBold")
    thisCombobox:SetLabelColor(data.theme.labelColor)
    thisCombobox:SetColorInner(0, 0, 0, .2)
    thisCombobox:SetColor(1, 1, 1, 1)
	  thisCombobox:SetColorBorder(0, 0, 0, .2) 
    thisCombobox:SetColorSelected(data.theme.labelColor)
    thisCombobox:SetEffectGlow({strength = 3})

    Command.Event.Attach(EnKai.events[name].ComboChanged, function (_, newValue)		
        callBack(newValue.value)
    end, name .. ".CheckboxChanged")

    return thisCombobox

end

function settingsUI.slider (name, parent, text, active, callBack)

    local thisSlider = EnKai.uiCreateFrame("nkSlider", name, parent)

    thisSlider:SetText(text, true)
    thisSlider:SetWidth(350)
    thisSlider:SetLabelWidth(200)
    thisSlider:SetLabelColor(data.theme.labelColor)
    thisSlider:SetFontSize(14)
    thisSlider:SetActive(active)
    thisSlider:SetFont(addonInfo.id, "MontserratSemiBold")
    thisSlider:SetColor(0, 0, 0, .2)
    thisSlider:SetColorInner({ r = 0, g = 0, b = 0, a = .4})
    thisSlider:SetColorHighlight(data.theme.formElementColorMain)    
    thisSlider:SetEffectGlow({strength = 3})

    Command.Event.Attach(EnKai.events[name].SliderChanged, function (_, newValue)
        callBack(newValue)
    end, name .. ".SliderChanged")

    return thisSlider

end


function settingsUI.label (name, parent, text)

    local thisText = EnKai.uiCreateFrame("nkText", name, parent)

    thisText:SetText(text, true)
    thisText:SetWidth(350)
    thisText:SetFontSize(14)
    thisText:SetTextFont(addonInfo.id, "MontserratSemiBold")
    thisText:SetFontColor(data.theme.labelColor.r, data.theme.labelColor.g, data.theme.labelColor.b, data.theme.labelColor.a)
    thisText:SetEffectGlow({strength = 3})

    return thisText

end

function settingsUI.header (name, parent, text)

    local thisHeader = EnKai.uiCreateFrame("nkText", name, parent)
    thisHeader:SetFontSize(16)
    thisHeader:SetText(text)
    thisHeader:SetTextFont(addonInfo.id, "MontserratSemiBold")
    thisHeader:SetFontColor(data.theme.labelColor.r, data.theme.labelColor.g, data.theme.labelColor.b, data.theme.labelColor.a)
    thisHeader:SetEffectGlow({strength = 3})

    return thisHeader

end

local function _configTabSettings(parent)

  local name = 'nkCartogrqapher.Config.TabPane.TabSettings'

  local tabPane = UI.CreateFrame ("Frame", name, parent)
  local labelGeneric, backgroundSelect, lockedCheckbox, syncTargetCheckbox
  local labelDisplay, poiCheckbox, zoneTitleCheckbox, animationsCheckbox, rareCheckbox, rareCheckboxInfo, labelTrack, gatheringCheckbox, artifactCheckbox, animationsCheckboxheckboxInfo, animationSpeedSlider
  local questCheckbox, unknownCheckbox

  function tabPane:build ()
  
    labelGeneric = settingsUI.header ( name .. ".labelGeneric", tabPane, lang.labelGenericSettings)
    labelGeneric:SetPoint("TOPLEFT", tabPane, "TOPLEFT")

    local backgroundList = {}
    
    for k, v in pairs (data.borderDesigns) do
      table.insert(backgroundList, {label = v[EnKai.tools.lang.getLanguageShort()], value = k})
    end
    
    backgroundSelect = settingsUI.combobox(name .. ".backgroundSelect", tabPane, lang.backgroundSelect, true, function(newValue)        
      nkCartSetup.background = newValue.value
      uiElements.mapUI:SetBackground(nkCartSetup.background)
    end)

    local currentTheme = nkUISetup.modules.unitFrames.colorScheme

    backgroundSelect:SetSelection(backgroundList)     
    backgroundSelect:SetPoint("TOPLEFT", labelGeneric, "BOTTOMLEFT", 0, 6)
    backgroundSelect:SetSelectedValue(nkCartSetup.background, false)
        
    lockedCheckbox = settingsUI.checkbox(name .. ".lockedCheckbox", tabPane, lang.lockedCheckbox, true, function(newValue)        
        nkCartSetup.locked = newValue
        if uiElements.mapUI ~= nil then
            local locked
            if nkCartSetup.locked == true then locked = false else locked = true end
            uiElements.mapUI:SetResizable(locked)
            uiElements.mapUI:SetDragable(locked) 
        end 
    end)

    lockedCheckbox:SetPoint("TOPLEFT", backgroundSelect, "BOTTOMLEFT", 0, 10)
    lockedCheckbox:SetChecked(nkCartSetup.locked)

    syncTargetCheckbox = settingsUI.checkbox(name .. ".syncTargetCheckbox", tabPane, lang.syncTargetCheckbox, true, function(newValue)        
        nkCartSetup.syncTarget = newValue
        
        if newValue == true then
            Command.Message.Accept("raid", "nkCartographer.target")
            Command.Message.Accept("party", "nkCartographer.target")
            Command.Event.Attach(Event.Message.Receive, events.messageReceive, "nkCartographer.Message.Receive")
        else
            Command.Message.Reject("raid", "nkCartographer.target")
            Command.Message.Reject("party", "nkCartographer.target")
            Command.Event.Detach(Event.Message.Receive, nil, "nkCartographer.Message.Receive")
            events.removeTargets ()
        end
    end)

    syncTargetCheckbox:SetPoint("TOPLEFT", lockedCheckbox, "BOTTOMLEFT", 0, 10)
    syncTargetCheckbox:SetChecked(nkCartSetup.syncTarget)

    labelDisplay = settingsUI.header ( name .. ".labelDisplay", tabPane, lang.labelDisplaySettings)
    labelDisplay:SetPoint("TOPLEFT", syncTargetCheckbox, "BOTTOMLEFT", 0, 20)
  
    poiCheckbox = settingsUI.checkbox(name .. ".poiCheckbox", tabPane, lang.poiCheckbox, true, function(newValue)        
        nkCartSetup.showPOI = newValue
        internalFunc.ShowPOI(newValue)
    end)

    poiCheckbox:SetPoint("TOPLEFT", labelDisplay, "BOTTOMLEFT", 0, 10)
    poiCheckbox:SetChecked(nkCartSetup.showPOI)

    zoneTitleCheckbox = settingsUI.checkbox(name .. ".zoneTitleCheckbox", tabPane, lang.zoneTitleCheckbox, true, function(newValue)        
      nkCartSetup.showZoneTitle = newValue
      uiElements.mapUI:SetZoneTitle(newValue)
    end)

    zoneTitleCheckbox:SetPoint("TOPLEFT", poiCheckbox, "BOTTOMLEFT", 0, 10)
    zoneTitleCheckbox:SetChecked(nkCartSetup.showZoneTitle)

    animationsCheckbox = settingsUI.checkbox(name .. ".animationsCheckbox", tabPane, lang.animationsCheckbox, true, function(newValue)        
      nkCartSetup.animations = newValue
		  uiElements.mapUI:SetAnimated(newValue, nkCartSetup.animationSpeed)
		  if animationSpeedSlider then animationSpeedSlider:SetVisible(newValue) end
      if rareCheckBox then
        if newValue == true then
          rareCheckbox:SetPoint("TOPLEFT", animationSpeedSlider, "BOTTOMLEFT", 0, 10)
        else
          rareCheckbox:SetPoint("TOPLEFT", animationsCheckbox, "BOTTOMLEFT", 0, 10)
        end
      end
    end)

    animationsCheckbox:SetPoint("TOPLEFT", zoneTitleCheckbox, "BOTTOMLEFT", 0, 10)
    animationsCheckbox:SetChecked(nkCartSetup.animations)
	
    animationsCheckboxheckboxInfo = settingsUI.label (name .. '.animationsCheckboxheckboxInfo', tabPane, lang.animationsCheckboxheckboxInfo)
    animationsCheckboxheckboxInfo:SetPoint("CENTERLEFT", animationsCheckbox, "CENTERRIGHT", 10, 0)
    animationsCheckboxheckboxInfo:SetFontColor(1, 0, 0, 1)
        
	  animationSpeedSlider = settingsUI.slider (name .. ".animationSpeedSlider", tabPane, lang.animationSpeedSlider, true, function (newValue)
      nkCartSetup.animationSpeed = (100 - newValue) / 1000
      uiElements.mapUI:SetAnimated(nkCartSetup.animations, nkCartSetup.animationSpeed)
    end)
    
    animationSpeedSlider:SetPoint("TOPLEFT", animationsCheckbox, "BOTTOMLEFT", 0, 10)
    animationSpeedSlider:SetRange(0, 100)
    animationSpeedSlider:SetMidValue(50)
    animationSpeedSlider:SetPrecision(1)
    animationSpeedSlider:AdjustValue(100 - nkCartSetup.animationSpeed * 1000)
          	
    rareCheckbox = settingsUI.checkbox(name .. ".rareCheckbox", tabPane, lang.rareCheckbox, true, function(newValue)        
      nkCartSetup.rareMobs = newValue
      internalFunc.ShowRareMobs(newValue)
    end)
    
    rareCheckbox:SetPoint("TOPLEFT", animationSpeedSlider, "BOTTOMLEFT", 0, 10)
    rareCheckbox:SetChecked(nkCartSetup.rareMobs)
    
    rareCheckboxInfo = settingsUI.label (name .. '.rareCheckboxInfo', tabPane, lang.rareCheckboxInfo)
    rareCheckboxInfo:SetPoint("CENTERLEFT", rareCheckbox, "CENTERRIGHT", 10, 0)
    rareCheckboxInfo:SetFontColor(1, 0, 0, 1)

    questCheckbox = settingsUI.checkbox(name .. ".questCheckbox", tabPane, lang.questCheckBox, true, function(newValue)        
      nkCartSetup.showQuest = newValue
      internalFunc.ShowQuest(newValue)
    end)
    
    questCheckbox:SetPoint("TOPLEFT", rareCheckbox, "BOTTOMLEFT", 0, 10)
    questCheckbox:SetChecked(nkCartSetup.showQuest)

    unknownCheckbox = settingsUI.checkbox(name .. ".unknownCheckbox", tabPane, lang.unknownCheckbox, true, function(newValue)        
      nkCartSetup.showUnknown = newValue
    end)
    
    unknownCheckbox:SetPoint("TOPLEFT", questCheckbox, "BOTTOMLEFT", 0, 10)
    unknownCheckbox:SetChecked(nkCartSetup.showUnknown)

    labelTrack = settingsUI.header ( name .. ".labelTrack", tabPane, lang.labelTrackSettings)
    labelTrack:SetPoint("TOPLEFT", unknownCheckbox, "BOTTOMLEFT", 0, 20)
    
    gatheringCheckbox = settingsUI.checkbox(name .. ".gatheringCheckbox", tabPane, lang.gatheringCheckbox, true, function(newValue)        
      nkCartSetup.trackGathering = newValue
      internalFunc.ShowGathering(newValue)
    end)

    gatheringCheckbox:SetPoint("TOPLEFT", labelTrack, "BOTTOMLEFT", 0, 10)
    gatheringCheckbox:SetChecked(nkCartSetup.trackGathering)

    artifactCheckbox = settingsUI.checkbox(name .. ".artifactCheckbox", tabPane, lang.artifactCheckbox, true, function(newValue)        
      nkCartSetup.trackArtifacts = newValue
      internalFunc.ShowArtifacts(newValue)
    end)
    
    artifactCheckbox:SetPoint("TOPLEFT", gatheringCheckbox, "BOTTOMLEFT", 0, 10)
    artifactCheckbox:SetChecked(nkCartSetup.trackArtifacts)
    
  end
  
  return tabPane
  
end

local function _configTabAbout(parent)

  local name = 'nkCartogrqapher.Config.TabPane.TabAbout'

  local tabPane = UI.CreateFrame ("Frame", name, parent)
  local nkTexture, thanxLabel, thanxTesting2, thanxTesting, thanxLibs
  
  function tabPane:build ()
  
    nkTexture = EnKai.uiCreateFrame("nkTexture", name .. '.nkTexture', tabPane)
    nkTexture:SetPoint("CENTERTOP", tabPane, "CENTERTOP", 0, 10)
    nkTexture:SetTextureAsync(EnKai.art.GetThemeLogo()[1],EnKai.art.GetThemeLogo()[2])
    nkTexture:SetWidth(250)
    nkTexture:SetHeight(66)
    
    thanxLabel = EnKai.uiCreateFrame("nkText", name .. ".thanxLabel", tabPane)
    thanxLabel:SetPoint("CENTERTOP", nkTexture, "CENTERBOTTOM", 0, 20)
    thanxLabel:SetFontSize(16)
    thanxLabel:SetText(lang.thanxLabel)
    thanxLabel:SetEffectGlow({ strength = 3})
    
    EnKai.ui.setFont(thanxLabel, addonInfo.id, "Montserrat")
    
    thanxTesting = EnKai.uiCreateFrame("nkText", name .. ".thanxTesting", tabPane)
    thanxTesting:SetPoint("CENTERTOP", thanxLabel, "CENTERBOTTOM", 0, 20)
    thanxTesting:SetFontSize(16)
    thanxTesting:SetText(lang.thanxTesting)
    thanxTesting:SetEffectGlow({ strength = 3})

    EnKai.ui.setFont(thanxTesting, addonInfo.id, "Montserrat")
    
    thanxTesting2 = EnKai.uiCreateFrame("nkText", name .. ".thanxTesting2", tabPane)
    thanxTesting2:SetPoint("CENTERTOP", thanxTesting, "CENTERBOTTOM")
    thanxTesting2:SetFontSize(16)
    thanxTesting2:SetText(lang.thanxTesting2)
    thanxTesting2:SetEffectGlow({ strength = 3})

    EnKai.ui.setFont(thanxTesting2, addonInfo.id, "Montserrat")
    
    thanxLibs = EnKai.uiCreateFrame("nkText", name .. ".thanxLibs", tabPane)
    thanxLibs:SetPoint("CENTERTOP", thanxTesting2, "CENTERBOTTOM", 0, 10)
    thanxLibs:SetFontSize(16)
    thanxLibs:SetText(lang.thanxLibs)
    thanxLibs:SetEffectGlow({ strength = 3})

    EnKai.ui.setFont(thanxLibs, addonInfo.id, "Montserrat")
    
  end
  
  return tabPane

end

local function _config()

  local name = "nkCartographer.config"

  local config = EnKai.uiCreateFrame("nkWindowMetro", name, uiElements.context)
  
  config:SetWidth(600)
  config:SetHeight(540)
  config:SetTitle(addonInfo.toc.Name)
  config:SetCloseable(true)
  config:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 600, 400)
  config:SetTitleFont(addonInfo.id, "MontserratBold")
  config:SetTitleFontSize(16)
  config:SetLayer(3)
  config:SetTitleEffect ( {strength = 3})
  config:SetTitleFontColor(data.theme.labelColor.r, data.theme.labelColor.g, data.theme.labelColor.b, data.theme.labelColor.a)
  
  config:SetColor(nil, {
      type = "gradientLinear",
      transform = Utility.Matrix.Create(2, 2, -(math.pi / 6), 0, 0), -- Negative angle for opposite direction
      color = {
          data.theme.windowStartColor,
          data.theme.windowEndColor
          }
  })
  
  local tabPane = EnKai.uiCreateFrame("nkTabPaneMetro", name .. ".tabPane", config:GetContent())
  
  local paneTabSettings =  _configTabSettings(tabPane)
  local paneTabAbout =  _configTabAbout(tabPane)
  
  local EnKaiLogo = EnKai.uiCreateFrame("nkTexture", name .. ".EnKaiLogo", config)
  EnKaiLogo:SetTextureAsync(EnKai.art.GetThemeLogo()[1],EnKai.art.GetThemeLogo()[2])
  EnKaiLogo:SetPoint("BOTTOMLEFT", config:GetContent(), "BOTTOMLEFT", 10, -5)
  EnKaiLogo:SetWidth(150)
  EnKaiLogo:SetHeight(33)
      
  tabPane:SetBorder(false)
  tabPane:SetPoint("TOPLEFT", config:GetContent(), "TOPLEFT", 10, 10)
  tabPane:SetPoint("BOTTOMRIGHT", config:GetContent(), "BOTTOMRIGHT", -10, -50)
  tabPane:SetFont(addonInfo.id, "MontserratSemiBold")
  tabPane:SetLayer(1)
  tabPane:SetColor(
      {   thickness = 1, 
          r = data.theme.windowEndColor.r, g = data.theme.windowEndColor.g, b = data.theme.windowEndColor.b, a = 0
      }, 
      {   type = 'solid', 
          r = data.theme.windowEndColor.r, g = data.theme.windowEndColor.g, b = data.theme.windowEndColor.b, a = .3},
          data.theme.labelColor, data.theme.labelColor)
  
  tabPane:AddPane( { label = lang.tabHeaderSettings, effect = { strength = 3 }, frame = paneTabSettings, initFunc = function() paneTabSettings:build() end}, false)
  tabPane:AddPane( { label = lang.tabHeaderAbout, effect = { strength = 3 }, frame = paneTabAbout, initFunc = function() paneTabAbout:build() end}, true)
  
  local closeButton = EnKai.uiCreateFrame("nkButtonMetro", name .. ".closeButton", config:GetContent())
  
  closeButton:SetPoint("BOTTOMRIGHT", config:GetContent(), "BOTTOMRIGHT", -10, -10)
  closeButton:SetText(lang.btClose)
  closeButton:SetScale(.8)
  closeButton:SetLayer(9)
  closeButton:SetFont(addonInfo.id, "MontserratSemiBold")
  closeButton:SetFontColor(data.theme.labelColor)
  closeButton:SetEffectGlow ({ strength = 3 })
  closeButton:SetColor(0, 0, 0, .4)
  closeButton:SetBorderColor(0, 0, 0, .7)

  Command.Event.Attach(EnKai.events[name .. ".closeButton"].Clicked, function (_, newValue) config:SetVisible(false) end, name .. ".closeButton.Clicked")
    
  return config
  
end

---------- addon internal function block ---------

function internalFunc.ShowConfig ()
  
  if uiElements.config == nil then 
    uiElements.config = _config()
  elseif uiElements.config:GetVisible() == true then
    uiElements.config:SetVisible(false)
  else  
    uiElements.config:SetVisible(true)
  end
  
  
end