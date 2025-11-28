local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

local _InspectMouse = Inspect.Mouse

---------- addon internal function block ---------

local function _uiScrollbox(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	local elementColor = EnKai.art.GetThemeColor("elementSubColor2")
	local innerColor = EnKai.art.GetThemeColor("elementSubColor2")
	local highlightColor = EnKai.art.GetThemeColor("highlightColor")

	local scrollBox = EnKai.uiCreateFrame ('nkFrame', name, parent)
	local scrollLane = EnKai.uiCreateFrame ('nkFrame', name .. 'lane', scrollBox)
	local scrollLaneInner = EnKai.uiCreateFrame ('nkFrame', name .. 'inner', scrollLane)
	local scrollPos = EnKai.uiCreateFrame ('nkFrame', name .. 'pos', scrollLaneInner)

	local properties = {}

	function scrollBox:SetValue(property, value)
		properties[property] = value
	end
	
	function scrollBox:GetValue(property)
		return properties[property]
	end
	
	scrollBox:SetValue("name", name)
	scrollBox:SetValue("parent", parent)
	
	local precision = 1
	
	scrollBox:SetWidth(14)
	scrollBox:SetHeight(100)
	
	scrollLane:SetPoint("TOPLEFT", scrollBox, "TOPLEFT", 2, 0)
	scrollLane:SetPoint("BOTTOMRIGHT", scrollBox, "BOTTOMRIGHT", -2, 0)
	scrollLane:SetBackgroundColor(1, 1, 1, 1)
	scrollLane:SetWidth(10)
	--scrollLane:SetHeight(100)
	
	scrollLaneInner:SetPoint("TOPLEFT", scrollLane, "TOPLEFT", 1, 1)
	scrollLaneInner:SetPoint("BOTTOMRIGHT", scrollLane, "BOTTOMRIGHT", -1, -1)
	scrollLaneInner:SetBackgroundColor(innerColor.r, innerColor.g, innerColor.b, innerColor.a)
	
	scrollPos:SetPoint("TOPCENTER", scrollLane, "TOPCENTER")
	scrollPos:SetBackgroundColor(highlightColor.r, highlightColor.g, highlightColor.b, highlightColor.a)
	scrollPos:SetWidth(14)
	scrollPos:SetHeight(14)
	
	local mouseDown = false
	
	scrollPos:EventAttach(Event.UI.Input.Mouse.Left.Down, function ()
		mouseDown = true
	end, name .. "pos_Left_Down")
	
	scrollPos:EventAttach(Event.UI.Input.Mouse.Left.Up, function ()
		mouseDown = false
	end, name .. "pos_Left_Up")
	
	scrollPos:EventAttach(Event.UI.Input.Mouse.Left.Upoutside , function ()
		mouseDown = false
	end, name .. "pos_Left_Upoutside")
	
	scrollPos:EventAttach(Event.UI.Input.Mouse.Cursor.Move, function ()
		if mouseDown == true  then scrollBox:ProcessMove() end
	end, name .. "pos_Left_Up")
	
	function scrollBox:ProcessMove()
		
		if _InspectMouse().y < (scrollLane:GetTop() - 14) or _InspectMouse().y > (scrollLane:GetTop() + scrollLane:GetHeight() + 14) then mouseDown = false end
		if _InspectMouse().x < (scrollLane:GetLeft() - 40) or _InspectMouse().x > (scrollLane:GetLeft() + scrollLane:GetWidth() + 40) then mouseDown = false end
		
		local range = self:GetValue("range")
		
		if range == nil then mouseDown = false end
		
		if mouseDown == false then return end

		local y = _InspectMouse().y
		if y < scrollLane:GetTop() then y = scrollLane:GetTop() end
		if y > scrollLane:GetTop() + scrollLane:GetHeight() - 14 then y = scrollLane:GetTop() + scrollLane:GetHeight() - 14 end
		
		local curdivY = y - scrollLane:GetTop()
				
		local valuePerPixel = (range[2] - range[1] + precision) / (scrollLane:GetHeight()-14)
		local newValue = curdivY * valuePerPixel + range[1]
		
		if newValue < range[1] then newValue = range[1] end
		if newValue > range[2] then newValue = range[2] end

		self:SetValue("value", newValue)

		scrollPos:SetPoint ("CENTERTOP", scrollLane, "CENTERTOP", 0, curdivY)
		
		EnKai.eventHandlers[name]["ScrollboxChanged"](newValue)
	end
	
	function scrollBox:SetRange(from, to)
		self:SetValue("range", { from, to })
	end
	
	function scrollBox:GetRange()
    return self:GetValue("range")
  end
	
	function scrollBox:AdjustValue(newValue)
		local range = self:GetValue("range")
		if range == nil then return end
		
		self:SetValue("value", newValue)
		
		if (newValue == range[2]) then
			scrollPos:SetPoint ("CENTERTOP", scrollLane, "CENTERTOP", 0, scrollLane:GetHeight()-14)
		else
			local pixelPerValue = (scrollLane:GetHeight()-14) / (range[2] - range[1] + precision)
			local newY = pixelPerValue * (newValue - precision)
			scrollPos:SetPoint ("CENTERTOP", scrollLane, "CENTERTOP", 0, newY)
		end
		
		EnKai.eventHandlers[name]["ScrollboxChanged"](newValue)
		
	end
	
	local oSetWidth, oSetHeight = scrollBox.SetWidth, scrollBox.SetHeight
		
	function scrollBox:SetHeight(newHeight)
	  local range = self:GetValue("range")
		oSetHeight(self, newHeight)
		if range ~= nil then		
			local newY = math.floor((scrollLane:GetHeight() -14) / (range[2] - range[1] + 1) * (newHeight-1))
			scrollPos:SetPoint ("CENTERTOP", scrollLane, "CENTERTOP", 0, newY)
		end
	end
	
	function scrollBox:SetColor (r, g, b, a)
	
	  if type(r) == "table" then
	    elementColor = r
	  else
		  elementColor = { r = r, g = g, b = b, a = a }
		end
	
		scrollLane:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)		
	end
	
	function scrollBox:SetColorHighlight (newColor)
	  highlightColor = newColor
	  scrollPos:SetBackgroundColor(highlightColor.r, highlightColor.g, highlightColor.b, highlightColor.a)
	end
	
	function scrollBox:SetColorInner (newColor)
    innerColor = newColor
    scrollLaneInner:SetBackgroundColor(innerColor.r, innerColor.g, innerColor.b, innerColor.a)
  end
			
	EnKai.eventHandlers[name]["ScrollboxChanged"], EnKai.events[name]["ScrollboxChanged"] = Utility.Event.Create(addonInfo.identifier, name .. "ScrollboxChanged")
	
	return scrollBox
	
end

uiFunctions.NKSCROLLBOX = _uiScrollbox