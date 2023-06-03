local addonInfo, privateVars = ...

---------- init namespace ---------

local data        = privateVars.data
local uiElements  = privateVars.uiElements
local _internal   = privateVars.internal
local lang        = privateVars.langTexts
local _events     = privateVars.events

---------- init variables ---------

data.borderDesigns = {
  none        = {DE = "Keiner", EN = "None", RU = "None"},
  default     = {DE = "Standard", EN = "Default", RU = "Default", addon = "Rift", path = "Bank_I8F.dds", offset = 10},
  blackStrong = {DE = "Schwarz Breit", EN = "Black wide", RU = "Black wide", addon = "nkCartographer", path = "gfx/bgBlack.png", offset = 10},  
  blackLight  = {DE = "Schwarz Schmal", EN = "Black narrow", RU = "Black narrow", addon = "nkCartographer", path = "gfx/bgBlack.png", offset = 5},
  gold        = {DE = "Gold", EN = "Gold", RU = "Gold", addon = "Rift", path = "tutorial_bg_small.png.dds", offset = 10},
  gray        = {DE = "Grau", EN = "Gray", RU = "Gray", addon = "Rift", path = "bg_item_package_gray.png.dds", offset = 15},
} -- list of border designs for the map

---------- local function block ---------

local function _configTabSettings(parent)

  local name = 'nkCartogrqapher.Config.TabPane.TabSettings'

  local tabPane = UI.CreateFrame ("Frame", name, parent)
  local labelGeneric, backgroundSelect, lockedCheckbox, syncTargetCheckbox
  local labelDisplay, poiCheckbox, zoneTitleCheckbox, animationsCheckbox, rareCheckbox, rareCheckboxInfo, labelTrack, gatheringCheckbox, artifactCheckbox, animationsCheckboxheckboxInfo, animationSpeedSlider
  local questCheckbox, unknownCheckbox

  function tabPane:build ()
  
    labelGeneric = EnKai.uiCreateFrame("nkText", name .. '.labelGeneric', tabPane)
    labelGeneric:SetPoint("TOPLEFT", tabPane, "TOPLEFT")
    labelGeneric:SetEffectGlow({ offsetX = 2, offsetY = 2})
    labelGeneric:SetText(lang.labelGenericSettings)
    labelGeneric:SetFontSize(16)
    
    local backgroundList = {}
    
    for k, v in pairs (data.borderDesigns) do
      table.insert(backgroundList, {label = v[EnKai.tools.lang.getLanguageShort()], value = k})
    end
    
    backgroundSelect = EnKai.uiCreateFrame("nkCombobox", name .. ".backgroundSelect", tabPane)
    backgroundSelect:SetPoint("TOPLEFT", labelGeneric, "BOTTOMLEFT", 0, 6)
    backgroundSelect:SetLayer(9)
    backgroundSelect:SetWidth(350)
    backgroundSelect:SetLabelWidth(150)
    backgroundSelect:SetSelection(backgroundList)
    backgroundSelect:SetSelectedValue(nkCartSetup.background, false)
    backgroundSelect:SetText(lang.backgroundSelect)
        
    Command.Event.Attach(EnKai.events[name .. ".backgroundSelect"].ComboChanged, function (_, newValue)    
      nkCartSetup.background = newValue.value
      uiElements.mapUI:SetBackground(nkCartSetup.background)
    end, name .. ".backgroundSelect.ComboChanged")
    
    lockedCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. '.lockedCheckbox', tabPane) 
    lockedCheckbox:SetPoint("TOPLEFT", backgroundSelect, "BOTTOMLEFT", 0, 10)
    lockedCheckbox:SetLabelWidth(150)
    lockedCheckbox:SetText(lang.lockedCheckbox)
    lockedCheckbox:SetChecked(nkCartSetup.locked)
    lockedCheckbox:SetLabelInFront(true)
    
    Command.Event.Attach(EnKai.events[name .. '.lockedCheckbox'].CheckboxChanged, function (_, newValue)   
      nkCartSetup.locked = newValue
      if uiElements.mapUI ~= nil then
        local locked
        if nkCartSetup.locked == true then locked = false else locked = true end
        uiElements.mapUI:SetResizable(locked)
        uiElements.mapUI:SetDragable(locked) 
      end 
    end, name .. '.lockedCheckbox' ..".CheckboxChanged")
    
    syncTargetCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. '.syncTargetCheckbox', tabPane) 
    syncTargetCheckbox:SetPoint("TOPLEFT", lockedCheckbox, "BOTTOMLEFT", 0, 10)
    syncTargetCheckbox:SetLabelWidth(150)
    syncTargetCheckbox:SetText(lang.syncTargetCheckbox)
    syncTargetCheckbox:SetChecked(nkCartSetup.syncTarget)
    syncTargetCheckbox:SetLabelInFront(true)
    
    Command.Event.Attach(EnKai.events[name .. '.syncTargetCheckbox'].CheckboxChanged, function (_, newValue)   
      nkCartSetup.syncTarget = newValue
      
      if newValue == true then
        Command.Message.Accept("raid", "nkCartographer.target")
        Command.Message.Accept("party", "nkCartographer.target")
        Command.Event.Attach(Event.Message.Receive, _events.messageReceive, "nkCartographer.Message.Receive")
      else
        Command.Message.Reject("raid", "nkCartographer.target")
        Command.Message.Reject("party", "nkCartographer.target")
        Command.Event.Detach(Event.Message.Receive, nil, "nkCartographer.Message.Receive")
        _events.removeTargets ()
      end
            
    end, name .. '.syncTargetCheckbox' ..".CheckboxChanged")
    
    labelDisplay = EnKai.uiCreateFrame("nkText", name .. '.labelDisplay', tabPane)
    labelDisplay:SetPoint("TOPLEFT", syncTargetCheckbox, "BOTTOMLEFT", 0, 20)
    labelDisplay:SetEffectGlow({ offsetX = 2, offsetY = 2})
    labelDisplay:SetText(lang.labelDisplaySettings)
    labelDisplay:SetFontSize(16)
    
    poiCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. '.poiCheckbox', tabPane) 
    poiCheckbox:SetPoint("TOPLEFT", labelDisplay, "BOTTOMLEFT", 0, 10)
    poiCheckbox:SetLabelWidth(150)
    poiCheckbox:SetText(lang.poiCheckbox)
    poiCheckbox:SetChecked(nkCartSetup.showPOI)
    poiCheckbox:SetLabelInFront(true)
    
    Command.Event.Attach(EnKai.events[name .. '.poiCheckbox'].CheckboxChanged, function (_, newValue)   
      nkCartSetup.showPOI = newValue
      _internal.ShowPOI(newValue)
    end, name .. '.poiCheckbox' ..".CheckboxChanged")
    
    zoneTitleCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. '.zoneTitleCheckbox', tabPane) 
    zoneTitleCheckbox:SetPoint("TOPLEFT", poiCheckbox, "BOTTOMLEFT", 0, 10)
    zoneTitleCheckbox:SetLabelWidth(150)
    zoneTitleCheckbox:SetText(lang.zoneTitleCheckbox)
    zoneTitleCheckbox:SetChecked(nkCartSetup.showZoneTitle)
    zoneTitleCheckbox:SetLabelInFront(true)
    
    Command.Event.Attach(EnKai.events[name .. '.zoneTitleCheckbox'].CheckboxChanged, function (_, newValue)   
      nkCartSetup.showZoneTitle = newValue
      uiElements.mapUI:SetZoneTitle(newValue)
    end, name .. '.zoneTitleCheckbox' ..".CheckboxChanged")
    
    animationsCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. '.animationsCheckbox', tabPane) 
    animationsCheckbox:SetPoint("TOPLEFT", zoneTitleCheckbox, "BOTTOMLEFT", 0, 10)
    animationsCheckbox:SetLabelWidth(150)
    animationsCheckbox:SetText(lang.animationsCheckbox)
    animationsCheckbox:SetChecked(nkCartSetup.animations)
    animationsCheckbox:SetLabelInFront(true)
    
    Command.Event.Attach(EnKai.events[name .. '.animationsCheckbox'].CheckboxChanged, function (_, newValue)   
		nkCartSetup.animations = newValue
		uiElements.mapUI:SetAnimated(newValue, nkCartSetup.animationSpeed)
		animationSpeedSlider:SetVisible(newValue)
		if newValue == true then
			rareCheckbox:SetPoint("TOPLEFT", animationSpeedSlider, "BOTTOMLEFT", 0, 10)
		else
			rareCheckbox:SetPoint("TOPLEFT", animationsCheckbox, "BOTTOMLEFT", 0, 10)
		end
    end, name .. '.animationsCheckbox' ..".CheckboxChanged")
	
	animationsCheckboxheckboxInfo = EnKai.uiCreateFrame("nkText", name .. '.animationsCheckboxheckboxInfo', tabPane)
    animationsCheckboxheckboxInfo:SetPoint("CENTERLEFT", animationsCheckbox, "CENTERRIGHT", 10, 0)
    animationsCheckboxheckboxInfo:SetText(lang.animationsCheckboxheckboxInfo)
    
	animationSpeedSlider = EnKai.uiCreateFrame("nkSlider", name .. ".animationSpeedSlider", tabPane)
    animationSpeedSlider:SetRange(0, 100)
    animationSpeedSlider:SetMidValue(50)
	animationSpeedSlider:SetLabelWidth(155)
	animationSpeedSlider:SetWidth(250)
    animationSpeedSlider:SetText(lang.animationSpeedSlider) 
    animationSpeedSlider:SetPoint("TOPLEFT", animationsCheckbox, "BOTTOMLEFT", 0, 10)
    animationSpeedSlider:AdjustValue(100 - nkCartSetup.animationSpeed * 1000)
            
    Command.Event.Attach(EnKai.events[animationSpeedSlider:GetName()].SliderChanged, function (_, newValue)      
	  nkCartSetup.animationSpeed = (100 - newValue) / 1000
      uiElements.mapUI:SetAnimated(nkCartSetup.animations, nkCartSetup.animationSpeed)
    end, animationSpeedSlider:GetName() .. '.SliderChanged')
	
    rareCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. '.rareCheckbox', tabPane) 
    rareCheckbox:SetPoint("TOPLEFT", animationSpeedSlider, "BOTTOMLEFT", 0, 10)
    rareCheckbox:SetLabelWidth(150)
    rareCheckbox:SetText(lang.rareCheckbox)
    rareCheckbox:SetChecked(nkCartSetup.rareMobs)
    rareCheckbox:SetLabelInFront(true)
    
    Command.Event.Attach(EnKai.events[name .. '.rareCheckbox'].CheckboxChanged, function (_, newValue)   
      nkCartSetup.rareMobs = newValue
      _internal.ShowRareMobs(newValue)
    end, name .. '.rareCheckbox' ..".CheckboxChanged")

    rareCheckboxInfo = EnKai.uiCreateFrame("nkText", name .. '.rareCheckboxInfo', tabPane)
    rareCheckboxInfo:SetPoint("CENTERLEFT", rareCheckbox, "CENTERRIGHT", 10, 0)
    rareCheckboxInfo:SetText(lang.rareCheckboxInfo)
    
    questCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. '.questCheckbox', tabPane) 
    questCheckbox:SetPoint("TOPLEFT", rareCheckbox, "BOTTOMLEFT", 0, 10)
    questCheckbox:SetLabelWidth(150)
    questCheckbox:SetText(lang.questCheckBox)
    questCheckbox:SetChecked(nkCartSetup.showQuest)
    questCheckbox:SetLabelInFront(true)
    
    Command.Event.Attach(EnKai.events[name .. '.questCheckbox'].CheckboxChanged, function (_, newValue)   
      nkCartSetup.showQuest = newValue
      _internal.ShowQuest(newValue)
    end, name .. '.questCheckbox' ..".CheckboxChanged")
    
    unknownCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. '.unknownCheckbox', tabPane) 
    unknownCheckbox:SetPoint("TOPLEFT", questCheckbox, "BOTTOMLEFT", 0, 10)
    unknownCheckbox:SetLabelWidth(150)
    unknownCheckbox:SetText(lang.unknownCheckbox)
    unknownCheckbox:SetChecked(nkCartSetup.showUnknown)
    unknownCheckbox:SetLabelInFront(true)
    
    Command.Event.Attach(EnKai.events[name .. '.unknownCheckbox'].CheckboxChanged, function (_, newValue)   
      nkCartSetup.showUnknown = newValue
    end, name .. '.unknownCheckbox' ..".CheckboxChanged")
    
    labelTrack = EnKai.uiCreateFrame("nkText", name .. '.labelTrack', tabPane)
    labelTrack:SetPoint("TOPLEFT", unknownCheckbox, "BOTTOMLEFT", 0, 20)
    labelTrack:SetEffectGlow({ offsetX = 2, offsetY = 2})
    labelTrack:SetText(lang.labelTrackSettings)
    labelTrack:SetFontSize(16)
    
    gatheringCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. '.gatheringCheckbox', tabPane) 
    gatheringCheckbox:SetPoint("TOPLEFT", labelTrack, "BOTTOMLEFT", 0, 10)
    gatheringCheckbox:SetLabelWidth(150)
    gatheringCheckbox:SetText(lang.gatheringCheckbox)
    gatheringCheckbox:SetChecked(nkCartSetup.trackGathering)
    gatheringCheckbox:SetLabelInFront(true)
    
    Command.Event.Attach(EnKai.events[name .. '.gatheringCheckbox'].CheckboxChanged, function (_, newValue)   
      nkCartSetup.trackGathering = newValue
      _internal.ShowGathering(newValue)
    end, name .. '.gatheringCheckbox' ..".CheckboxChanged")
    
    artifactCheckbox = EnKai.uiCreateFrame("nkCheckbox", name .. '.artifactCheckbox', tabPane) 
    artifactCheckbox:SetPoint("TOPLEFT", gatheringCheckbox, "BOTTOMLEFT", 0, 10)
    artifactCheckbox:SetLabelWidth(150)
    artifactCheckbox:SetText(lang.artifactCheckbox)
    artifactCheckbox:SetChecked(nkCartSetup.trackArtifacts)
    artifactCheckbox:SetLabelInFront(true)
    
    Command.Event.Attach(EnKai.events[name .. '.artifactCheckbox'].CheckboxChanged, function (_, newValue)   
      nkCartSetup.trackArtifacts = newValue
      _internal.ShowArtifacts(newValue)
    end, name .. '.artifactCheckbox' ..".CheckboxChanged")
    
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
    
    thanxTesting = EnKai.uiCreateFrame("nkText", name .. ".thanxTesting", tabPane)
    thanxTesting:SetPoint("CENTERTOP", thanxLabel, "CENTERBOTTOM", 0, 20)
    thanxTesting:SetFontSize(16)
    thanxTesting:SetText(lang.thanxTesting)
    
    thanxTesting2 = EnKai.uiCreateFrame("nkText", name .. ".thanxTesting2", tabPane)
    thanxTesting2:SetPoint("CENTERTOP", thanxTesting, "CENTERBOTTOM")
    thanxTesting2:SetFontSize(16)
    thanxTesting2:SetText(lang.thanxTesting2)
    
    thanxLibs = EnKai.uiCreateFrame("nkText", name .. ".thanxLibs", tabPane)
    thanxLibs:SetPoint("CENTERTOP", thanxTesting2, "CENTERBOTTOM", 0, 10)
    thanxLibs:SetFontSize(16)
    thanxLibs:SetText(lang.thanxLibs)
    
  end
  
  return tabPane

