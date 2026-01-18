local addonInfo, privateVars = ...

---------- init namespace ---------

if not LibMap then LibMap = {} end
if not LibMap.ui then LibMap.ui = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end
if not privateVars.uiNames then privateVars.uiNames = {} end

if privateVars.uiContext == nil then privateVars.uiContext = UI.CreateContext("LibMap.ui") end

if not privateVars.uiElements then privateVars.uiElements  = {} end

local data       		= privateVars.data
local internal   		= privateVars.internal
local uiFunctions		= privateVars.uiFunctions
local uiNames    		= privateVars.uiNames
local uiElements		= privateVars.uiElements

local uiContext   		= privateVars.uiContext
local uiTooltipContext	= nil

if not uiElements.messageDialog then uiElements.messageDialog = {} end
if not uiElements.confirmDialog then uiElements.confirmDialog = {} end

local InspectSystemSecure 		= Inspect.System.Secure
local InspectAddonCurrent 		= Inspect.Addon.Current
local InspectAbilityNewDetail	= Inspect.Ability.New.Detail
local InspectAbilityDetail		= Inspect.Ability.Detail
local stringUpper				= string.upper
local stringFormat				= string.format
local stringLower				= string.lower
local stringGSub				= string.gsub

---------- init variables --------- 

data.frameCount = 0
data.canvasCount = 0
data.textCount = 0
data.textureCount = 0
data.uiBoundLeft, data.uiBoundTop, data.uiBoundRight, data.uiBoundBottom = UIParent:GetBounds()

---------- init local variables ---------

local _gc = {}
local _freeElements = {}
--local tooltipCheckTime
local _fonts = {}

---------- local function block ---------

--[[
    _recycleElement

    Description:
        This function prepares a UI element for reuse by resetting its properties and clearing its state.
        It's typically used when recycling elements from the garbage collector to the free elements pool.

    Parameters:
        element (object): The UI element to be recycled
        elementType (string): The type of the UI element (e.g., 'nkFrame', 'nkCanvas', etc.)

    Returns:
        None

    Process:
        1. Hides the element by setting its visibility to false
        2. Clears all positioning and layout information
        3. Resets the background color to transparent
        4. Sets the element to the default strata and layer
        5. Sets mouse masking to full (blocks all mouse interactions)
        6. Resets the element's dimensions to 0x0
        7. Clears any mouseover unit that might be set
        8. Detaches all event handlers from the element
        9. Calls the element's internal _recycle method to complete the recycling process

    Notes:
        - This function is typically called when moving elements from the garbage collector to the free elements pool
        - The function ensures the element is in a clean state before being reused
        - The _recycle method is called to complete the recycling process
        - Event handlers are detached to prevent memory leaks
]]
local function _recycleElement (element, elementType)

	element:SetVisible(false)
	element:ClearAll()
	element:SetBackgroundColor(0,0,0,0)
	element:SetStrata('main')
	element:SetLayer(0)
	element:SetMouseMasking('full')
	element:SetWidth(0)
	element:SetHeight(0)
	
	if element:GetMouseoverUnit() ~= nil then element:SetMouseoverUnit(nil) end
	
	--element:SetSecureMode("normal")
	
	for k, v in pairs (element:GetEvents()) do
	  element:EventDetach(k, nil, v.label, v.priority, v.owner)
	end
	
	element:_recycle()
	
end

--[[
    _setInsecure

    Description:
        This function sets a UI element to insecure mode, allowing it to be modified by insecure code.
        This is typically used when converting restricted elements to normal elements in the garbage collector.

    Parameters:
        element (object): The UI element to be set to insecure mode

    Returns:
        None

    Process:
        1. Sets the element's secure mode to "normal" (insecure)

    Notes:
        - This function is typically called when converting restricted elements to normal elements
        - The function is used in the garbage collector to make elements available for reuse
        - The conversion might fail if the element has secure dependencies
]]
local function _setInsecure (element)

  element:SetSecureMode("normal")

end

---------- addon internal function block ---------

-- the below is a prototype to frame resuing
-- missing SetName() on frames to fully build this

