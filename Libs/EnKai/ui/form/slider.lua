local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

local _InspectMouse	= Inspect.Mouse

---------- addon internal function block ---------

--[[
   _uiSlider
    Description:
        Creates and configures a customizable slider UI element with label, lane, and position marker components.
        This function provides a framework for creating interactive sliders with various customization options.
    Parameters:
        name (string): Unique identifier for the slider element
        parent (frame): Parent frame to which this slider will be attached
    Returns:
        slider (frame): The configured slider frame with all child elements and functionality
    Process:
        1. Creates the main slider frame and its components (label, lane, inner lane, position marker)
        2. Sets up default styling and positioning
        3. Configures event handlers for mouse interactions (dragging the slider)
        4. Implements various slider behaviors (value adjustment, styling changes)
        5. Provides getter and setter methods for slider properties
        6. Sets up event system for slider value changes
    Notes:
        - The slider supports custom value ranges and precision
        - Provides methods for setting and adjusting the slider value
        - Implements label positioning options
        - Includes event system for tracking slider value changes
        - Supports font customization for the label text
        - Allows customization of colors for different states
    Available Methods:
    **Slider Behavior Methods:**
        - ProcessMove(): Processes slider movement and updates the value
        - SetRange(from, to): Sets the value range for the slider
        - SetMidValue(newMidValue): Sets the midpoint value for the slider
        - AdjustValue(newValue): Adjusts the slider to a specific value
        - SetActive(flag): Sets whether the slider is active and interactive
        - SetPrecision(newPrecision): Sets the precision of the slider values
    **Slider Appearance Methods:**
        - SetColor(r, g, b, a): Sets the color of the slider elements
        - SetColorHighlight(newColor): Sets the color of the highlight element
        - SetColorInner(newColor): Sets the color of the inner slider element
        - SetLabelColor(r, g, b, a): Sets the color of the label text
        - SetText(text): Sets the text of the label
        - SetFont(addonId, font): Sets the font for the label text
		- SetFontSize(fontsize): Sets the font size for the label text
        - SetLabelWidth(newLabelWidth): Sets the width of the label
        - SetWidth(newWidth): Sets the width of the slider
    **Slider State Methods:**
        - SetValue(property, value): Sets a property value for the slider
        - GetValue(property): Gets a property value for the slider
    **UI Element Accessor Methods:**
        - destroy(): Cleans up and destroys the slider and its components
]]
local function _uiSlider(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	local elementColor =  EnKai.art.GetThemeColor("elementMainColor")
	local innerColor =  EnKai.art.GetThemeColor("elementMainColor")
	local labelColor = EnKai.art.GetThemeColor("labelColor")
	local highlightColor = EnKai.art.GetThemeColor("highlightColor")
	
	local labelText = nil

	local slider = EnKai.uiCreateFrame ('nkFrame', name, parent)
	
	local sliderLabel = EnKai.uiCreateFrame ('nkText', name .. '.label', slider)
	local sliderLane = EnKai.uiCreateFrame ('nkFrame', name .. '.lane', slider)
	local sliderLaneInner = EnKai.uiCreateFrame ('nkFrame', name .. '.inner', sliderLane)
	local sliderPos = EnKai.uiCreateFrame ('nkFrame', name .. '.pos', sliderLaneInner)

	local properties = {}

	function slider:SetValue(property, value)
		properties[property] = value
	end
	
	function slider:GetValue(property)
		return properties[property]
	end
	
	local isActive = true
	local precision = 1
	local origValue = nil
	
	slider:SetValue("name", name)
	slider:SetValue("parent", parent)
	
	slider:SetWidth(200)
	slider:SetHeight(14)
	
	sliderLabel:SetWidth(100)
	sliderLabel:SetPoint("CENTERLEFT", slider, "CENTERLEFT")
	sliderLabel:SetFontSize(13)
	sliderLabel:SetFontColor (labelColor.r, labelColor.g, labelColor.b, labelColor.a)
	
	sliderLane:SetPoint("CENTERLEFT", sliderLabel, "CENTERRIGHT")
	sliderLane:SetWidth(100)
	sliderLane:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
	sliderLane:SetHeight(10)
	
	sliderLaneInner:SetPoint("TOPLEFT", sliderLane, "TOPLEFT", 1, 1)
	sliderLaneInner:SetPoint("BOTTOMRIGHT", sliderLane, "BOTTOMRIGHT", -1, -1)
	sliderLaneInner:SetBackgroundColor(innerColor.r, innerColor.g, innerColor.b, innerColor.a)
	
	sliderPos:SetPoint("CENTER", sliderLane, "CENTER")
	sliderPos:SetBackgroundColor(highlightColor.r, highlightColor.g, highlightColor.b, highlightColor.a)
	sliderPos:SetWidth(14)
	sliderPos:SetHeight(14)
	
	local mouseDown = false
	
	sliderPos:EventAttach(Event.UI.Input.Mouse.Left.Down, function ()
		if isActive == false then return end
		mouseDown = true
	end, name .. "pos_Left_Down")
	
	sliderPos:EventAttach(Event.UI.Input.Mouse.Left.Up, function ()
		mouseDown = false
	end, name .. "pos_Left_Up")
	
	sliderPos:EventAttach(Event.UI.Input.Mouse.Left.Upoutside , function ()
		mouseDown = false
	end, name .. "pos_Left_Upoutside")
	
	sliderPos:EventAttach(Event.UI.Input.Mouse.Cursor.Move, function ()
		if mouseDown then slider:ProcessMove() end
	end, name .. "pos_Left_Up")
	
	function slider:ProcessMove()
		
		if _InspectMouse().y < (sliderLane:GetTop() - 14) or _InspectMouse().y > (sliderLane:GetTop() + sliderLane:GetHeight() + 14) then mouseDown = false end
		if _InspectMouse().x < (sliderLane:GetLeft() - 40) or _InspectMouse().x > (sliderLane:GetLeft() + sliderLane:GetWidth() + 40) then mouseDown = false end
		
		local range = self:GetValue("range")
		
		if range == nil then mouseDown = false end
		
		if mouseDown == false then return end

		local x = _InspectMouse().x
		if x < sliderLane:GetLeft() then x = sliderLane:GetLeft() end
		if x > sliderLane:GetLeft() + sliderLane:GetWidth()  then x = sliderLane:GetLeft() + sliderLane:GetWidth() end
		
		local curdivX = x - (sliderLane:GetLeft() + (sliderLane:GetWidth() / 2))
		
		local valuePerPixel = (range[2] - range[1] + precision) / sliderLane:GetWidth()		

		local mid = range[1] + ((range[2] - range[1]) / 2)
		local newValue = curdivX * valuePerPixel + mid
		
		if newValue < range[1] then newValue = range[1] end
		if newValue > range[2] then newValue = range[2] end
		
		if precision == 1 then newValue = math.floor(newValue) end
		
		self:SetValue("value", newValue)
		
		if labelText ~= nil then slider:SetText(labelText) end

		sliderPos:SetPoint ("CENTER", sliderLane, "CENTER", curdivX, 0)
		
		EnKai.eventHandlers[name]["SliderChanged"](newValue)
	end
	
	function slider:SetRange(from, to)
		self:SetValue("range", { from, to })
	end
	
	function slider:SetMidValue (newMidValue)
		midValue = newMidValue		
	end
	
	function slider:AdjustValue(newValue)
	
		if newValue == self:GetValue('value') then return end
	
		local range = self:GetValue("range")
		if range == nil then return end
		
		if midValue == nil then midValue = newValue end
		
		self:SetValue("value", newValue)
		
		local pixelPerValue = sliderLane:GetWidth() / (range[2] - range[1] + precision)
		--local newX = (newValue - (range[2] - range[1]) / 2) * pixelPerValue
		--local newX = math.floor((sliderLane:GetWidth() / (range[2] - range[1] + precision) * newValue)
		local newX = (newValue + precision - range[1] - (range[2] - range[1]) / 2) * pixelPerValue
		sliderPos:SetPoint ("CENTER", sliderLane, "CENTER", newX, 0)
		
		if labelText ~= nil then slider:SetText(labelText) end
		
		EnKai.eventHandlers[name]["SliderChanged"](newValue)
		
	end
	
	function slider:SetColor (r, g, b, a)
	  if type(r) == "table" then
	    elementColor = r
	  else	
		  elementColor = { r = r, g = g, b = b, a = a }
		end
	
		sliderLane:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
		sliderPos:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
	end
	
	function slider:SetColorHighlight (newColor)
    highlightColor = newColor
    sliderPos:SetBackgroundColor(highlightColor.r, highlightColor.g, highlightColor.b, highlightColor.a)
  end
  
	function slider:SetColorInner (newColor)
    innerColor = newColor
    sliderLaneInner:SetBackgroundColor(innerColor.r, innerColor.g, innerColor.b, innerColor.a)
  end
	
	function slider:SetLabelColor(r, g, b, a) 
	  if type(r) == "table" then
	    labelColor = r
	  else	
		  labelColor = { r = r, g = g, b = b, a = a }
		end
		sliderLabel:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a)
	end
		
	function slider:SetActive(flag)
		if flag == true then
			slider:SetAlpha(1)
		else
			slider:SetAlpha(.5)
		end
		isActive = flag
	end
	
	function slider:SetText(text) 
		labelText = text
		if self:GetValue("value") ~= nil then
			sliderLabel:SetText(string.format(text, self:GetValue("value"))) 
		end
	end	

	function slider:SetFont(addonId, font)
		EnKai.ui.setFont(sliderLabel, addonId, font)
	end
	
	function slider:SetFontSize(fontSize)
		sliderLabel:SetFontSize(fontSize)
	end

	function slider:SetLabelWidth(newLabelWidth)		
		sliderLabel:SetWidth(newLabelWidth)
		sliderLane:SetWidth(slider:GetWidth() - newLabelWidth)
	end
	
	local oSetWidth, oSetHeight = slider.SetWidth, slider.SetHeight
	
	function slider:SetWidth(newWidth)		
		oSetWidth(self, newWidth)
		sliderLane:SetWidth(newWidth - sliderLabel:GetWidth())		
	end
	
	function slider:SetPrecision(newPrecision)
		precision = newPrecision
	end
			
	EnKai.eventHandlers[name]["SliderChanged"], EnKai.events[name]["SliderChanged"] = Utility.Event.Create(addonInfo.identifier, name .. "SliderChanged")
	
	return slider
	
end

uiFunctions.NKSLIDER = _uiSlider