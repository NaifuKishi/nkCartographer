local addonInfo, privateVars = ...

---------- init namespace ---------

local data          = privateVars.data
local uiElements    = privateVars.uiElements
local internalFunc  = privateVars.internalFunc
local events       = privateVars.events

privateVars.settingsUI = {}

local settingsUI = privateVars.settingsUI

local stringFind = string.find

---------- init local variables ---------

local _defaults = {
    modules = {
        questtracker = {activate = true,
                        x = 2800,
                        y = 400,
                        width = 300, 
                        height = 500, 
                        useXpos = 800, 
                        useYpos = 100, 
                        useUI = true,
                        categoryHeaderSize = 16,																
						categoryShow = {crafting = true, world = true, daily = true, guild = true, ia = true, monthly = true, weekly = true, zone = true, area = true, instant = true, raid = true, story = true, personal = true, carnage = true, pvp = true},
						categoryFontSize = { header = 15, subHeader = 14, body = 13 },
						collapseState = {},
						categoryCollapseState = {},
                        bodyColor = { 1, 1, 1 },
                        bodyCompleteColor = {.6, .6, .6}
        },
        unitFrames  = { activate = true, 
                        combatAlpha = 1, 
                        nonCombatAlpha = .2, 
                        showBuffs = true,
                        buffDuration = 60,
                        colorScheme = "wow",
                        frames = {  player          = { x = -300, y = 300, width = 250, height = 35, 
                                                        reverse = false,
                                                        fontSizes = {name = 16, health = 28, energy = 14, planar = 12, level = 12}, 
                                                        margins = { name = 15, health = 15, energy = 12, planar = 4, combatIcon = 5, roleIcon = 5, tierIcon = 5, level = 4},
                                                        iconSizes = {combat = 30, role = 20, tier = 20 },
                                                        buffs = { width = 35, height = 35, timer = 12, stack = 10, label = 10 }
                                                    },
                                    playerPet       = { x = -675, y = 400, width = 185, height = 25,
                                                        reverse = false,
                                                        fontSizes = {name = 12, health = 20, energy = 10, planar = 10, level = 10}, 
                                                        margins = { name = 10, health = 10, energy = 10, planar = 3, combatIcon = 5, roleIcon = 5, tierIcon = 5, level = 3},
                                                        iconSizes = {combat = 0, role = 0, tier = 0 },
                                                        buffs = { width = 26, height = 26, timer = 10, stack = 8, label = 8 }
                                                    },
                                    target          = { x = 300, y = 300, width = 250, height = 35,
                                                        reverse = true,
                                                        fontSizes = {name = 16, health = 28, energy = 14, planar = 12, level = 12}, 
                                                        margins = { name = 15, health = 15, energy = 12, planar = 4, combatIcon = 5, roleIcon = 5, tierIcon = 5, level = 4 },
                                                        iconSizes = {combat = 30, role = 20, tier = 20 },
                                                        buffs = { width = 35, height = 35, timer = 12, stack = 10, label = 10 }
                                                    },
                                    focus           = { x = -900, y = 250, width = 185, height = 25,
                                                        reverse = false,
                                                        fontSizes = {name = 12, health = 20, energy = 10, planar = 10, level = 10},                     
                                                        margins = { name = 10, health = 10, energy = 10, planar = 3, combatIcon = 5, roleIcon = 5, tierIcon = 5, level = 3 },
                                                        iconSizes = {combat = 22, role = 15, tier = 15 },
                                                        buffs = { width = 26, height = 26, timer = 10, stack = 8, label = 8 }
                                                    },
                                    group           = { x = -900, y = -300, width = 250, height = 35,
                                                        reverse = false,
                                                        fontSizes = {name = 12, health = 20, energy = 10, planar = 10, level = 10},
                                                        margins = { name = 10, health = 10, energy = 10, planar = 3, combatIcon = 5, roleIcon = 5, tierIcon = 5, group = 80, level = 3 },
                                                        iconSizes = {combat = 0, role = 15, tier = 0 },
                                                        buffs = { width = 26, height = 26, timer = 10, stack = 8, label = 8 }
                                                    },
                                    raid            = { x = -1590, y = -500, width = 100, height = 45,
                                                        reverse = false,
                                                        fontSizes = {name = 16, health = 28, energy = 14, planar = 12, level = 12}, 
                                                        margins = { name = 0, health = 0, energy = 0, planar = 0, combatIcon = 5, roleIcon = 2, tierIcon = 5, level = 0 },
                                                        iconSizes = {combat = 0, role = 15, tier = 0 },
                                                    },
                                    ressourceBar    = { x = 0, y = 290, width = 200, height = 17,
                                                        combo = { width = 30, height = 12},
                                                        charge = { width = 160, height = 12},
                                                        margins = { ressource = 10 },
                                                        fontSizes = {charge = 16, ressource = 20}
                                                     },
                                    playerCastBar   = { x = 0, y = 400, width = 250, height = 24,
                                                        fontSizes = {text = 16, timer = 14}
                                                    },
                                    targetCastBar   = { x = 0, y = 200, width = 250, height = 24,
                                                        fontSizes = {text = 16, timer = 14}
                                                    },
                                }
                    },
        actionBars  = { activate = true, 
                        combatAlpha = 1, 
                        nonCombatAlpha = .2,                        
                        x = 0,
                        y = 550,
                        rightBarX = 1695,
                        rightBarY = 0,
                        offset = 550,
                        spacing = 15,
                        mainbars = 2,
                        rightbar = true
                    },
        lowerBar    = { activate = true,                         
                        fontSize = 15,
                        barHeight = 17,
                        barWidth = 300,
                        barText = 15,
                        timeSize = 36,
                        dateSize = 15
		            },
        oneBag      = { activate = true,
                        --windowColor = { r = 0, g = 0, b = 0, a = 0.3} 
                        },
        buffBar     = { activate = true,
                        x = -1690, y = -690,
                        buffs = { width = 40, height = 40, timer = 14, stack = 12, label = 10}            
                    },
        sct         = { activate = true,
                        messageOffset = -200 },
        tooltip     = { activate = true }
    }
}

