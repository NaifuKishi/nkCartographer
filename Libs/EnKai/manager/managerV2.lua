--[[
   _nkManagerV2
    Description:
        Module for managing addon buttons that appear on mouse over.
    Public Functions:
        - RegisterButton: Registers a new button with an icon and callback function.
        - UnregisterButton: Unregisters a button by its name.
    Version History:
        - 1.0.0: Initial release
]]

local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.managerV2 then EnKai.managerV2 = {} end

local InspectMouse        = Inspect.Mouse
local InspectSystemSecure = Inspect.System.Secure

---------- init local variables ---------
				
local _context = UI.CreateContext("nkManagerV2")
--_context:SetSecureMode('restricted')

---------- local function block ---------

local _buttons = {}
local _buttonIcons = {}
local _frame = nil

local function _fctSecureEnter() _frame:CloseAllMenus () end

--[[
   _createFrame
    Description:
        Creates the frame that will hold all registered buttons.
    Parameters:
        None
    Returns:
        None
]]
local function _createFrame()
    _frame = UI.CreateFrame("Frame", "nkManagerV2Frame", _context)
    _frame:SetPoint("TOPLEFT", UI.Native.MapMini, "BOTTOMLEFT")
    _frame:SetWidth(UI.Native.MapMini:GetWidth())
    _frame:SetHeight(42)
    _frame:SetBackgroundColor(0, 0, 0, 0.5)
    _frame:SetAlpha(0) 

    local function _fctCheckDisplay ()
      local x, y = InspectMouse().x, InspectMouse().y
      local frameX = _frame:GetLeft()
      local frameY = _frame:GetTop()
      local frameWidth, frameHeight = _frame:GetWidth(), _frame:GetHeight()

      if x >= frameX and x <= frameX + frameWidth and y >= frameY and y <= frameY + frameHeight then
        return true
      else
        return false
      end
    end

    -- Show frame on mouse over
    _frame:EventAttach(Event.UI.Input.Mouse.Cursor.Move, function()
        if _fctCheckDisplay() then
          _frame:SetAlpha(1)
        else
          _frame:SetAlpha(0)
        end
    end, "EnKai.managerV2.UI.Input.Mouse.Cursor.Move")

    _frame:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function()
        if _fctCheckDisplay() then
          _frame:SetAlpha(1)
        else
          _frame:SetAlpha(0)
        end
    end, "EnKai.managerV2.UI.Input.Mouse.Cursor.Out")

end

--[[
   _updateFrame
    Description:
        Updates the frame to display all registered buttons.
    Parameters:
        None
    Returns:
        None
]]
local function _updateFrame()

    if not _frame then
        _createFrame()
        Command.Event.Attach(Event.System.Secure.Enter, _fctSecureEnter, "nkManagerv2.System.Secure.Enter")
    end

    -- Clear existing buttons
    for _, child in ipairs(_frame:GetChildren()) do
        child:Destroy()
    end	
		
    local from, object, to, x, y = "TOPLEFT", _frame, "TOPLEFT", 5, 5
    local counter = 1
    local maxCounter =math.floor(UI.Native.MapMini:GetWidth() / 37)    
    local height = 42
    local firstButton

    x = (UI.Native.MapMini:GetWidth() - (maxCounter * 32) - ((maxCounter -1) * 5)) / 2    

    -- Add new buttons
    for name, buttonInfo in pairs(_buttons) do

        local button

        if _buttonIcons[name] == nil then
            button = UI.CreateFrame("Texture", "EnKai.minimapButton." .. name, _frame)
            button:SetTexture(buttonInfo.iconSource, buttonInfo.icon)
            button:SetWidth(32)
            button:SetHeight(32)
            button:EventDetach(Event.UI.Input.Mouse.Left.Click, nil, name .. ".Click")
            button:EventAttach(Event.UI.Input.Mouse.Left.Click, buttonInfo.callback, name .. ".Click")
            _buttonIcons[name] = button
        else
            button = _buttonIcons[name]
        end

        button:SetPoint(from, object, to, x, y)

        if counter == 1 then
            firstButton = button
        end

        counter = counter + 1
        from, object, to, x, y = "TOPLEFT", button, "TOPRIGHT", 5, 0

        if counter > maxCounter then
            counter = 1
            from, object, to, x, y = "TOPLEFT", firstButton, "BOTTOMLEFT", 0, 5
        end
    end
              
    _frame:SetHeight(height)
end

--[[
   RegisterButton
    Description:
        Registers a new button with an icon and callback function.
    Parameters:
        name (string): The name of the button.
        iconSource (string): The source of the icon (addonname or Rift)
        icon (string): The path to the icon texture.
        callback (function): The function to call when the button is clicked.
    Returns:
        None
]]
function EnKai.managerV2.RegisterButton(name, iconSource, icon, callBack)
    
    _buttons[name] = {icon = icon, iconSource = iconSource, callback = callBack}
    _updateFrame()

end

--[[
   UnregisterButton
    Description:
        Unregisters a button by its name.
    Parameters:
        name (string): The name of the button to unregister.
    Returns:
        None
]]
function EnKai.managerV2.UnregisterButton(name)
    _buttons[name] = nil
    _updateFrame()
end

function EnKai.managerV2.GetFrame()
  return _frame
end