--[[
    internal.uiAddToGarbageCollector

    Description:
        This function adds a UI element to the garbage collector (_gc) table for later recycling.
        It categorizes elements based on their secure mode (normal or restricted) and triggers
        a garbage collection changed event.

    Parameters:
        frameType (string): The type of frame being added to the garbage collector
        element (object): The UI element to be added to the garbage collector

    Returns:
        None

    Process:
        1. Converts the frame type to uppercase for consistent comparison
        2. Initializes the garbage collector table for the frame type if it doesn't exist
        3. Initializes the normal and restricted element tables for the frame type if they don't exist
        4. Adds the element to the appropriate secure mode table in the garbage collector
        5. Hides the element if the system is not in secure mode or the element is normal
        6. Triggers a garbage collection changed event

    Notes:
        - The function maintains separate tables for normal and restricted elements
        - Elements are hidden when added to the garbage collector if appropriate
        - The function triggers an event to notify other systems of the garbage collection change
        - The function ensures proper initialization of the garbage collector tables
]]
function internal.uiAddToGarbageCollector (frameType, element)

  local checkFrameType = stringUpper(frameType) 

  if _gc[checkFrameType] == nil then _gc[checkFrameType] = {} end
  if _gc[checkFrameType].normal == nil then _gc[checkFrameType].normal = {} end
  if _gc[checkFrameType].restricted == nil then _gc[checkFrameType].restricted = {} end
  
  table.insert(_gc[checkFrameType][element:GetSecureMode()], element) 
  if InspectSystemSecure() == false or element:GetSecureMode() == 'normal' then element:SetVisible(false) end
  
  LibMap.eventHandlers["LibMap.internal"]["gcChanged"]()
  
end  

--[[
    internal.uiGarbageCollector

    Description:
        This function processes elements in the garbage collector (_gc) table, recycling them for reuse.
        It handles both secure and insecure elements, moving them to the free elements pool (_freeElements).
        The function also triggers an event when the garbage collection changes.

    Parameters:
        None

    Returns:
        None

    Process:
        1. Checks if the system is in secure mode
        2. Processes restricted elements first if not in secure mode:
           - Attempts to make restricted elements insecure
           - Recycles successful conversions
           - Handles failed conversions
        3. Processes normal elements:
           - Recycles all normal elements
           - Moves them to the free elements pool
        4. Clears processed elements from the garbage collector
        5. Triggers a garbage collection changed event if any elements were processed
        6. Includes debug tracing if nkDebug is available

    Notes:
        - The function handles both secure and insecure elements differently
        - Restricted elements are only processed when not in secure mode
        - The function maintains separate pools for different element types
        - Debug tracing is included for performance monitoring
]]
function internal.uiGarbageCollector ()
	local debugId  
    if nkDebug then debugId = nkDebug.traceStart (InspectAddonCurrent(), "LibMap internal.uiGarbageCollector") end

	local secure = InspectSystemSecure()
	local flag = false
	local restrictedFailed = false

	for elementType, secureModes in pairs(_gc) do

		if secure == false and #_gc[elementType].restricted > 0 then
			for idx = 1, #_gc[elementType].restricted, 1 do

				if _gc[elementType].restricted[idx] ~= false then

					local element = _gc[elementType].restricted[idx]
					local err = pcall (_setInsecure, element)
	
					if err == true then -- no error
						flag = true
						_recycleElement(element, elementType)
						uiNames[elementType][element:GetRealName()] = ""

						if _freeElements[elementType] == nil then _freeElements[elementType] = {} end
						table.insert(_freeElements[elementType], element)
						_gc[elementType].restricted[idx] = false
					else
						restrictedFailed = true
					end
				end
			end

			if restrictedFailed == false then _gc[elementType].restricted = {} end
		end

		for idx = 1, #_gc[elementType].normal, 1 do
			flag = true
			local element = _gc[elementType].normal[idx]
			_recycleElement(element, elementType)
			uiNames[elementType][element:GetRealName()] = ""

			if _freeElements[elementType] == nil then _freeElements[elementType] = {} end
			table.insert(_freeElements[elementType], element)
		end

		_gc[elementType].normal = {}
		
	end

	if flag == true then LibMap.eventHandlers["LibMap.internal"]["gcChanged"]() end

	if nkDebug then nkDebug.traceEnd (InspectAddonCurrent(), "LibMap internal.uiGarbageCollector", debugId) end	