local function scaleUI ()
       
    local parentWidth = UIParent:GetWidth()

    if parentWidth == 3440 then return end

    data.uiScale = parentWidth / 3440

    nkUISetup.modules.questtracker.x = nkUISetup.modules.questtracker.x * data.uiScale
    nkUISetup.modules.questtracker.y = nkUISetup.modules.questtracker.y * data.uiScale

    nkUISetup.modules.actionBars.x = nkUISetup.modules.actionBars.x * data.uiScale
    nkUISetup.modules.actionBars.y = nkUISetup.modules.actionBars.y * data.uiScale

    nkUISetup.modules.actionBars.rightBarX = nkUISetup.modules.actionBars.rightBarX * data.uiScale
    nkUISetup.modules.actionBars.rightBarY = nkUISetup.modules.actionBars.rightBarY * data.uiScale

    nkUISetup.modules.buffBar.x = nkUISetup.modules.buffBar.x * data.uiScale
    nkUISetup.modules.buffBar.y = nkUISetup.modules.buffBar.y * data.uiScale

    nkUISetup.modules.unitFrames.frames.player.x = nkUISetup.modules.unitFrames.frames.player.x * data.uiScale
    nkUISetup.modules.unitFrames.frames.player.y = nkUISetup.modules.unitFrames.frames.player.y * data.uiScale

    nkUISetup.modules.unitFrames.frames.target.x = nkUISetup.modules.unitFrames.frames.target.x * data.uiScale
    nkUISetup.modules.unitFrames.frames.target.y = nkUISetup.modules.unitFrames.frames.target.y * data.uiScale

    nkUISetup.modules.unitFrames.frames.playerPet.x = nkUISetup.modules.unitFrames.frames.playerPet.x * data.uiScale
    nkUISetup.modules.unitFrames.frames.playerPet.y = nkUISetup.modules.unitFrames.frames.playerPet.y * data.uiScale

    nkUISetup.modules.unitFrames.frames.focus.x = nkUISetup.modules.unitFrames.frames.focus.x * data.uiScale
    nkUISetup.modules.unitFrames.frames.focus.y = nkUISetup.modules.unitFrames.frames.focus.y * data.uiScale

    nkUISetup.modules.unitFrames.frames.ressourceBar.x = nkUISetup.modules.unitFrames.frames.ressourceBar.x * data.uiScale
    nkUISetup.modules.unitFrames.frames.ressourceBar.y = nkUISetup.modules.unitFrames.frames.ressourceBar.y * data.uiScale

    nkUISetup.modules.unitFrames.frames.group.x = nkUISetup.modules.unitFrames.frames.group.x * data.uiScale
    nkUISetup.modules.unitFrames.frames.group.y = nkUISetup.modules.unitFrames.frames.group.y * data.uiScale

    nkUISetup.modules.unitFrames.frames.raid.x = nkUISetup.modules.unitFrames.frames.raid.x * data.uiScale
    nkUISetup.modules.unitFrames.frames.raid.y = nkUISetup.modules.unitFrames.frames.raid.y * data.uiScale

    nkUISetup.modules.unitFrames.frames.playerCastBar.x = nkUISetup.modules.unitFrames.frames.playerCastBar.x * data.uiScale
    nkUISetup.modules.unitFrames.frames.playerCastBar.y = nkUISetup.modules.unitFrames.frames.playerCastBar.y * data.uiScale  

    nkUISetup.modules.unitFrames.frames.targetCastBar.x = nkUISetup.modules.unitFrames.frames.targetCastBar.x * data.uiScale
    nkUISetup.modules.unitFrames.frames.targetCastBar.x = nkUISetup.modules.unitFrames.frames.targetCastBar.x * data.uiScale

