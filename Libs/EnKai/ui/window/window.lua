local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal
local data       	= privateVars.data

---------- addon internal function block ---------

--[[
   _uiWindow

    Description:
        Creates a draggable RiftWindow with customizable properties and events.
        
    Parameters:
        name (string): Unique identifier for the window.
        parent (frame): Parent frame to attach the window to.
        
    Returns:
        window (frame): Configured RiftWindow frame with additional functionality.
        
    Process:
        1. Creates a RiftWindow frame with the specified name and parent.
        2. Adds a draggable frame to the window's border.
        3. Adds a close button with secure mode support.
        4. Implements window dragging functionality with boundary checks.
        5. Provides methods to control window behavior (draggable, closeable, secure close).
        6. Overrides SetWidth and SetPoint methods to maintain consistent behavior.
        7. Creates and registers a "Moved" event for position tracking.
       
    Notes:
        - The window will respect UI boundaries defined in data.uiBoundLeft, etc.
        - Secure mode prevents closing during combat if oFuncs.oInspectSystemSecure() is false.
        - The window maintains its position within screen bounds when moved.
]]
local function _uiWindow(name, parent) 

	if EnKai.internal.checkEvents (name, true) == false then return nil end

	local window = UI.CreateFrame('RiftWindow', name, parent)
	local dragFrame = EnKai.uiCreateFrame ('nkFrame', name .. 'dragFrame', window:GetBorder())	
	local btClose = UI.CreateFrame("RiftButton", name .. ".btClose", window)
	
	local properties = {}

	function window:SetValue(property, value)
		properties[property] = value
	end
	
	function window:GetValue(property)
		return properties[property]
	end
	
	local allowSecureClose = true

	window:SetValue("name", name)
	window:SetValue("parent", parent)

	-- ***** WINDOW DRAGGING *****
	
	dragFrame:SetPoint ("TOPLEFT", window, "TOPLEFT", 0, 0)
	dragFrame:SetHeight(60)
	dragFrame:SetWidth(100)	
	dragFrame:SetVisible(false)
	
	dragFrame:EventAttach(Event.UI.Input.Mouse.Left.Down, function (self)		
		
		self.leftDown = true
		local mouse = Inspect.Mouse()
		
		self.originalXDiff = mouse.x - self:GetLeft()
		self.originalYDiff = mouse.y - self:GetTop()
		
		local left, top, right, bottom = window:GetBounds()
		
		window:ClearAll()
		window:SetPoint("TOPLEFT", UIParent, "TOPLEFT", left, top)
		window:SetWidth(right-left)
		window:SetHeight(bottom-top)
	
	end, name .. "dragFrame.Left.Down")
	
	dragFrame:EventAttach( Event.UI.Input.Mouse.Cursor.Move, function (self, _, x, y)	
		if self.leftDown ~= true then return end
		
		local newX, newY = x - self.originalXDiff, y - self.originalYDiff
    
    if newX >= data.uiBoundLeft and newX <= data.uiBoundRight and newY + window:GetHeight() >= data.uiBoundTop and newY + window:GetHeight() <= data.uiBoundBottom then    
      window:SetPoint("TOPLEFT", UIParent, "TOPLEFT", newX, newY)
    end
	end, name .. "dragFrame.Cursor.Move")
	
	dragFrame:EventAttach( Event.UI.Input.Mouse.Left.Up, function (self)	
	    self.leftDown = false
	    EnKai.eventHandlers[name]["Moved"](window:GetLeft(), window:GetTop())
	end, name .. "dragFrame.Left.Up")
	
	dragFrame:EventAttach( Event.UI.Input.Mouse.Left.Upoutside, function (self)	
	    self.leftDown = false
	    EnKai.eventHandlers[name]["Moved"](window:GetLeft(), window:GetTop())
	end, name .. "dragFrame.Left.Upoutside")

	-- ***** CLOSE BUTTON *****
	
	btClose:SetSkin("close")
	btClose:SetPoint("TOPRIGHT", window, "TOPRIGHT", -8, 15)
	
	btClose:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		if oFuncs.oInspectSystemSecure() == false or allowSecureClose == true then window:SetVisible(false) end
	end, name .. "btClose.Left.Click")

	-- ***** WINDOW FUNCTIONS *****

	function window:SetDragable (flag)
		dragFrame:SetVisible(flag)
	end
	
	function window:SetCloseable (flag)
		btClose:SetVisible(flag)
	end
	
	function window:PreventSecureClose(flag)
		if flag == true then allowSecureClose = false else allowSecureClose = true end
	end
		
	-- ***** WINDOW SIZING *****

	local oSetWidth, oSetHeight, oSetPoint = window.SetWidth, window.SetHeight, window.SetPoint
	
	function window:SetWidth(width)
		oSetWidth(self, width)
		dragFrame:SetWidth(width)
	end
	
	function window:SetPoint(from, object, to, x, y)
	
		if x ~= nil then
			if x < 0 then x = 0 end
			if x + window:GetWidth() > UIParent:GetWidth() then x = UIParent:GetWidth() - window:GetWidth() end
		end
		
		if y ~= nil then
			if y < 0 then y = 0 end
			if y + window:GetHeight() > UIParent:GetHeight() then y = UIParent:GetHeight() - window:GetHeight() end
		end
		
		if x ~= nil and y ~= nil then			
			oSetPoint(self, from, object, to, x, y)
		else
			oSetPoint(self, from, object, to)
		end
		
	end

	-- ***** EVENT HANDLERS *****
	
	EnKai.eventHandlers[name]["Moved"], EnKai.events[name]["Moved"] = Utility.Event.Create(addonInfo.identifier, name .. "Moved")
		
	return window
	
end

uiFunctions.NKWINDOW = _uiWindow