end

--[[
    internal.uiCheckTooltips

    Description:
        This function checks the visibility of various tooltips and hides them if their target elements are no longer visible.
        It ensures that tooltips are properly hidden when their associated UI elements are hidden or removed.

    Parameters:
        None

    Returns:
        None

    Process:
        1. Checks if the ability tooltip exists and is visible
           - If its target element is no longer visible, hides the tooltip
        2. Checks if the generic tooltip exists and is visible
           - If its target element is no longer visible, hides the tooltip
        3. Checks if the item tooltip exists and is visible
           - If its target element is no longer visible, hides the tooltip

    Notes:
        - This function is typically called periodically to maintain tooltip visibility consistency
        - It prevents tooltips from remaining visible when their target elements are hidden
        - The function handles three different types of tooltips (ability, generic, and item)
        - The commented-out time check suggests this function might have been intended to run periodically
]]
function internal.uiCheckTooltips ()

	-- local now = oFuncs.oInspectTimeFrame()
	-- if tooltipCheckTime == nil or now - tooltipCheckTime > 1 then
		-- tooltipCheckTime = now

		if uiElements.abilityTooltip ~= nil and uiElements.abilityTooltip:GetVisible() == true then
			if uiElements.abilityTooltip:GetTarget():GetVisible() == false then uiElements.abilityTooltip:SetVisible(false) end
		end
	
		if uiElements.genericTooltip ~= nil and uiElements.genericTooltip:GetVisible() == true then
			if uiElements.genericTooltip:GetTarget():GetVisible() == false then uiElements.genericTooltip:SetVisible(false) end
		end
	
		if uiElements.itemTooltip ~= nil and uiElements.itemTooltip:GetVisible() == true then
			if uiElements.itemTooltip:GetTarget():GetVisible() == false then uiElements.itemTooltip:SetVisible(false) end
		end
	--end

end


--[[
    internal.uiSetupBoundCheck

    Description:
        This function sets up horizontal and vertical test frames to monitor UI boundary changes.
        These frames are positioned at the edges of the UIParent and trigger updates to the
        stored boundary values whenever their size changes.

    Parameters:
        None

    Returns:
        None

    Process:
        1. Creates a horizontal test frame (testFrameH) that spans the top edge of UIParent
        2. Sets the frame to be transparent and positioned at the top of UIParent
        3. Attaches an event handler to update boundary values when the frame's size changes
        4. Creates a vertical test frame (testFrameV) that spans the left edge of UIParent
        5. Sets the frame to be transparent and positioned at the left of UIParent
        6. Attaches an event handler to update boundary values when the frame's size changes

    Notes:
        - The horizontal frame is positioned with a small offset (1 pixel) to ensure it triggers size changes
        - The vertical frame is positioned with a small offset (1 pixel) to ensure it triggers size changes
        - Both frames are transparent to avoid visual impact
        - The event handlers update the stored boundary values when the frames' sizes change
        - This function is typically called once during initialization to set up boundary monitoring
]]
function internal.uiSetupBoundCheck()

	local testFrameH = LibEKL.UICreateFrame ('nkFrame', "LibMap.ui.boundTestFrameH", uiContext)
	testFrameH:SetBackgroundColor(0, 0, 0, 0)
	testFrameH:SetPoint("TOPLEFT", UIParent, "TOPLEFT")
	testFrameH:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", 0, 1)

	testFrameH:EventAttach(Event.UI.Layout.Size, function (self)
		data.uiBoundLeft, data.uiBoundTop, data.uiBoundRight, data.uiBoundBottom = UIParent:GetBounds()
	end, testFrameH:GetName() .. ".UI.Layout.Size")

	local testFrameV = LibEKL.UICreateFrame("nkFrame", "boundTestFrameV", uiContext)
	testFrameV:SetBackgroundColor(0, 0, 0, 0)
	testFrameV:SetPoint("TOPLEFT", UIParent, "TOPLEFT")
	testFrameV:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 1, 0)

	testFrameV:EventAttach(Event.UI.Layout.Size, function (self)		
		data.uiBoundLeft, data.uiBoundTop, data.uiBoundRight, data.uiBoundBottom = UIParent:GetBounds()
	end, testFrameV:GetName() .. ".UI.Layout.Size")
	