end

--[[
   _setupDefaults
    Description:
        Initializes default configuration values for the nkUI addon if they don't exist.
    Parameters:
        None
    Returns:
        None
    Notes:
        - Creates default configuration table if it doesn't exist
        - Updates tutorial version and adds new configuration options
        - Sets default values for buffUnitFrame, combatAlpha, and nonCombatAlpha
]]
function internalFunc.setupDefaults()

    if nkUISetup == nil or nkUISetup.tutorialVersion == nil or nkUISetup.tutorialVersion < 40 then
        nkUISetup = _defaults
        nkUISetup.modules.actionBars.bars = {}
        nkUISetup.modules.actionBars.bars[LibEKL.Unit.GetPlayerDetails().name] = { roles = {} }

        scaleUI ()
    end
    
    -- check for new char

    if nkUISetup.modules.actionBars.bars[LibEKL.Unit.GetPlayerDetails().name] == nil then
        nkUISetup.modules.actionBars.bars[LibEKL.Unit.GetPlayerDetails().name] = { roles = {} }
    end

    nkUISetup = EnKai.tools.updateSettings (_defaults, nkUISetup)

end

function internalFunc.toggleAlpha()
    
    uiElements.frames["player"]:SetAlpha(nkUISetup.modules.unitFrames.nonCombatAlpha)    
    uiElements.frames["player.pet"]:SetAlpha(nkUISetup.modules.unitFrames.nonCombatAlpha)
    uiElements.frames["player.target"]:SetAlpha(nkUISetup.modules.unitFrames.nonCombatAlpha)
    uiElements.frames["focus"]:SetAlpha(nkUISetup.modules.unitFrames.nonCombatAlpha)

end

function internalFunc.actionBarToggleAlpha()
    
    for k, v in pairs (uiElements.actionbars) do
        v:SetAlpha(nkUISetup.modules.actionBars.nonCombatAlpha)
    end

end

