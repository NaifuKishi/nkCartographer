local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiScrollpane(name, parent)

	if EnKai.internal.checkEvents (name, true) == false then return nil end

	local elementColor = EnKai.art.GetThemeColor("elementSubColor2")
  local innerColor = EnKai.art.GetThemeColor("elementSubColor2")
  local highlightColor = EnKai.art.GetThemeColor("highlightColor")
	
	local scrollPane = UI.CreateFrame('Mask', name, parent)
	
	local content = EnKai.uiCreateFrame ('nkFrame', name .. '.content', scrollPane)
	content:SetPoint("TOPLEFT", scrollPane, "TOPLEFT")
	
	local scrollLane = EnKai.uiCreateFrame("nkScrollbox", name .. ".scrollbox", scrollPane)
	
	scrollLane:SetPoint("TOPRIGHT", scrollPane, "TOPRIGHT")
	scrollLane:SetColor(elementColor)
	scrollLane:SetColorHighlight(highlightColor)
	scrollLane:SetColorInner(innerColor)
	scrollLane:SetVisible(false)
	
	local eventName = name .. '.scrollbox'
	
	Command.Event.Attach(EnKai.events[eventName].ScrollboxChanged, function ()
		local newValue = math.floor(scrollLane:GetValue('value'))
		scrollPane:SetPosition (-(newValue))		
	end, name .. 'scrollbox.ScrollboxChanged')
	
	scrollPane:EventAttach(Event.UI.Input.Mouse.Wheel.Forward, function ()
		local thisValue = scrollLane:GetValue('value')
		if thisValue == nil then return end
		if thisValue-10 < scrollLane:GetValue("range")[1] then return end
		scrollLane:AdjustValue(thisValue-10) 
	end, name .. ".Mouse.Wheel.Forward")
	
	scrollPane:EventAttach(Event.UI.Input.Mouse.Wheel.Back, function ()
		local thisValue = scrollLane:GetValue('value')
		if thisValue == nil then return end
		if thisValue+10 > scrollLane:GetValue("range")[2] then return end
		scrollLane:AdjustValue(thisValue+10)		
	end, name .. ".Mouse.Wheel.Back")
	
	
	local range = nil	
	
	function scrollPane:GetLanePosition() return scrollLane:GetValue('value') end	
	function scrollPane:SetLanePosition(value)
		local range = scrollLane:GetValue('range')
		if range[2] < value then value = range[2] end 
		if value < 0 then value = 0 end
		scrollLane:AdjustValue(value) 
	end
	
	function scrollPane:SetPosition (ypos)
		local left, top, width, height = content:GetLeft(), content:GetTop(), content:GetHeight(), content:GetWidth()
		content:ClearAll()		
		content:SetPoint("TOPLEFT", scrollPane, "TOPLEFT", 0, ypos)
		content:SetHeight(height)
		content:SetWidth(width)
	end
	
	function scrollPane:SetContent(widget)
	
		local height, width = widget:GetHeight(), widget:GetWidth()
	
		widget:ClearAll()
		widget:SetParent(content)		
		widget:SetPoint("TOPLEFT", content, "TOPLEFT")
		widget:SetHeight(height)
		widget:SetWidth(width)
		
		content:SetHeight(widget:GetHeight())
		
		scrollLane:SetRange(0, widget:GetHeight() - scrollPane:GetHeight())
		
		if scrollPane:GetHeight() < widget:GetHeight() then
			scrollLane:AdjustValue(1)		
			scrollLane:SetVisible(true)
		else
			scrollPane:SetPosition(0)
			scrollLane:SetVisible(false)
		end

		--content:SetPoint("TOPLEFT", pane, "TOPLEFT")			
	end
	
	local oSetHeight, oSetWidth = scrollPane.SetHeight, scrollPane.SetWidth
		
	function scrollPane:SetHeight(newHeight)
		oSetHeight(self, newHeight)
		scrollLane:SetHeight(newHeight)
	end
	
	function scrollPane:SetWidth(newWidth)
		oSetWidth(self, newWidth)
		content:SetWidth(newWidth - scrollLane:GetWidth())
	end
	
	function scrollPane:SetColor (r, g, b, a)
  
    if type(r) == "table" then
      elementColor = r
    else
      elementColor = { r = r, g = g, b = b, a = a }
    end
  
    scrollLane:SetColor(elementColor)   
  end
  
  function scrollPane:SetColorHighlight (newColor)
    highlightColor = newColor
    scrollLane:SetColorHighlight(highlightColor)
  end
  
  function scrollPane:SetColorInner (newColor)
    innerColor = newColor
    scrollLane:SetColorInner(innerColor)
  end
	
	return scrollPane

end

uiFunctions.NKSCROLLPANE = _uiScrollpane