end

---------- library public function block ---------


function LibMap.uiAddToGarbageCollector(frameType, element)
	
	-- internal.deRegisterEvents (name)
    
	-- if element.GetEvents ~= nil then
		-- for handle, details in pairs (element:GetEvents()) do
			-- element:EventDetach(handle, details.callback, details.label, details.priority, nil)
		-- end
	-- end
    
	-- if element.GetMacros ~= nil then 
		-- for k, v in pairs (element:GetMacros()) do element:EventMacroSet(k, nil) end
	-- end
    
    internal.uiAddToGarbageCollector (frameType, element)  

end

--[[
    LibMap.uiCreateFrame

    Description:
        Creates a new UI frame of the specified type, either by reusing an existing frame from the free elements pool
        or by creating a new one if no suitable frame is available. This function ensures proper naming and event handling
        for the created frame.

    Parameters:
        frameType (string): The type of frame to create (e.g., 'nkFrame', 'nkCanvas', etc.)
        name (string): The name to assign to the frame
        parent (object): The parent UI element to which the frame will be attached

    Returns:
        object: The created or reused UI frame object, or nil if creation fails

    Process:
        1. Validates input parameters and displays an error if invalid
        2. Checks if there's an available frame of the requested type in the free elements pool
        3. If available:
           - Verifies that the frame name is unique and not already in use
           - Reuses the frame by setting its parent and updating its name
           - Removes the frame from the free elements pool
           - Triggers a garbage collection changed event
        4. If not available:
           - Looks up the appropriate creation function for the frame type
           - Creates a new frame using the appropriate function
        5. Returns the created or reused frame object

    Notes:
        - The function handles both frame reuse and new frame creation
        - It maintains proper naming and event handling for the frames
        - The function triggers garbage collection events when frames are reused
        - Error handling is included for invalid parameters and unknown frame types
]]
function LibMap.uiCreateFrame (frameType, name, parent)

	if frameType == nil or name == nil or parent == nil then
		LibEKL.Tools.Error.Display (addonInfo.identifier, stringFormat("LibMap.uiCreateFrame - invalid number of parameters\nexpecting: type of frame (string), name of frame (string), parent of frame (object)\nreceived: %s, %s, %s", frameType, name, parent))
		return
	end

	local uiObject = nil

	local checkFrameType = stringUpper(frameType) 

	if _freeElements[checkFrameType] ~= nil and #_freeElements[checkFrameType] > 0 then

		if LibMap.internal.checkEvents (name, true) == false then return nil end

		uiObject = _freeElements[checkFrameType][1]    
		uiObject:SetParent(parent)

		if uiNames[checkFrameType] == nil then uiNames[checkFrameType] = {} end
		
		uiNames[checkFrameType][uiObject:GetRealName()] = name
		uiObject:SetVisible(true)
		uiObject:ClearAll() -- no clue why this is needed for canvas here but the one in _recycleElement doesn't seem to work

		table.remove(_freeElements[checkFrameType], 1)
		
		LibMap.eventHandlers["LibMap.internal"]["gcChanged"]()
		
	else
		local func = uiFunctions[checkFrameType]
		if func == nil then
			LibEKL.Tools.Error.Display (addonInfo.identifier, stringFormat("LibMap.uiCreateFrame - unknown frame type [%s]", frameType))
		else
			uiObject = func(name, parent)
		end
	end

	return uiObject

end