function settingsUI.checkbox (name, parent, text, active, callBack)

    local thisCheckbox = LibEKL.UICreateFrame("nkCheckbox", name, parent)
    
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

    local thisCombobox = LibEKL.UICreateFrame("nkCombobox", name, parent)
    
    thisCombobox:SetText(text, true)
    thisCombobox:SetActive(active)
    thisCombobox:SetLabelWidth(200)
	thisCombobox:SetWidth(300)    
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

    local thisSlider = LibEKL.UICreateFrame("nkSlider", name, parent)

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

    local thisText = LibEKL.UICreateFrame("nkText", name, parent)

    thisText:SetText(text, true)
    thisText:SetWidth(350)
    thisText:SetFontSize(14)
    thisText:SetTextFont(addonInfo.id, "MontserratSemiBold")
    thisText:SetFontColor(data.theme.labelColor.r, data.theme.labelColor.g, data.theme.labelColor.b, data.theme.labelColor.a)
    thisText:SetEffectGlow({strength = 3})

    return thisText

end

function settingsUI.header (name, parent, text)

    local thisHeader = LibEKL.UICreateFrame("nkText", name, parent)
    thisHeader:SetFontSize(16)
    thisHeader:SetText(text)
    thisHeader:SetTextFont(addonInfo.id, "MontserratSemiBold")
    thisHeader:SetFontColor(data.theme.labelColor.r, data.theme.labelColor.g, data.theme.labelColor.b, data.theme.labelColor.a)
    thisHeader:SetEffectGlow({strength = 3})

    return thisHeader

end

