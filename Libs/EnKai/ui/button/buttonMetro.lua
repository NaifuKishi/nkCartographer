local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiButtonMetro(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	local button = EnKai.uiCreateFrame ('nkCanvas', name, parent)

	local icon = EnKai.uiCreateFrame ('nkCanvas', name .. 'texture', button)
	local label = EnKai.uiCreateFrame ('nkText', name .. 'label', button)

	local path
	local stroke = { thickness = 1, r = EnKai.art.GetThemeColor('elementMainColor').r, g = EnKai.art.GetThemeColor('elementMainColor').g, b = EnKai.art.GetThemeColor('elementMainColor').b, a = EnKai.art.GetThemeColor('elementMainColor').a}
	local fill = { type = 'solid', r = EnKai.art.GetThemeColor('elementSubColor').r, g = EnKai.art.GetThemeColor('elementSubColor').g, b = EnKai.art.GetThemeColor('elementSubColor').b, a = EnKai.art.GetThemeColor('elementSubColor').a}
	local fillHighlight = { type = 'solid', r = EnKai.art.GetThemeColor('elementSubColor').r * .8, g = EnKai.art.GetThemeColor('elementSubColor').g * .8, b = EnKai.art.GetThemeColor('elementSubColor').b * .8, a = EnKai.art.GetThemeColor('elementSubColor').a} 

	local selected = false
	local width = 123
	local height = 33
	local animatedIcon = false
	
	local iconPath = {{xProportional = 0, yProportional = 0}, {xProportional = 0, yProportional = 1}, {xProportional = 1, yProportional = 1},  {xProportional = 1, yProportional = 0}, {xProportional = 0, yProportional = 0}}
	local iconFill = { type = "texture" }

	local properties = {}

	function button:SetValue(property, value) properties[property] = value end
	function button:GetValue(property) return properties[property] end

	local labelColor = EnKai.art.GetThemeColor('labelColor')
	local scale = 1

	button:SetWidth(144)
	button:SetHeight(30)

	label:SetPoint("CENTER", button, "CENTER", 0, -1)
	label:SetFontSize(16)
	label:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a )
	label:SetHeight(18)
	label:SetLayer(3)

	icon:SetPoint("CENTERRIGHT", button, "CENTERRIGHT", -7, 0)
	icon:SetHeight(22)
	icon:SetWidth(22)
	icon:SetLayer(3)
	icon:SetVisible(false)

	function button:Redraw()

		local x1 = 1/button:GetWidth()*2
		local x2 = 1-x1
		local y1 = 1/button:GetHeight()*2
		local y2 = 1-y1

		path = {  {xProportional = x1, yProportional = 0},
		{xProportional = x2, yProportional = 0},
		{xProportional = 1, yProportional = y1, xControlProportional = 1, yControlProportional = 0},
		{xProportional = 1, yProportional = y2},
		{xProportional = x2, yProportional = 1, xControlProportional = 1, yControlProportional = 1},
		{xProportional = x1, yProportional = 1},
		{xProportional = 0, yProportional = y2, xControlProportional = 0, yControlProportional = 1},
		{xProportional = 0, yProportional = y1},
		{xProportional = x1, yProportional = 0, xControlProportional = 0, yControlProportional = 0}
		}  

		button:SetShape(path, fill, stroke)
		label:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a )

	end

	function button:AnimateIcon (flag)
	
		if flag == true and animatedIcon == false then
			local scale = 1 / 36 * (22 * scale)
			EnKai.fx.register (name .. ".icon", icon, {id = "rotateCanvas", speed = 0, scale = scale, path = iconPath, fill = iconFill })
		elseif flag == false and animatedIcon == true then
			EnKai.fx.cancel(name .. ".icon")
		end
		
		animatedIcon = flag
		
	end

	function button:SetIcon(addon, texture)

		if addon == nil then
			icon:SetVisible(false)
			label:SetPoint("CENTER", button, "CENTER")
		else  
			iconFill = { type = "texture", source = addon, texture = texture }
			iconFill.transform = Utility.Matrix.Create(1 / 36 * (22 * scale), 1 / 36 * (22 * scale), 0, 0, 0) 
			icon:SetHeight(22 * scale)
			icon:SetWidth(22 * scale)
			icon:SetShape(iconPath, iconFill, nil)
			
			--icon:SetTextureAsync (addon, texture)
			icon:SetVisible(true)
			label:SetPoint("CENTER", button, "CENTER", -19 * scale, -1 * scale)
		end  
		
	end

	function button:SetText(newText)
		label:SetText(newText)
		label:ClearAll()

		if icon:GetVisible() == true then
			label:SetPoint("CENTER", button, "CENTER", -(19 * scale), -1*scale)
		else
			label:SetPoint("CENTER", button, "CENTER")
		end
	end

	function button:SetColor(r, g, b)
		fill.r, fill.g, fill.b = r, g, b
		fillHighlight.r, fillHighlight.g, fillHighlight.b = r * .8, g * .8, b * .8
		button:Redraw()
	end

	function button:SetBorderColor(r, g, b)
		stroke.r, stroke.g, stroke.b = r, g, b
		--fillHighlight.r, fillHighlight.g, fillHighlight.b = r * .8, g * .8, b * .8
		button:Redraw()
	end
	
	function button:SetFontColor(r, g, b, a)
		if a == nil then a = 1 end
		labelColor = { r = r, g = g, b = b, a = a }
		label:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a )
	end

	function button:SetScale(newScale)
		scale = newScale

		button:SetWidth(width * newScale)
		button:SetHeight(height * newScale)
		icon:SetWidth(22 * newScale)
		icon:SetHeight(22 * newScale)
	
		if iconFill.texture ~= nil then 
			iconFill.transform = Utility.Matrix.Create(1 / 36 * (22 * newScale), 1 / 36 * (22 * newScale), 0, 0, 0) 
			icon:SetShape(iconPath, iconFill, nil) 
			
			if animatedIcon then
				local scale = 1 / 36 * (22 * newScale)
				EnKai.fx.update (effectName, { scale = scale}) 
			end
			
		end
		
		label:SetFontSize(16 * newScale)
		label:SetHeight (20 * newScale)

		icon:SetPoint("CENTERRIGHT", button, "CENTERRIGHT", (-7 * scale), 0)

		if icon:GetVisible() == true then
			label:SetPoint("CENTER", button, "CENTER", -(19 * scale), -1 * scale)
		end

		button:Redraw()

	end

	local oSetWidth, oSetHeight = button.SetWidth, button.SetHeight

	function button:SetWidth(newWidth)
		width = newWidth
		oSetWidth(self, newWidth)
		button:Redraw()
	end 

	function button:SetHeight(newHeight)
		height = newHeight
		oSetHeight(self, newHeight)
		button:Redraw()
	end

	function button:SetMacro(newMacro)
		button:SetSecureMode('restricted')
		button:EventMacroSet(Event.UI.Input.Mouse.Left.Click, newMacro)
	end

	button:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		EnKai.eventHandlers[name]["Clicked"]()
	end, name .. "Mouse.Left.Click")

	button:EventAttach(Event.UI.Input.Mouse.Cursor.In, function ()
		button:SetShape(path, fillHighlight, stroke)
		EnKai.eventHandlers[name]["MouseIn"]()
	end, name .. ".Mouse.Cursor.In")

	button:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function ()
		button:SetShape(path, fill, stroke)
		EnKai.eventHandlers[name]["MouseOut"]()
	end, name .. ".Mouse.Cursor.Out")

	EnKai.eventHandlers[name]["Clicked"], EnKai.events[name]["Clicked"] = Utility.Event.Create(addonInfo.identifier, name .. "Clicked")
	EnKai.eventHandlers[name]["MouseIn"], EnKai.events[name]["MouseIn"] = Utility.Event.Create(addonInfo.identifier, name .. "MouseIn")
	EnKai.eventHandlers[name]["MouseOut"], EnKai.events[name]["MouseOut"] = Utility.Event.Create(addonInfo.identifier, name .. "MouseOut")

	button:Redraw()
	
	return button
	
end

uiFunctions.NKBUTTONMETRO = _uiButtonMetro