--[[
    LibMap.getGcCount
	
    Description:
        This function calculates and returns the count of UI elements in the garbage collector (_gc) table.
        It separates the count into normal and restricted elements.

    Parameters:
        None

    Returns:
        number: Count of normal elements in garbage collector
        number: Count of restricted elements in garbage collector

    Process:
        1. Initializes counters for normal and restricted elements
        2. Iterates through all element types in the garbage collector
        3. For each element type, adds the count of normal elements to the normal counter
        4. For each element type, adds the count of restricted elements to the restricted counter
        5. Returns the total counts for both normal and restricted elements

    Notes:
        - The function handles both normal and restricted elements separately
        - It maintains separate counts for different element types
        - The function returns two values representing the counts
]]
function LibMap.getGcCount()
	local normal, restricted = 0, 0

	for k, v in pairs(_gc) do
		if v.normal ~= nil then normal = normal + #v.normal end
		if v.restricted ~= nil then restricted = restricted + #v.restricted end
	end
	
	return normal, restricted
end

--[[
    LibMap.getFreeCount

    Description:
        This function calculates and returns the total count of free UI elements available for reuse.
        It sums up all elements in the free elements pool (_freeElements).

    Parameters:
        None

    Returns:
        number: Total count of free elements available for reuse

    Process:
        1. Initializes a counter for free elements
        2. Iterates through all element types in the free elements pool
        3. For each element type, adds the count of available elements to the free counter
        4. Returns the total count of free elements

    Notes:
        - The function sums up all available elements regardless of type
        - It provides a single value representing the total available elements
        - The function is useful for monitoring the reuse pool
]]
function LibMap.getFreeCount()
	local free = 0

	for k, v in pairs(_freeElements) do
		free = free + #v
	end

	return free
end

-- deprecated functions

function LibMap.uiSetBounds(left, top, right, bottom)

  if left ~= nil then data.uiBoundLeft = left end
  if top ~= nil then data.uiBoundTop = top end
  if right ~= nil then data.uiBoundRight = right end
  if bottom ~= nil then data.uiBoundBottom = bottom end

end

function LibMap.uiGetBoundLeft ()
	return data.uiBoundLeft
end

function LibMap.uiGetBoundRight ()
	return data.uiBoundRight
end

function LibMap.uiGetBoundTop ()
	return data.uiBoundTop
end

function LibMap.uiGetBoundBottom ()
	return data.uiBoundBottom
end

function LibMap.uiClearBounds()

  data.uiBoundLeft, data.uiBoundTop, data.uiBoundRight, data.uiBoundBottom = UIParent:GetBounds()
  
end

-- ui tooling functions

-- tooltip functions

function LibMap.ui.getItemTooltip()

	return uiElements.itemTooltip

end

function LibMap.ui.attachItemTooltip (target, itemId, callBack)

	local name = "LibMap.itemTooltip"

	if privateVars.uiTooltipContext == nil then
		privateVars.uiTooltipContext = UI.CreateContext("LibMap.ui.tooltip")
		privateVars.uiTooltipContext:SetStrata ('topmost')
	end
	
	if uiElements.itemTooltip == nil then	
		uiElements.itemTooltip = LibMap.uiCreateFrame('nkItemTooltip', name, privateVars.uiTooltipContext)
		uiElements.itemTooltip:SetVisible(false)    
		
		LibMap.eventHandlers[name]["Visible"], LibMap.events[name]["Visible"] = Utility.Event.Create(addonInfo.identifier, name .. "Visible")
	end

	if itemId == nil then
		target:EventDetach(Event.UI.Input.Mouse.Cursor.In, nil, target:GetName() .. ".Mouse.Cursor.In")
		target:EventDetach(Event.UI.Input.Mouse.Cursor.Out, nil, target:GetName() .. ".Mouse.Cursor.In")  
		uiElements.itemTooltip:SetVisible(false)
	else
		target:EventAttach(Event.UI.Input.Mouse.Cursor.In, function (self)
			uiElements.itemTooltip:ClearAll()
			uiElements.itemTooltip:SetItem(itemId)
			uiElements.itemTooltip:SetVisible(true)			
			
			uiElements.itemTooltip:SetPoint("TOPLEFT", target, "BOTTOMRIGHT", 5, 5)
			LibMap.ui.showWithinBound (uiElements.itemTooltip, target)
			
			if callBack ~= nil then callBack(target, itemId) end
			
			LibMap.eventHandlers[name]["Visible"](true)
			
		end, target:GetName() .. ".Mouse.Cursor.In")
  
		target:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function (self)
			uiElements.itemTooltip:SetVisible(false)
			LibMap.eventHandlers[name]["Visible"](false)
			
		end, target:GetName() .. ".Mouse.Cursor.Out") 
	end
	
