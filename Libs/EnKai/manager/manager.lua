local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.manager then EnKai.manager = {} end

local oFuncs	  = privateVars.oFuncs

---------- init local variables ---------
				
local _context = UI.CreateContext("nkManager")
_context:SetSecureMode('restricted')

local _InspectMouse = Inspect.Mouse

local _button = nil
local _rightDown = nil
local _startX = nil
local _startY = nil

---------- local function block ---------

local function _uiAddonButton()

  local button = EnKai.uiCreateFrame ('nkTexture', 'nkButton', _context)
    
  button:SetTextureAsync('EnKai', 'gfx/nkButton.png')
  button:SetWidth(35)
  button:SetHeight(34)
  button:SetPoint ("TOPRIGHT", UIParent, "TOPRIGHT", EnKaiSetup.mmButtonX, EnKaiSetup.mmButtonY)
  button:SetSecureMode('restricted')
  
  local menu = EnKai.uiCreateFrame("nkMenu", 'EnKai.managerMenu', button)
    
  menu:SetFontSize(13)
  menu:SetWidth(120)
  menu:SetBackgroundColor(0.208, 0.208, 0.208, 1)
  menu:SetLabelColor(1, 1, 1, 1)
  menu:SetBorderColor(0, 0, 0, 1)
  menu:SetPoint("TOPRIGHT", button, "CENTER", -10, 0)
  menu:SetVisible(false)
  
  local items = {}
  local subMenus
  
  EnKai.ui.attachGenericTooltip (button, "Naifu's Addons", privateVars.langTexts.tooltips.managerButton)
  
  button:EventAttach(Event.UI.Input.Mouse.Left.Click, function (self)
    if oFuncs.oInspectSystemSecure() == false then
      if menu:GetVisible() == true then 
        menu:SetVisible(false) 
        button:CloseAllMenus()
      elseif menu:GetEntryCount() > 0 then
        menu:SetVisible(true) 
      end
    end
  end, "EnKai.manager.Left.Click")  
    
  function button:AddAddon(addonName, subMenuItems, mainFunc)

    if subMenuItems == nil then
      menu:AddEntry ({ closeOnClick = true, label = addonName, callBack = function () button:CloseAllMenus(); mainFunc() end })
    else
      
      local newSubMenu = EnKai.uiCreateFrame("nkMenu", 'EnKai.managerMenu' .. addonName, button)
      newSubMenu:SetFontSize(13)
      newSubMenu:SetWidth(100)
      newSubMenu:SetBackgroundColor(0.208, 0.208, 0.208, 1)
      newSubMenu:SetLabelColor(1, 1, 1, 1)
      newSubMenu:SetBorderColor(0, 0, 0, 1)
      newSubMenu:SetVisible(false)
      
      local showSubMenu = function ()
        for k, v in pairs (subMenus) do v:SetVisible(false) end
        
        if newSubMenu:GetVisible() == true then 
          newSubMenu:SetVisible(false) 
        elseif newSubMenu:GetEntryCount() > 0 then
          newSubMenu:SetVisible(true) 
        end 
      end
      
      for k, v in pairs(subMenuItems) do        
        if v.seperator == true then
          newSubMenu:AddSeparator()         
        elseif v.callBack ~= nil then
          newSubMenu:AddEntry({ closeOnClick = true, label = v.label, macro = v.macro, callBack = function() button:CloseAllMenus(); v.callBack() end })
        else
          newSubMenu:AddEntry({ closeOnClick = true, label = v.label, macro = v.macro, callBack = function() button:CloseAllMenus() end })
        end
      end
            
      local mainMenuItems = menu:GetEntries()
      
      if #mainMenuItems > 0 then
        newSubMenu:SetPoint("TOPRIGHT", mainMenuItems[#mainMenuItems], "TOPLEFT", 0, 18)
      else
        newSubMenu:SetPoint("TOPRIGHT", menu, "TOPLEFT")
      end
      
      if subMenus == nil then subMenus = {} end
      table.insert(subMenus, newSubMenu)
      
      menu:AddEntry ( { subMenu = true, label = addonName, callBack = function () showSubMenu() end } )
    end 
    
  end 
  
  function button:CloseAllMenus ()
    if subMenus ~= nil then
      for k, v in pairs (subMenus) do v:SetVisible(false) end
    end
    menu:SetVisible(false)
  end
  
  function button:ToggleMenu()
    if menu:GetVisible() == true then 
      menu:SetVisible(false) 
    elseif menu:GetEntryCount() > 0 then
      menu:SetVisible(true) 
    end 
  end
  
  button:EventAttach(Event.UI.Input.Mouse.Middle.Down, function (self)
  
	EnKaiSetup.locked = not EnKaiSetup.locked
    
  end, "EnKai.manager.Middle.Down")  
  
  button:EventAttach(Event.UI.Input.Mouse.Right.Down, function (self)
  
	if EnKaiSetup.locked then return end
  
    if oFuncs.oInspectSystemSecure() == true then return end
    _rightDown = true
    local mouseData = _InspectMouse()
    _startX, _startY = mouseData.x, mouseData.y
    
  end, "EnKai.manager.Right.Down")  
  
  button:EventAttach(Event.UI.Input.Mouse.Cursor.Move, function(self, _, x, y)
    if _rightDown ~= true then return end
    
    local curdivX = x - _startX
    local curdivY = y - _startY
    
    button:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", EnKaiSetup.mmButtonX + curdivX, EnKaiSetup.mmButtonY + curdivY )
  end, "EnKai.manager.Mouse.Cursor.Move") 
  
  button:EventAttach(Event.UI.Input.Mouse.Right.Up, function(self, _) 
    if _rightDown ~= true then return end
    
    _rightDown = false
    
    if _startX == nil or _startY == nil then return end
        
    local mouseData = _InspectMouse()
    local curdivX = mouseData.x - _startX
    local curdivY = mouseData.y - _startY  
      
    EnKaiSetup.mmButtonX = EnKaiSetup.mmButtonX + curdivX
    EnKaiSetup.mmButtonY = EnKaiSetup.mmButtonY + curdivY
    

  end, "EnKai.manager.Right.Up")  
  
  button:EventAttach(Event.UI.Input.Mouse.Right.Upoutside, function(self)
    if _rightDown ~= true then return end
    
    _rightDown = false
    
    local mouseData = _InspectMouse()
    local curdivX = mouseData.x - _startX
    local curdivY = mouseData.y - _startY  
      
    EnKaiSetup.mmButtonX = EnKaiSetup.mmButtonX + curdivX
    EnKaiSetup.mmButtonY = EnKaiSetup.mmButtonY + curdivY
  end, "EnKai.manager.Right.Upoutside") 
  
  return button
  
end


local function _fctSecureEnter() _button:CloseAllMenus () end


---------- library public function block ---------   
      
function EnKai.manager.init(addonName, subMenuItems, mainFunc)

	if _button == nil then 
		_button = _uiAddonButton() 
		Command.Event.Attach(Event.System.Secure.Enter, _fctSecureEnter, "nkManager.Ssytem.Secure.Enter")
	end	
	
	if addonName ~= nil then _button:AddAddon (addonName, subMenuItems, mainFunc) end

end