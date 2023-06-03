local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiCheckbox(name, parent) 

	----if EnKai.internal.checkEvents (name, true) == false then return nil end

	local elementColor =  EnKai.art.GetThemeColor("elementMainColor")
	local innerColor =  EnKai.art.GetThemeColor("elementSubColor2")
  local labelColor = EnKai.art.GetThemeColor("labelColor")

	local checkBox = EnKai.uiCreateFrame ('nkFrame', name, parent)
	
	if checkBox == nil then return end
	
	local label = EnKai.uiCreateFrame ('nkText', name .. '.label', checkBox)
	local boxOuter = EnKai.uiCreateFrame ('nkFrame', name .. '.boxOuter', checkBox)
	local boxInner = EnKai.uiCreateFrame ('nkFrame', name .. '.boxInner', boxOuter)
	local boxMark = EnKai.uiCreateFrame ('nkFrame', name .. '.boxMark', boxInner)
	local roundOuter, roundInner
	
	-- GARBAGE COLLECTOR ROUTINES
  
  function checkBox:destroy()
    internal.uiAddToGarbageCollector ('nkFrame', checkBox)
    internal.uiAddToGarbageCollector ('nkFrame', boxOuter)
    internal.uiAddToGarbageCollector ('nkFrame', boxInner)
    internal.uiAddToGarbageCollector ('nkFrame', boxMark)
    internal.uiAddToGarbageCollector ('nkText', label)
    
    if roundOuter ~= nil then
      internal.uiAddToGarbageCollector ('nkCanvas', roundOuter)
    end
    
    if roundInner ~= nil then
      internal.uiAddToGarbageCollector ('nkCanvas', roundInner)
    end
  end 
  
  -- SPECIFIC FUNCTIONS	
	
	local properties = {}

	function checkBox:SetValue(property, value)
		properties[property] = value
	end
	
	function checkBox:GetValue(property)
		return properties[property]
	end
	
	checkBox:SetValue("name", name)
	checkBox:SetValue("parent", parent)

	checkBox:SetValue("checked", false)
	
	local isActive = true
	local boxWidth = 13
	local boxHeight= 13
	local round = false
	
	local stroke = {r = elementColor.r, g = elementColor.g, b = elementColor.b, a = elementColor.a, thickness = 1 }
	local path = {	{xProportional = 0.5, yProportional = 0}, 
						{xProportional = 1, yProportional = 0.5, xControlProportional = (61/64), yControlProportional = (3/64)},
						{xProportional = 0.5, yProportional = 1, xControlProportional = (61/64), yControlProportional = (61/64)},
						{xProportional = 0, yProportional = 0.5, xControlProportional = (3/64), yControlProportional = (61/64)},
						{xProportional = 0.5, yProportional = 0, xControlProportional = (3/64), yControlProportional = (3/64)}}
	local fill = {type = 'solid', r = innerColor.a, g = innerColor.g, b = innerColor.b, a = innerColor.a}
	
	checkBox:SetHeight(13)
	checkBox:SetWidth(113)
	
	boxOuter:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		if isActive == false then return end
		checkBox:toggle()
	end, name .. "boxOutter_LeftClick")	
	
	label:SetPoint("CENTERLEFT", checkBox, "CENTERLEFT")
	label:SetWidth(100)
	label:SetFontSize(13)
	label:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a)
	
	--label:SetText(checkBox:GetValue("label"))
	
	boxOuter:SetPoint("CENTERLEFT", label, "CENTERRIGHT")
	boxOuter:SetWidth(13)
	boxOuter:SetHeight(13)
		
	boxOuter:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
	
	boxInner:SetPoint("TOPLEFT", boxOuter, "TOPLEFT", 1, 1)
	boxInner:SetPoint("BOTTOMRIGHT", boxOuter, "BOTTOMRIGHT", -1, -1)
	boxInner:SetBackgroundColor(innerColor.r, innerColor.g, innerColor.b, innerColor.a)	
	
	boxMark:SetPoint("TOPLEFT", boxInner, "TOPLEFT", 2, 2)
	boxMark:SetPoint("BOTTOMRIGHT", boxInner, "BOTTOMRIGHT", -2, -2)
	boxMark:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
	
	function checkBox:toggle ()
		local checked = self:GetValue('checked')
		if checked == true then checked = false else checked = true end
		self:SetChecked(checked)
	end

	function checkBox:SetChecked(flag, silent)
		self:SetValue('checked', flag)
		
		if roundInner ~= nil then 
			roundInner:SetVisible(flag)
		else		
			boxMark:SetVisible(flag)
		end
		
		if silent ~= true then EnKai.eventHandlers[name]["CheckboxChanged"]( flag ) end
	end
	
	function checkBox:GetChecked () return self:GetValue('checked') end

	function checkBox:SetLabelInFront(flag)

		self:SetValue("labelInFront", flag)
			
		if flag == true then
			label:SetPoint("CENTERLEFT", checkBox, "CENTERLEFT")
			boxOuter:SetPoint("CENTERLEFT", label, "CENTERRIGHT", 5, 0)
			if roundOuter ~= nil then roundOuter:SetPoint("CENTERLEFT", label, "CENTERRIGHT", 5, 0) end
		else	
			boxOuter:SetPoint("CENTERLEFT", checkBox, "CENTERLEFT")		
			if roundOuter ~= nil then 
				roundOuter:SetPoint("CENTERLEFT", checkBox, "CENTERLEFT")
				label:SetPoint("CENTERLEFT", roundOuter, "CENTERRIGHT", 5, 0) 
			else
				label:SetPoint("CENTERLEFT", boxOuter, "CENTERRIGHT", 5, 0)
			end
		end

	end

	function checkBox:SetLabelColor(r, g, b, a)
	  if type(r) == "table" then
	    labelColor = r
	  else	 
		  labelColor = { r = r, g = g, b = b, a = a}
		end
		
		label:SetFontColor (labelColor.r, labelColor.g, labelColor.b, labelColor.a) 
	end
	
	function checkBox:SetColor(r, g, b, a)
	  if type(r) == "table" then
	    elementColor = r
	  else
	    elementColor = { r = r, g = g, b = b, a = a }
	  end
	 
		boxOuter:SetBackgroundColor (elementColor.r, elementColor.g, elementColor.b, elementColor.a) 		
		boxMark:SetBackgroundColor (elementColor.r, elementColor.g, elementColor.b, elementColor.a)
		
		stroke = {r = elementColor.r, g = elementColor.g, b = elementColor.b, a = elementColor.a, thickness = 1 }
		fill = {type = 'solid', r = elementColor.r, g = elementColor.g, b = elementColor.b, a = elementColor.a}
		if roundInner ~= nil then 
			roundInner:SetShape(path, fill, stroke)
			roundOuter:SetShape(path, nil, stroke)
		end
	end
	
	function checkBox:SetColorInner(newColor)
	  innerColor = newColor
	  boxInner:SetBackgroundColor(innerColor.r, innerColor.g, innerColor.b, innerColor.a)
	end

	function checkBox:SetText(text) label:SetText(text) end	
	function checkBox:GetText() return label:GetText() end
	
	function checkBox:SetLabelWidth(width)
		checkBox:SetWidth(width + boxWidth + 5)
		label:SetWidth(width)
	end
	
	local oSetWidth, oSetHeight = checkBox.SetWidth, checkBox.SetHeight
	
	function checkBox:SetWidth(newWidth)		
		oSetWidth(self, newWidth)
		label:SetWidth(newWidth-boxWidth-5)
	end
	
	function checkBox:SetBoxWidth(newBoxWidth)
		boxOuter:SetWidth(newBoxWidth)
		boxWidth = newBoxWidth
		label:SetWidth(checkBox:GetWidth()-boxWidth-5)
		
		if roundInner ~= nil then 
			roundInner:SetWidth(newBoxWidth-6)
			roundOuter:SetWidth(newBoxWidth)
		end
	end
	
	function checkBox:SetBoxHeight(newBoxHeight)
		boxOuter:SetHeight(newBoxHeight)
		boxHeight= newBoxHeight
		
		if roundInner ~= nil then 
			roundInner:SetHeight(newBoxHeight-6)
			roundOuter:SetHeight(newBoxHeight)
		end
	end
	
	function checkBox:AutoSizeLabel()
		label:ClearWidth()
		checkBox:SetLabelWidth(label:GetWidth())
	end
	
	function checkBox:SetActive(flag)
		if flag == true then
			checkBox:SetAlpha(1)
		else
			checkBox:SetAlpha(.5)
		end
		isActive = flag
	end
	
	function checkBox:SetRound(flag)
	
		boxOuter:EventDetach(Event.UI.Input.Mouse.Left.Click, nil, name .. "boxOutter_LeftClick")	
	
		if flag == true then			
			boxOuter:SetVisible(false)
			boxInner:SetVisible(false)
			boxMark:SetVisible(false)
			
			if roundInner == nil then
				roundOuter = EnKai.uiCreateFrame ('nkCanvas', name .. '.roundOuter', checkBox)
				roundInner = EnKai.uiCreateFrame ('nkCanvas', name .. '.roundInner', roundOuter)
				
				roundOuter:SetPoint("CENTERLEFT", label, "CENTERRIGHT")
				roundInner:SetPoint("CENTER", roundOuter, "CENTER")
								
				roundOuter:SetWidth(boxWidth)
				roundOuter:SetHeight(boxHeight)
				roundInner:SetWidth(boxWidth -  6)
				roundInner:SetHeight(boxHeight - 6)
				
				roundOuter:SetShape(path, nil, stroke)
				roundInner:SetShape(path, fill, stroke)				
				
				roundOuter:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
					if isActive == false then return end
					checkBox:toggle()
				end, name .. ".roundOuter_LeftClick")			
			else
				roundOuter:SetVisible(true)
			end
			
			roundInner:SetVisible(properties['checked'])
			
			checkBox:SetLabelInFront(self:GetValue("labelInFront"))
			
		else
			if roundInner ~= nil then		
				roundInner:SetVisible(false)
				roundOuter:SetVisible(false)
				roundOuter:EventDetach(Event.UI.Input.Mouse.Left.Click, nil, name .. ".roundOuter_LeftClick")		
			end
			
			boxOuter:SetVisible(true)
			boxInner:SetVisible(true)
			boxMark:SetVisible(properties['checked'])
			
			boxOuter:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
				if isActive == false then return end
				checkBox:toggle()
			end, name .. ".boxOutter_LeftClick")			
		end
	end
	
	function checkBox:SetFontSize(newFontSize) 
	  label:SetFontSize(newFontSize)
	  checkBox:SetHeight(newFontSize)
	  
	  if boxWidth == newFontSize and boxHeight == newFontSize then 
  	  checkBox:SetBoxHeight(newFontSize)
  	  checkBox:SetBoxWidth(newFontSize)
    end	  
	  
	end
		
	EnKai.eventHandlers[name]["CheckboxChanged"], EnKai.events[name]["CheckboxChanged"] = Utility.Event.Create(addonInfo.identifier, name .. "CheckboxChanged")	
	
	return checkBox
	
end

uiFunctions.NKCHECKBOX = _uiCheckbox