end

function LibMap.ui.getItemTooltip() return uiElements.itemTooltip end

function LibMap.ui.attachAbilityTooltip (target, abilityId)

	if privateVars.uiTooltipContext == nil then
		privateVars.uiTooltipContext = UI.CreateContext("LibMap.ui.tooltip")
		privateVars.uiTooltipContext:SetStrata ('topmost')
	end
	
	if uiElements.abilityTooltip == nil then	
		uiElements.abilityTooltip = LibMap.uiCreateFrame('nkTooltip', 'LibMap.abilityTooltip', privateVars.uiTooltipContext)
		uiElements.abilityTooltip:SetVisible(false)    
	end

	if abilityId == nil then
		target:EventDetach(Event.UI.Input.Mouse.Cursor.In, nil, target:GetName() .. ".Mouse.Cursor.In")
		target:EventDetach(Event.UI.Input.Mouse.Cursor.Out, nil, target:GetName() .. ".Mouse.Cursor.In")  
		uiElements.abilityTooltip:SetVisible(false)
	else
		target:EventAttach(Event.UI.Input.Mouse.Cursor.In, function (self)
			uiElements.abilityTooltip:ClearAll()
			
			local err, abilityDetails = pcall (InspectAbilityNewDetail, abilityId)
			if err == false or abilityDetails == nil then
				err, abilityDetails = pcall (InspectAbilityDetail, abilityId)
				if err == false or abilityDetails == nil then
					LibEKL.Tools.Error.Display (addonInfo.identifier, "LibMap.ui.attachAbilityTooltip: unable to get details of ability with id " .. abilityId)	
					LibMap.ui.attachAbilityTooltip (target, nil)
					return
				end
			end
			
			uiElements.abilityTooltip:SetWidth(200)
			uiElements.abilityTooltip:SetTitle(stringGSub(abilityDetails.name, "\n", ""))
			uiElements.abilityTooltip:SetLines({{ text = abilityDetails.description, wordwrap = true, minWidth = 200  }})
						
			uiElements.abilityTooltip:SetPoint("TOPLEFT", target, "BOTTOMRIGHT", 5, 5)
			LibMap.ui.showWithinBound (uiElements.abilityTooltip, target)
			
			uiElements.abilityTooltip:SetVisible(true)			
		end, target:GetName() .. ".Mouse.Cursor.In")
  
		target:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function (self)
			uiElements.abilityTooltip:SetVisible(false)
		end, target:GetName() .. ".Mouse.Cursor.Out") 
	end
end

function LibMap.ui.attachGenericTooltip (target, title, text)

	if privateVars.uiTooltipContext == nil then
		privateVars.uiTooltipContext = UI.CreateContext("LibMap.ui.tooltip")
		privateVars.uiTooltipContext:SetStrata ('topmost')
	end
	
	if uiElements.genericTooltip == nil then	
		uiElements.genericTooltip = LibMap.uiCreateFrame('nkTooltip', 'LibMap.genericTooltip', privateVars.uiTooltipContext)
		uiElements.genericTooltip:SetVisible(false)    
	end

	if text == nil then
		target:EventDetach(Event.UI.Input.Mouse.Cursor.In, nil, target:GetName() .. ".Mouse.Cursor.In")
		target:EventDetach(Event.UI.Input.Mouse.Cursor.Out, nil, target:GetName() .. ".Mouse.Cursor.In")  
		uiElements.genericTooltip:SetVisible(false)
	else
		target:EventAttach(Event.UI.Input.Mouse.Cursor.In, function (self)
			uiElements.genericTooltip:ClearAll()
			
			uiElements.genericTooltip:SetWidth(200)
			if title ~= nil then 
				uiElements.genericTooltip:SetTitle(stringGSub(title, "\n", ""))
			else
				uiElements.genericTooltip:SetTitle("")
			end
			uiElements.genericTooltip:SetLines({{ text = text, wordwrap = true, minWidth = 200 }})
							
			uiElements.genericTooltip:SetPoint("TOPLEFT", target, "BOTTOMRIGHT", 5, 5)

			LibMap.ui.showWithinBound (uiElements.genericTooltip, target)
			
			uiElements.genericTooltip:SetVisible(true)			
		end, target:GetName() .. ".Mouse.Cursor.In")
  
		target:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function (self)
			uiElements.genericTooltip:SetVisible(false)
		end, target:GetName() .. ".Mouse.Cursor.Out") 
	end

