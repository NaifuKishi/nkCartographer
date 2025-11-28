local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block -----------

local function _uiCombobox(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	local elementColor = EnKai.art.GetThemeColor("elementMainColor")
	local elementColorInner = EnKai.art.GetThemeColor("elementSubColor")
	local selectedColor = EnKai.art.GetThemeColor("highlightColor")
	local labelColor = EnKai.art.GetThemeColor("labelColor")
	local borderColor = EnKai.art.GetThemeColor("elementSubColor2")
	
	local isActive = true
	--local displayWidth = 100

	local combo = EnKai.uiCreateFrame ('nkFrame', name, parent)
	local comboLabel = EnKai.uiCreateFrame ('nkText', name .. '.comboLabel', combo)
	
	local display = EnKai.uiCreateFrame ('nkFrame', name .. '.display', combo)
	local displayInner = EnKai.uiCreateFrame ('nkFrame', name .. '.displayInner', display)
	local icon = EnKai.uiCreateFrame ('nkTexture', name .. '.icon', displayInner)
	local label = EnKai.uiCreateFrame ('nkText', name .. '.label', displayInner)
	
	local arrowBox = EnKai.uiCreateFrame ('nkFrame', name .. '.arrowBox', displayInner)
	local arrowBoxInner = EnKai.uiCreateFrame ('nkFrame', name .. '.arrowBoxInner', arrowBox)
	local arrowText = EnKai.uiCreateFrame ('nkText', name .. '.arrowText', arrowBoxInner)
	local selFrame = EnKai.uiCreateFrame ('nkFrame', name .. '.selFrame', combo)
	local selFrameInner = EnKai.uiCreateFrame ('nkFrame', name .. '.selFrameInner', selFrame)
	
	local selFrameSlider = EnKai.uiCreateFrame('nkScrollbox', name .. '.selFrameSlider', selFrame)
	
	local selItems = {}	
	
	for idx = 1, 5, 1 do
		local selItemFrame = EnKai.uiCreateFrame ('nkFrame', name .. 'selItemFrame' .. idx, selFrameInner)
		local selItemLabel = EnKai.uiCreateFrame ('nkText', name .. 'selItemLabel' .. idx, selItemFrame)
		local selItemIcon = EnKai.uiCreateFrame ('nkTexture', name .. 'selItemIcon' .. idx, selItemFrame)
		
		selItemFrame:EventAttach(Event.UI.Input.Mouse.Cursor.In, function ()
			combo:RowHighlight(idx, true)
		end, name .. "selItemFrame" .. idx .. "_Cursor_In")	
		
		selItemFrame:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function ()
			combo:RowHighlight(idx, false)
		end, name .. "selItemFrame" .. idx .. "_Cursor_out")	
		
		selItemFrame:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
			local selValue = combo:GetValue('selection')[idx + combo:GetValue('counter') - 1]			
			combo:SetSelectedValue ( selValue.value )
			EnKai.eventHandlers[name]["ComboChanged"](selValue)
		end, name .. "selItemFrame" .. idx .. "_Left_Click")
		
		table.insert(selItems, { frame = selItemFrame, label = selItemLabel, icon = selItemIcon })
	end
	
	local properties = {}

	function combo:SetValue(property, value)
		properties[property] = value
	end
	
	function combo:GetValue(property)
		return properties[property]
	end

	combo:SetValue("name", name)
	combo:SetValue("parent", parent)
	combo:SetValue("open", false)
	combo:SetValue("icons", false)
	combo:SetValue("textures", false)
	combo:SetValue("counter", 1)
	
	combo:SetWidth(200)
	combo:SetHeight(20)
	--combo:SetBackgroundColor(1,0,0,1)
	
	comboLabel:SetPoint("CENTERLEFT", combo, "CENTERLEFT")
	comboLabel:SetWidth(100)
	comboLabel:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a)
	comboLabel:SetFontSize(13)
		
	display:SetPoint ("CENTERLEFT", comboLabel, "CENTERRIGHT")
	display:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
	display:SetHeight(20)
	display:SetWidth(100)
	
	displayInner:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
	displayInner:SetPoint ("TOPLEFT", display, "TOPLEFT", 1, 1)
	displayInner:SetPoint ("BOTTOMRIGHT", display, "BOTTOMRIGHT", -1, -1)
	
	icon:SetVisible(false)
	icon:SetWidth(18)
	icon:SetHeight(18)	
	
	label:SetPoint("CENTERLEFT", displayInner, "CENTERLEFT", 2, 0)
	label:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a)
	label:SetWordwrap(false)
	label:SetHeight(18)
	label:SetFontSize(13)
	label:SetWidth(displayInner:GetHeight()-20)
		
	arrowBox:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
	arrowBox:SetPoint ("TOPRIGHT", display, "TOPRIGHT")
	arrowBox:SetWidth (20)
	arrowBox:SetHeight (20)
	
	arrowBoxInner:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
	arrowBoxInner:SetPoint ("TOPLEFT", arrowBox, "TOPLEFT", 1, 1)
	arrowBoxInner:SetPoint ("BOTTOMRIGHT", arrowBox, "BOTTOMRIGHT", -1, -1)
	
	arrowText:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a)
	arrowText:SetPoint("CENTER", arrowBox, "CENTER")
	arrowText:SetText("v")
	
	selFrame:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
	selFrame:SetPoint("TOPLEFT", display, "BOTTOMLEFT", 0, -1)
	selFrame:SetHeight (102)
	selFrame:SetWidth (100)
	selFrame:SetVisible (false)
	
	selFrameInner:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
	selFrameInner:SetPoint ("TOPLEFT", selFrame, "TOPLEFT", 1, 1)
	selFrameInner:SetPoint ("BOTTOMRIGHT", selFrame, "BOTTOMRIGHT", -1, -1)
	selFrameInner:SetLayer(1)
	
	selFrameSlider:SetPoint("TOPRIGHT", selFrame, "TOPRIGHT")
	selFrameSlider:SetLayer(2)
	selFrameSlider:SetColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
	selFrameSlider:SetHeight(101)
	
	arrowBox:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		if isActive == false then return end
		combo:ToggleSelFrame()
	end, name .. "arrowBox_LeftClick")	
	
	selFrameInner:EventAttach(Event.UI.Input.Mouse.Wheel.Forward, function ()
		if #combo:GetValue('selection') < 5 then return end
		combo:SetValue('counter', combo:GetValue('counter') - 1)
		if combo:GetValue('counter') <= 0 then combo:SetValue('counter', 1) end		
		selFrameSlider:AdjustValue (combo:GetValue('counter'))
	end, name .. "selFrameInner_Wheel_Forward")
		
	selFrameInner:EventAttach(Event.UI.Input.Mouse.Wheel.Back, function ()
		if #combo:GetValue('selection') < 5 then return end
		combo:SetValue('counter', combo:GetValue('counter') + 1)
		if combo:GetValue('counter') > #combo:GetValue('selection') - 4 then combo:SetValue('counter', #combo:GetValue('selection') - 4) end		
		selFrameSlider:AdjustValue (combo:GetValue('counter'))
	end, name .. "selFrameInner_Wheel_Back")
	
	local eventName = name .. '.selFrameSlider'
	
	Command.Event.Attach(EnKai.events[eventName].ScrollboxChanged, function ()
		combo:SetValue('counter', math.floor(selFrameSlider:GetValue('value')))
		combo:ShowValues()
	end, name .. 'selFrameSlider.ScrollboxChanged')
	
	local object = selFrameInner
	local to = "TOPLEFT"
	
	for idx = 1, 5, 1 do
		selItems[idx].frame:SetPoint ("TOPLEFT", object, to)

		object = selItems[idx].frame
		to = "BOTTOMLEFT"
		
		selItems[idx].frame:SetWidth(selFrameInner:GetWidth())
		selItems[idx].frame:SetHeight(20)
		
		selItems[idx].icon:SetVisible(false)
		selItems[idx].icon:SetWidth(18)
		selItems[idx].icon:SetHeight(18)
		
		selItems[idx].label:SetFontSize(13)
		selItems[idx].label:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a)
		selItems[idx].label:SetWordwrap(false)
		selItems[idx].label:SetHeight(18)
	end
	
	
	function combo:ToggleSelFrame(newFlag)
		
		local flag = combo:GetValue("open")
		if newFlag ~= nil then 
			flag = newFlag 
		elseif flag == false then flag = true else flag = false end

		combo:SetValue("open", flag)
		if (flag == true) then combo:ShowValues() end
		selFrame:SetVisible(flag)
	end
	
	function combo:SetSelection(selection, sort)
		
		if selection == nil or #selection == 0 then
			EnKai.tools.error.display (addonInfo.identifier, string.format("_uiCombobox - invalid number of parameters\nexpecting: selection (table)\nreceived: %s", EnKai.tools.table.serialize (selection))) 
			return 
		end
		
		if combo:GetValue('selection') ~= nil and #combo:GetValue('selection') > 0 then
			combo:SetValue('counter', 1)
			selFrameSlider:AdjustValue (1)
		end
		
		if sort == nil or sort == true then
		  table.sort (selection, function (a, b) return (a.label < b.label) end )
		end
		
		-- rebuild selection list to show correct items
		
		local hasIcons = combo:GetValue('icons')		
		if selection[1].iconPath ~= nil then hasIcons = true end
		combo:SetValue('icons', hasIcons)
		
		local hasTextures = combo:GetValue('textures')    
    if selection[1].texturePath ~= nil then hasTextures = true end
    combo:SetValue('textures', hasTextures)
		
			
		if hasIcons == true then
			icon:SetPoint ("CENTERLEFT", displayInner, "CENTERLEFT")
			icon:SetVisible(true)
			label:SetPoint ("CENTERLEFT", icon, "CENTERRIGHT", 2, 0)			
			label:SetWidth(displayInner:GetWidth() - 40) -- 20 due to arrow box and 20 due to icon (18 + 2 distance)
		elseif hasTextures == true then
		  icon:SetPoint ("CENTERLEFT", displayInner, "CENTERLEFT")
      icon:SetVisible(true)
      icon:SetWidth(displayInner:GetWidth() - 20)
      label:SetPoint ("CENTERLEFT", displayInner, "CENTERLEFT")
      label:SetWidth(displayInner:GetWidth() - 20)
      label:SetVisible(false)
		else
			label:SetPoint ("CENTERLEFT", displayInner, "CENTERLEFT")
			label:SetWidth(displayInner:GetWidth() - 20)
			icon:SetVisible(false)			
		end

		local visible = true
		
		for idx = 1, 5, 1 do
			if idx > #selection then visible = false end -- make sure to only show lines needed but still build them in case of more items later
			
			selItems[idx].frame:SetVisible(visible)
			
			if hasIcons == true then
				selItems[idx].icon:SetPoint("CENTERLEFT", selItems[idx].frame, "CENTERLEFT")
				selItems[idx].label:SetPoint("CENTERLEFT", selItems[idx].icon, "CENTERRIGHT", 2, 0)
				selItems[idx].label:SetWidth(selItems[idx].frame:GetWidth() - 20) -- 20 due to icon (18 + 2 distance)
		  elseif hasTextures == true then
		    selItems[idx].icon:SetPoint("CENTERLEFT", selItems[idx].frame, "CENTERLEFT")
		    selItems[idx].icon:SetWidth(selItems[idx].frame:GetWidth())
		    selItems[idx].label:SetPoint("CENTERLEFT", selItems[idx].frame, "CENTERLEFT")
		    selItems[idx].label:SetWidth(selItems[idx].frame:GetWidth() )
        selItems[idx].label:SetVisible(false)        
			else
				selItems[idx].label:SetPoint("CENTERLEFT", selItems[idx].frame, "CENTERLEFT")
				selItems[idx].icon:SetPoint("CENTERLEFT", selItems[idx].label, "CENTERRIGHT")
				selItems[idx].label:SetWidth(selItems[idx].frame:GetWidth() )
			end
		end
		
		combo:SetValue('selection', selection)		
		combo:SetSelectedValue (combo:GetValue('selectedValue'))
		
	end
	
	function combo:ShowValues()
	
		local selection = combo:GetValue('selection')
		
		if selection == nil or selection == 0 then return end

		if #selection > 5 then
			local maxRange = #selection - 4
			selFrameSlider:SetRange(1, maxRange)
			selFrameSlider:SetVisible(true)
		else
			selFrameSlider:SetVisible(false)
		end

		local counter = combo:GetValue('counter')
		
		for idx = counter, counter + 4, 1 do
			if idx > #selection then 
				selItems[idx-counter+1].icon:SetVisible(false)
				selItems[idx-counter+1].label:SetVisible(false)
			else
				if combo:GetValue('icons') == true then 
					selItems[idx-counter+1].icon:SetVisible(true)
					if selection[idx].iconPath == '' or selection[idx].iconType == '' then
						selItems[idx-counter+1].icon:SetVisible(false)
					else
						selItems[idx-counter+1].icon:SetVisible(true)
						selItems[idx-counter+1].icon:SetTextureAsync(selection[idx].iconType, selection[idx].iconPath)
					end
					
					selItems[idx-counter+1].label:SetVisible(true)
				elseif combo:GetValue('textures') == true then 
          selItems[idx-counter+1].icon:SetVisible(true)
          if selection[idx].texturePath == '' or selection[idx].textureType == '' then
            selItems[idx-counter+1].icon:SetVisible(false)
            selItems[idx-counter+1].label:SetVisible(true)            
          else
            selItems[idx-counter+1].icon:SetVisible(true)
            selItems[idx-counter+1].icon:SetTextureAsync(selection[idx].textureType, selection[idx].texturePath)
            selItems[idx-counter+1].label:SetVisible(false)
          end
        else
          selItems[idx-counter+1].label:SetVisible(true)
				end
				
				selItems[idx-counter+1].label:SetText(selection[idx].label)
			end
		end
		
	end
	
	function combo:RowHighlight (row, active)
	
		local element = selItems[row]	

		if active == true then
			selItems[row].frame:SetBackgroundColor(selectedColor.r, selectedColor.g, selectedColor.b, selectedColor.a)
			selItems[row].label:SetFontColor(elementColorInner.r, elementColorInner.g, elementColorInner.b, elementColorInner.a)
		else
			selItems[row].frame:SetBackgroundColor(elementColorInner.r, elementColorInner.g, elementColorInner.b, elementColorInner.a)
			selItems[row].label:SetFontColor (labelColor.r, labelColor.g, labelColor.b, labelColor.a)
		end
	
	end
	
	function combo:SetSelectedValue (selectedValue)
	
		if (selectedValue == nil) then return end

		combo:SetValue("selectedValue", selectedValue)
		local selection = combo:GetValue("selection")
		
		if selection == nil then return end
		
		for k, v in pairs (selection) do
			if selectedValue == v.value then			
				label:SetText(v.label)
				
				if combo:GetValue("icons") == true then
					if v.iconPath == '' or v.iconType == '' then
						icon:SetVisible(false)
					else
						icon:SetVisible(true)
						icon:SetTextureAsync(v.iconType, v.iconPath)
					end
				elseif combo:GetValue("textures") == true then
				  if v.texturePath == '' or v.textureType == '' then
            icon:SetVisible(false)
            label:SetVisible(true)
          else
            icon:SetVisible(true)
            icon:SetTextureAsync(v.textureType, v.texturePath)
            label:SetVisible(false)
          end
				end
			end
		end
	
		combo:ToggleSelFrame(false)
	
	end
	
	function combo:SetSelectedLabel (selectedLabel)
	
		if (selectedLabel == nil) then return end
		local selection = combo:GetValue("selection")
		if selection == nil then return end
	
		for k, v in pairs (selection) do
			if selectedLabel == v.label then			
				label:SetText(v.label)
				combo:SetValue("selectedValue", v.value)
				
				if combo:GetValue("icons") == true then
					if v.iconPath == '' or v.iconType == '' then
						icon:SetVisible(false)
					else
						icon:SetVisible(true)
						icon:SetTextureAsync(v.iconType, v.iconPath)
					end
				elseif combo:GetValue("textures") == true then
          if v.texturePath == '' or v.textureType == '' then
            icon:SetVisible(false)
          else
            icon:SetVisible(true)
            icon:SetTextureAsync(v.textureType, v.texturePath)
          end
				end
			end
		end
	
		combo:ToggleSelFrame(false)
	
	end
	
	function combo:GetSelectedValue ()
		return combo:GetValue("selectedValue")
	end
	
	function combo:GetSelectedLabel ()
		local selectedValue = combo:GetValue("selectedValue")
		local selection = combo:GetValue("selection")
				
		if selection == nil or selectedValue == nil then return nil end
		
		for k, v in pairs (selection) do
			if selectedValue == v.value then			
				return v.label
			end
		end
	end
	
	function combo:SetLabelColor(r, g, b, a) 
	
	  if type(r) == "table" then
	    labelColor = r
	  else	
		  labelColor = {r = r, g = g, b = b, a = a}
		end
		
		label:SetFontColor (labelColor.r, labelColor.g, labelColor.b, labelColor.a)
		comboLabel:SetFontColor (labelColor.r, labelColor.g, labelColor.b, labelColor.a)
		
		for idx = 1, 5, 1 do
			selItems[idx].label:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a)
		end
	end
	
	function combo:SetColor(r, g, b, a)
	
	  if type(r) == "table" then
	   elementColor = r
	  else
	   elementColor = {r = r, g = g, b = b, a = a}
	  end
		display:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
		arrowBox:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
		selFrame:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
		arrowText:SetFontColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
		
		selFrameSlider:SetColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
		selFrameSlider:SetColorHighlight (elementColor)
	end
	
	function combo:SetColorInner(r, g, b, a)
	
	  if type(r) == "table" then
	    elementColorInner = r
	  else	 
      elementColorInner = {r = r, g = g, b = b, a = a}
    end
  
    displayInner:SetBackgroundColor(elementColorInner.r, elementColorInner.g, elementColorInner.b, elementColorInner.a)
    selFrameInner:SetBackgroundColor(elementColorInner.r, elementColorInner.g, elementColorInner.b, elementColorInner.a)
    arrowBoxInner:SetBackgroundColor(elementColorInner.r, elementColorInner.g, elementColorInner.b, elementColorInner.a)
    selFrameSlider:SetColorInner(elementColorInner)
    
  end
	
	function combo:SetColorSelected(r, g, b, a)
	  if type(r) == "table" then
      selectedColor = r
    else   
      selectedColor = {r = r, g = g, b = b, a = a}
    end
  end

	function combo:SetColorBorder(newColor) 
		borderColor = newColor
		selFrame:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
		display:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a) 
		arrowBox:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
	end
	
	function combo:SetActive(flag)
		if flag == true then
			combo:SetAlpha(1)
		else
			combo:SetAlpha(.5)
		end
		isActive = flag
	end
	
	function combo:SetText(text) comboLabel:SetText(text) end
	
	function combo:SetFont(addonInfo, font)
		EnKai.ui.setFont(comboLabel, addonInfo, font)
		EnKai.ui.setFont(label, addonInfo, font)		
		for idx = 1, 5, 1 do
			EnKai.ui.setFont(selItems[idx].label, addonInfo, font)
		end
	end
	
	function combo:SetLabelWidth(newLabelWidth)
		
		comboLabel:SetWidth(newLabelWidth)
		display:SetWidth(combo:GetWidth() - newLabelWidth)
		selFrame:SetWidth(combo:GetWidth() - newLabelWidth)
		
		for idx = 1, 5, 1 do
			selItems[idx].frame:SetWidth(selFrameInner:GetWidth())
		end
		
		if icon:GetVisible() == true then
			label:SetWidth(displayInner:GetWidth() - 40) 
		else
			label:SetWidth(displayInner:GetWidth() - 20) 
		end
	end
	
	local oSetWidth, oSetHeight = combo.SetWidth, combo.SetHeight
	
	function combo:SetWidth(newWidth)
		oSetWidth(self, newWidth)
		display:SetWidth(newWidth - comboLabel:GetWidth())
		selFrame:SetWidth(newWidth - comboLabel:GetWidth())
		
		for idx = 1, 5, 1 do
			selItems[idx].frame:SetWidth(selFrameInner:GetWidth())
		end
		
		if icon:GetVisible() == true then
			label:SetWidth(displayInner:GetWidth() - 40) 
		else
			label:SetWidth(displayInner:GetWidth() - 20) 
		end
	end
	
	function combo:SetHeight(newHeight)
		oSetHeight(self, newHeight)
		
		display:SetHeight(newHeight)
		icon:SetHeight(newHeight-2)
		label:SetHeight(newHeight-2)
		local newFontSize = math.floor( (1 / 20 * newHeight) * 13 )
		label:SetFontSize(newFontSize)
		arrowBox:SetHeight(newHeight)
		
		for idx = 1, 5, 1 do
			selItems[idx].frame:SetHeight(newFontSize + 7)
		
			selItems[idx].icon:SetVisible(false)
			selItems[idx].icon:SetWidth(newFontSize+5)
			selItems[idx].icon:SetHeight(newFontSize+5)
			
			selItems[idx].label:SetFontSize(newFontSize)
			selItems[idx].label:SetHeight(newFontSize+5)
		end
		
		selFrame:SetHeight((5 * (newFontSize+7))+2)
		selFrameSlider:SetHeight(selFrame:GetHeight()-2)
		
	end
	
	function combo:SetComboVisible(flag)
		display:SetVisible(flag)
	end
	
	EnKai.eventHandlers[name]["ComboChanged"], EnKai.events[name]["ComboChanged"] = Utility.Event.Create(addonInfo.identifier, name .. "ComboChanged")
	
	return combo
	
end

uiFunctions.NKCOMBOBOX = _uiCombobox