end

local function _config()

  local name = "nkCartographer.config"

  local config = EnKai.uiCreateFrame("nkWindowMetro", name, uiElements.context)
  
  config:SetWidth(400)
  config:SetHeight(540)
  config:SetTitle(addonInfo.toc.Name)
  config:SetCloseable(true)
  config:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 600, 400)
  config:SetLayer(3)
  
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
  tabPane:SetLayer(1)
  
  tabPane:AddPane( { label = lang.tabHeaderSettings, frame = paneTabSettings, initFunc = function() paneTabSettings:build() end}, false)
  tabPane:AddPane( { label = lang.tabHeaderAbout, frame = paneTabAbout, initFunc = function() paneTabAbout:build() end}, true)
  
  local closeButton = EnKai.uiCreateFrame("nkButtonMetro", name .. ".closeButton", config:GetContent())
  
  closeButton:SetPoint("BOTTOMRIGHT", config:GetContent(), "BOTTOMRIGHT", -10, -10)
  closeButton:SetText(lang.btClose)
  closeButton:SetIcon("EnKai", "gfx/icons/close.png")
  closeButton:SetScale(.8)
  closeButton:SetLayer(9)
  
  Command.Event.Attach(EnKai.events[name .. ".closeButton"].Clicked, function (_, newValue) config:SetVisible(false) end, name .. ".closeButton.Clicked")
    
  return config
  
end

---------- addon internal function block ---------

function _internal.ShowConfig ()
  
  if uiElements.config == nil then 
    uiElements.config = _config()
  elseif uiElements.config:GetVisible() == true then
    uiElements.config:SetVisible(false)
  else  
    uiElements.config:SetVisible(true)
  end
  
  
end