end

function LibMap.ui.genericTooltipSetFont (addonId, fontName)
	if privateVars.uiTooltipContext == nil then return end
	if uiElements.genericTooltip == nil then return end

	uiElements.genericTooltip:SetFont (addonId, fontName)
end

function LibMap.ui.abilityTooltipSetFont (addonId, fontName)
	if privateVars.uiTooltipContext == nil then return end
	if uiElements.abilityTooltip == nil then return end

	uiElements.abilityTooltip:SetFont (addonId, fontName)
end

function LibMap.ui.confirmDialog (message, yesFunc, noFunc)

	local thisDialog

	for idx = 1, #uiElements.confirmDialog, 1 do
		if uiElements.confirmDialog[idx]:GetVisible() == false then
			thisDialog = uiElements.confirmDialog[idx]
			break
		end
	end

	if thisDialog == nil then
		if privateVars.uiDialogContext == nil then 
			privateVars.uiDialogContext = UI.CreateContext("LibMap.ui.dialog") 
			privateVars.uiDialogContext:SetStrata ('topmost')
		end
	
		local name = "LibMapConfirmDialog." .. (#uiElements.messageDialog+1)
	
		thisDialog = LibEKL.UICreateFrame("nkDialog", name, privateVars.uiDialogContext)
		thisDialog:SetLayer(2)
		thisDialog:SetWidth(500)
		thisDialog:SetHeight(250)
		thisDialog:SetType('confirm')
		
		table.insert(uiElements.confirmDialog, thisDialog)
	end
	
	thisDialog:SetMessage(message)
	thisDialog:SetVisible(true)

	Command.Event.Detach(LibMap.events[thisDialog:GetName()].LeftButtonClicked, nil, thisDialog:GetName() .. ".LeftButtonClicked") -- detach event if was previously used
	
	Command.Event.Attach(LibMap.events[thisDialog:GetName()].LeftButtonClicked, function ()
		if yesFunc ~= nil then yesFunc() end
	end, thisDialog:GetName() .. ".LeftButtonClicked")
	
	Command.Event.Detach(LibMap.events[thisDialog:GetName()].RightButtonClicked, nil, thisDialog:GetName() .. ".RightButtonClicked") -- detach event if was previously used
	
	Command.Event.Attach(LibMap.events[thisDialog:GetName()].RightButtonClicked, function ()
		if noFunc ~= nil then noFunc() end
	end, thisDialog:GetName() .. ".RightButtonClicked")
	    
end

function LibMap.ui.messageDialog (message, okFunc)

	local thisDialog

	for idx = 1, #uiElements.messageDialog, 1 do
		if uiElements.messageDialog[idx]:GetVisible() == false then
			thisDialog = uiElements.messageDialog[idx]
			break
		end
	end
	
	if thisDialog == nil then
		if privateVars.uiDialogContext == nil then 
			privateVars.uiDialogContext = UI.CreateContext("LibMap.ui.dialog") 
			privateVars.uiDialogContext:SetStrata ('topmost')
		end
		
		local name = "LibMapMessageDialog." .. LibEKL.Tools.UUID ()
	
		thisDialog = LibEKL.UICreateFrame("nkDialog", name, privateVars.uiDialogContext)
		thisDialog:SetLayer(2)
		thisDialog:SetWidth(500)
		thisDialog:SetHeight(250)
		thisDialog:SetType('message')
		
		table.insert(uiElements.messageDialog, thisDialog)
	end
  
	thisDialog:SetMessage(message)
	thisDialog:SetVisible(true)
	
	Command.Event.Detach(LibMap.events[thisDialog:GetName()].CenterButtonClicked, nil, thisDialog:GetName() .. ".CenterButtonClicked") -- detach event if was previously used
	
	if okFunc ~= nil then
		Command.Event.Attach(LibMap.events[thisDialog:GetName()].CenterButtonClicked, function ()
			okFunc()
		end, thisDialog:GetName() .. ".CenterButtonClicked")
	end
	
end

-- generic ui functions to handle screen size and bounds

function LibMap.ui.getBoundBottom() return data.uiBoundBottom end
function LibMap.ui.getBoundRight() return data.uiBoundRight end

function LibMap.ui.showWithinBound (element, target)

	local from, to, x, y

	if element:GetTop() + element:GetHeight() > LibMap.ui.getBoundBottom() then
		if element:GetLeft() + element:GetWidth() > LibMap.ui.getBoundRight() then
			from, to, x, y = "BOTTOMRIGHT", "TOPLEFT", -5, -5
		else
			from, to, x, y = "BOTTOMLEFT", "TOPRIGHT", 5, -5
		end
	else
		from, to, x, y = "TOPLEFT", "BOTTOMLEFT", -5, 5
	end
	
	if from ~= nil then
		local left, top, right, bottom = element:GetBounds()
		element:ClearAll()
		element:SetPoint(from, target, to, x, y)
		element:SetWidth(right-left)
		element:SetHeight(bottom-top)
	end

end

function LibMap.ui.reloadDialog (title)

	if uiElements.reloadDialog ~= nil then
		LibMap.events.addInsecure(function() 
			uiElements.reloadDialog:SetTitle(title)
			uiElements.reloadDialog:SetTitleAlign('center')
			uiElements.reloadDialog:SetVisible(true)
		end, nil, nil)
		return
	end
	
	if privateVars.uiContextSecure == nil then 
		privateVars.uiContextSecure = UI.CreateContext("LibMap.ui.secure") 
		privateVars.uiContextSecure:SetStrata ('topmost')
		privateVars.uiContextSecure:SetSecureMode('restricted')
	end
	
	local name = "LibMap.reloadDialog"
	
	uiElements.reloadDialog = LibEKL.UICreateFrame("nkWindow", name, privateVars.uiContextSecure)
	uiElements.reloadDialog:SetSecureMode('restricted')
	uiElements.reloadDialog:GetContent():SetSecureMode('restricted')
	uiElements.reloadDialog:SetTitle(title)
	uiElements.reloadDialog:SetTitleAlign('center')
	uiElements.reloadDialog:SetWidth(400)
	uiElements.reloadDialog:SetHeight(125)
	uiElements.reloadDialog:SetCloseable(false)
	uiElements.reloadDialog:SetPoint("CENTERTOP", UIParent, "CENTERTOP", 0, 50)
	
	local msg = LibEKL.UICreateFrame("nkText", name .. ".msg", uiElements.reloadDialog:GetContent())
	msg:SetText(privateVars.langTexts.msgReload)
	msg:SetPoint("CENTERTOP", uiElements.reloadDialog:GetContent(), "CENTERTOP", 0, 10)
	msg:SetFontSize(16)
	msg:SetFontColor(1,1,1,1)
	
	local button = LibEKL.UICreateFrame("nkButton", name .. ".button", uiElements.reloadDialog:GetContent())
	button:SetPoint("CENTERTOP", msg, "CENTERBOTTOM", 0, 20)
	button:SetText(privateVars.langTexts.reloadButton)
	button:SetMacro("/reloadui")
	
end

function LibMap.ui.registerFont (addonId, name, path)

	if _fonts[addonId] == nil then _fonts[addonId] = {} end

	_fonts[addonId][name] = path

end


function LibMap.ui.getFont (addonId, name, path)

	if _fonts[addonId] == nil then return nil end

	return _fonts[addonId][name]

end

function LibMap.ui.setFont (uiElement, addonId, name)

	uiElement:SetFont(addonId, _fonts[addonId][name])

end