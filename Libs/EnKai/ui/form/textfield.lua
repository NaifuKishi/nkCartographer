local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiTextfield(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	local borderColor =  EnKai.art.GetThemeColor("elementSubColor2")
	local focusColor = EnKai.art.GetThemeColor("highlightColor")
	local innerColor = EnKai.art.GetThemeColor("elementMainColor")

	local textField = EnKai.uiCreateFrame ('nkFrame', name, parent)
	local textFieldInner = EnKai.uiCreateFrame ('nkFrame', name .. ".inner", textField)
	local textFieldEdit = UI.CreateFrame ('RiftTextfield', name .. ".edit", textFieldInner)

	local properties = {}

	local multiLine, restoreOnExit, keyEvent = false, true, false
	local tabTarget
	
	function textField:SetValue(property, value)
		properties[property] = value
	end
	
	function textField:GetValue(property)
		return properties[property]
	end
	
	textField:SetValue("name", name)
	textField:SetValue("parent", parent)
	
	textField:SetValue("valueType", "text")
	textField:SetValue("restoreValue", false)
	textField:SetValue("backupValue", false)
	
	textField:SetWidth(100)
	textField:SetHeight(20)
	textField:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
		
	textFieldInner:SetPoint("TOPLEFT", textField, "TOPLEFT", 1, 1)
	textFieldInner:SetPoint("BOTTOMRIGHT", textField, "BOTTOMRIGHT", -1, -1)
	textFieldInner:SetBackgroundColor(innerColor.r, innerColor.g, innerColor.b, innerColor.a)
	
	textFieldEdit:SetPoint("TOPLEFT", textFieldInner, "TOPLEFT", 1, 1)
	textFieldEdit:SetPoint("BOTTOMRIGHT", textFieldInner, "BOTTOMRIGHT", -1, -1)
	
	function textField:SetText(text)
		textFieldEdit:SetText(tostring(text))
		textField:SetValue("backupValue", textFieldEdit:GetText())
	end

	function textField:GetText()
		return textFieldEdit:GetText()
	end
	
	function textField:GetConvertedText()
		local tempText = textFieldEdit:GetText()
		
		if textField:GetValue('valueType') == 'number' then
			return tonumber(tempText)
		else
			return tempText
		end
	end
	
	function textField:SetValueType(valueType)
		if valueType == 'text' or valueType == 'number' then
			self:SetValue('valueType', valueType)
		end
	end
	
	function textField:SetFocusColor (r, g, b, a)
	  if type(r) == "table" then
	    focusColor = r
	  else	
		  focusColor = {r = r, g = g, b = b, a = a}
		end
	end
	
	function textField:SetInnerColor (newColor)
    innerColor = newColor
    textFieldInner:SetBackgroundColor(innerColor.r, innerColor.g, innerColor.b, innerColor.a)
  end
	
	function textField:Leave(flag)
		textField:SetValue('restoreValue', flag or false)
		textFieldEdit:SetKeyFocus(false)
	end
	
	function textField:Enter()
		textField:SetValue("backupValue", textFieldEdit:GetText())
		textField:SetValue("restoreValue", true)
		textFieldEdit:SetKeyFocus(true)
		textField:SetBackgroundColor(focusColor.r, focusColor.g, focusColor.b, focusColor.a)
	end
	
	textFieldEdit:EventAttach(Event.UI.Input.Key.Down, function(self, _, key) 
		local code = string.byte(key)

		if multiLine == true and key == "Return" then
			local cursor = self:GetCursor()
			local startPosition, endPosition = self:GetSelection()
			startPosition = startPosition or cursor
			endPosition = (endPosition or cursor) + 1
			local text = self:GetText()
			self:SetText(text:sub(1, startPosition) .. "\n" .. text:sub(endPosition))
			self:SetCursor(startPosition + 1)
		elseif key == 'Tab' or key == 'Return' then
			textField:SetValue('restoreValue', false)
			textFieldEdit:SetKeyFocus(false)
			textField:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
			EnKai.eventHandlers[name]["TextfieldChanged"](textFieldEdit:GetText())
			if key == 'Tab' then 
				EnKai.eventHandlers[name]["Tabbed"]()
				if tabTarget ~= nil then tabTarget:Enter() end
			end
			
		end
		
		if keyEvent then EnKai.eventHandlers[name]["KeyDown"](key) end
		
	end, "nkTextField_" .. name .. "_Key_Down")
	
	textFieldEdit:EventAttach(Event.UI.Input.Mouse.Left.Click, function() 
		
		textField:Enter()
		EnKai.eventHandlers[name]["Enter"]()
				
	end, "nkTextField_" .. name .. "_Left_Click")
	
	textFieldEdit:EventAttach(Event.UI.Input.Key.Focus.Loss, function() 
				
		if restoreOnExit == true and textField:GetValue("restoreValue") ~= false and textField:GetValue("backupValue") ~= nil then
			textFieldEdit:SetText(textField:GetValue("backupValue"))
		end
		
		textField:SetValue("backupValue", nil)
		textField:SetValue("restoreValue", false)
		
		textField:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
		
		EnKai.eventHandlers[name]["FokusLoss"]()
		
	end, "nkTextField_" .. name .. "_Key_FocusLoss")
	
	function textField:SetColor(r, g, b, a)
		
		if type(r) == "table" then
			borderColor = r
		else
			borderColor = {r = r, g = g, b = b, a = a}
		end
		
		textField:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
		
	end
	
	function textField:SetSelection(startPos, endPos) textFieldEdit:SetSelection(startPos, endPos) end
	function textField:GetSelection() return textFieldEdit:GetSelection() end
	function textField:SetMultiLine(flag) multiLine = flag end
	function textField:SetRestoreOnExit (flag) restoreOnExit = flag end
	function textField:SetKeyEvent(flag) keyEvent = flag end
	function textField:SetCursor(newCursor) textFieldEdit:SetCursor(newCursor) end
	function textField:SetTabTarget(newTarget) tabTarget = newTarget end
	
	EnKai.eventHandlers[name]["TextfieldChanged"], EnKai.events[name]["TextfieldChanged"] = Utility.Event.Create(addonInfo.identifier, name .. "TextfieldChanged")
	EnKai.eventHandlers[name]["Enter"], EnKai.events[name]["Enter"] = Utility.Event.Create(addonInfo.identifier, name .. "Enter")
	EnKai.eventHandlers[name]["Tabbed"], EnKai.events[name]["Tabbed"] = Utility.Event.Create(addonInfo.identifier, name .. "Tabbed")
	EnKai.eventHandlers[name]["KeyDown"], EnKai.events[name]["KeyDown"] = Utility.Event.Create(addonInfo.identifier, name .. "KeyDown")
	EnKai.eventHandlers[name]["FokusLoss"], EnKai.events[name]["FokusLoss"] = Utility.Event.Create(addonInfo.identifier, name .. "FokusLoss")
	
	return textField
		
end

uiFunctions.NKTEXTFIELD = _uiTextfield