function internalFunc.setupUI ()
    
    local name = "nkUI.config"

    local config = LibEKL.UICreateFrame("nkWindow", name, uiElements.contextDialog)

    config:SetPoint("CENTER", UIParent, "CENTER")
    config:SetWidth(950)
    config:SetHeight(650)
    config:SetTitle(addonInfo.toc.Identifier .. " version ".. addonInfo.toc.Version)
    config:SetTitleFont(addonInfo.id, "MontserratBold")
    config:SetTitleFontSize(16)
    config:SetTitleEffect ( {strength = 3})
    config:SetCloseable(true)
    config:SetTitleFontColor(data.theme.labelColor.r, data.theme.labelColor.g, data.theme.labelColor.b, data.theme.labelColor.a)

    config:SetColor({
        type = "gradientLinear",
        transform = Utility.Matrix.Create(2, 2, math.pi, 0, 0), -- 180 degree angle
        color = {
            {r = 0.13, g = 0.15, b = 0.20, a = 1, position = 0}, -- Start color
            {r = 0.10, g = 0.11, b = 0.15, a = 1, position = 1}  -- End color
        }
    },  {
        r = 0x66 / 255,
        g = 0x56 / 255,
        b = 0x2e / 255,
        a = 1,
        cap = "round",
        miter = "miter",
        thickness = 2
    })

    local tabPane = LibEKL.UICreateFrame("nkTabPane", name .. ".tabPane", config:GetContent())
    tabPane:SetBorder(false)
    tabPane:SetVertical(true)
    tabPane:SetFont(addonInfo.id, "MontserratSemiBold")
    tabPane:SetColor(
        {   thickness = 1, 
            r = data.theme.windowEndColor.r, g = data.theme.windowEndColor.g, b = data.theme.windowEndColor.b, a = 0
        }, 
        {   type = 'solid', 
            r = data.theme.windowEndColor.r, g = data.theme.windowEndColor.g, b = data.theme.windowEndColor.b, a = .3},
     data.theme.labelColor, data.theme.labelColor)
    --SetColor(stroke, fill, newFontColor, newFontColorSelected)

    local paneTabTheme = settingsUI.uiConfigTabTheme(name .. ".tab.Theme", tabPane)
    local paneTabQuestTracker = settingsUI.uiConfigTabQuestTracker (name .. ".tab.QuestTracker", tabPane)
    local paneTabActionBar = settingsUI.uiConfigTabActionBar(name .. ".tab.ActionBar", tabPane)
    local paneTabLowerBar = settingsUI.uiConfigTabLowerBar(name .. ".tab.LowerBar", tabPane)
    local paneTabSCT = settingsUI.uiConfigTabSCT(name .. ".tab.SCT", tabPane)
    local paneTabTooltip = settingsUI.uiConfigTabTooltip(name .. ".tab.Tooltip", tabPane)
    local paneTabBuffBar = settingsUI.uiConfigTabBuffBar(name .. ".tab.BuffBar", tabPane)

    local paneTabRessourceBar = settingsUI.uiConfigTabRessourceBar(name .. ".tab.RessourceBar", tabPane, nkUISetup.modules.unitFrames.frames.ressourceBar)

    local paneTabPlayerCastbar = settingsUI.uiConfigTabCastBar(name .. ".tab.PlayerCastbar", tabPane, "player.castbar", nkUISetup.modules.unitFrames.frames.playerCastBar)
    local paneTabTargetCastbar = settingsUI.uiConfigTabCastBar(name .. ".tab.TargetCastbar", tabPane, "player.target.castbar", nkUISetup.modules.unitFrames.frames.targetCastBar)

    local paneTabUnitFrameBasic = settingsUI.uiConfigTabUFBasic(name .. ".tab.UnitFrameBasic", tabPane)

    local paneTabUnitFrames = settingsUI.uiConfigTabUnitFrames(name .. ".tab.UnitFrames", tabPane)

    --local EnKaiLogo = LibEKL.UICreateFrame("nkTexture", name .. ".EnKaiLogo", config)
    --EnKaiLogo:SetTextureAsync(LibEKL.Art.GetThemeLogo()[1],LibEKL.Art.GetThemeLogo()[2])
    --EnKaiLogo:SetPoint("BOTTOMLEFT", config:GetContent(), "BOTTOMLEFT", 10, -5)
    ---EnKaiLogo:SetWidth(125)
    --EnKaiLogo:SetHeight(33)

    local versionText = LibEKL.UICreateFrame("nkText", name .. ".versionText", config)
    versionText:SetFontSize(11)
    versionText:SetText(string.format("Version %s", addonInfo.toc.Version))
    versionText:SetFontColor(data.theme.labelColor.r, data.theme.labelColor.g, data.theme.labelColor.b, data.theme.labelColor.a)
    versionText:SetPoint("BOTTOMRIGHT", tabPane, "BOTTOMRIGHT", -5, -5)
    versionText:SetLayer(99)

    EnKai.ui.setFont(versionText, addonInfo.id, "Montserrat")

    local closeButton = LibEKL.UICreateFrame("nkButtonMetro", name .. ".closeButton", config:GetContent())

    closeButton:SetPoint("BOTTOMRIGHT", config:GetContent(), "BOTTOMRIGHT", -10, -10)
    closeButton:SetText("Close")
    closeButton:SetScale(.8)
    closeButton:SetLayer(9)
    closeButton:SetFont(addonInfo.id, "MontserratSemiBold")
    closeButton:SetLabelColor(data.theme.labelColor)
    closeButton:SetEffectGlow ({ strength = 3 })
    closeButton:SetFillColor({ type = "solid", r = 0, g = 0, b = 0, a = .4})
    closeButton:SetBorderColor({ r = 0, g = 0, b = 0, a = .7, thickness = 1})

    Command.Event.Attach(EnKai.events[name .. ".closeButton"].Clicked, function (_, newValue)
        uiElements.settings:SetVisible(false)   
    end, name .. ".closeButton.Clicked")

    local tutorialButton = LibEKL.UICreateFrame("nkButtonMetro", name .. ".tutorialButton", config:GetContent())

    tutorialButton:SetPoint("CENTERRIGHT", closeButton, "CENTERLEFT", -10, 0)
    tutorialButton:SetText("Tutorial")
    tutorialButton:SetScale(.8)
    tutorialButton:SetLayer(9)
    tutorialButton:SetFont(addonInfo.id, "MontserratSemiBold")
    tutorialButton:SetLabelColor(data.theme.labelColor)
    tutorialButton:SetEffectGlow ({ strength = 3 })
    tutorialButton:SetFillColor({ type = "solid", r = 0, g = 0, b = 0, a = .4})
    tutorialButton:SetBorderColor({ r = 0, g = 0, b = 0, a = .7, thickness = 1})

    Command.Event.Attach(EnKai.events[name .. ".tutorialButton"].Clicked, function (_, newValue)
        internalFunc.tutorial()
    end, name .. ".tutorialButton.Clicked")

    local moveButton = LibEKL.UICreateFrame("nkButtonMetro", name .. ".moveButton", config:GetContent())

    moveButton:SetPoint("CENTERRIGHT", tutorialButton, "CENTERLEFT", -10, 0)
    moveButton:SetText("Move UI")
    moveButton:SetScale(.8)
    moveButton:SetLayer(9)
    moveButton:SetFont(addonInfo.id, "MontserratSemiBold")
    moveButton:SetLabelColor(data.theme.labelColor)
    moveButton:SetEffectGlow ({ strength = 3 })
    moveButton:SetFillColor({ type = "solid", r = 0, g = 0, b = 0, a = .4})
    moveButton:SetBorderColor({ r = 0, g = 0, b = 0, a = .7, thickness = 1})

    Command.Event.Attach(EnKai.events[name .. ".moveButton"].Clicked, function (_, newValue)
        internalFunc.initMove()
        config:SetVisible(false)
    end, name .. ".moveButton.Clicked")

    local oSetVisible = config.SetVisible

    function config:SetVisible(flag)   
        oSetVisible(self, flag)
    end

    tabPane:SetPoint("TOPLEFT", config:GetContent(), "TOPLEFT", 10, 10)
    tabPane:SetPoint("BOTTOMRIGHT", config:GetContent(), "BOTTOMRIGHT", -10, -50)
    tabPane:SetLayer(1)

    tabPane:AddPane( { label = "Theme", effect = { strength = 3 }, frame = paneTabTheme, initFunc = function() paneTabTheme:build() end}, false)
    tabPane:AddPane( { label = "Quest Tracker", effect = { strength = 3 }, frame = paneTabQuestTracker, initFunc = function() paneTabQuestTracker:build() end}, false)

    tabPane:AddPane( { label = "Action bar", effect = { strength = 3 }, frame = paneTabActionBar, initFunc = function() paneTabActionBar:build() end}, false)
    tabPane:AddPane( { label = "Lower bar", effect = { strength = 3 }, frame = paneTabLowerBar, initFunc = function() paneTabLowerBar:build() end}, false)
    tabPane:AddPane( { label = "SCT", effect = { strength = 3 }, frame = paneTabSCT, initFunc = function() paneTabSCT:build() end}, false)
    tabPane:AddPane( { label = "Tooltip", effect = { strength = 3 }, frame = paneTabTooltip, initFunc = function() paneTabTooltip:build() end}, false)
    tabPane:AddPane( { label = "Buff bar", effect = { strength = 3 }, frame = paneTabBuffBar, initFunc = function() paneTabBuffBar:build() end}, false)

    tabPane:AddPane( { label = "Ressource bar", effect = { strength = 3 }, frame = paneTabRessourceBar, initFunc = function() paneTabRessourceBar:build() end}, false)

    tabPane:AddPane( { label = "Player castbar", effect = { strength = 3 }, frame = paneTabPlayerCastbar, initFunc = function() paneTabPlayerCastbar:build() end}, false)
    tabPane:AddPane( { label = "Target castbar", effect = { strength = 3 }, frame = paneTabTargetCastbar, initFunc = function() paneTabTargetCastbar:build() end}, false)

    tabPane:AddPane( { label = "Unitframes", effect = { strength = 3 }, frame = paneTabUnitFrameBasic, initFunc = function() paneTabUnitFrameBasic:build() end}, false)

    tabPane:AddPane( { label = "Units", effect = { strength = 3 }, frame = paneTabUnitFrames, initFunc = function() paneTabUnitFrames:build() end}, true)

    --if EnKai.events.checkEvents ("nkRadial", true) == false then return nil end

    config:SetVisible(true)

    return config

end

function internalFunc.setupInit ()
    if uiElements.settings == nil then
        uiElements.settings = internalFunc.setupUI ()
    else
        uiElements.settings:SetVisible(true)
    end
end


