local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions  = privateVars.uiFunctions
local uiContext     = privateVars.uiContext
local internal     = privateVars.internal
local lang          = privateVars.langTexts

---------- init local variables ---------

local _colorPickerCache = {}
local _uiGlobalColorPicker = nil 

---------- local function block ---------

-- the following function is based on the work colorChooser by Starlon 

local function buildColorPicker(parent, handler, pixelSize)

	local r, g, b, a = 0, 0, 0, 1
	local pixeSizel = pixelSize or 6
	parent.pixels = parent.pixels or {}

	local x, y = 0, 0
	local count = 0
	
	local function _fctDraw(pixelSize)
	
		for h = 1, 360, 10 do
			local h = h % 360
			local count2 = 0
			for v = 100, 0, -(100/8) do
				for s = 100, 100, 1 do
					local h, s, v = h/360, s/100, v/100
					y = count * pixelSize
					count = count + 1
					
					local r, g, b = EnKai.tools.color.HSV2RGB(h, s, v)
	
					local pixel = select(2, table.remove(parent.pixels)) or EnKai.uiCreateFrame ('nkFrame', 'EnKai.colorPicker.Pixel.' .. EnKai.tools.uuid(), parent)
					
					pixel:ClearAll()
					pixel:SetMouseMasking("full")
					pixel:SetPoint("TOPLEFT", parent, "TOPLEFT", x, y)
					pixel:SetBackgroundColor(r, g, b)
					pixel:SetWidth(pixelSize)
					pixel:SetHeight(pixelSize)
			
					pixel:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
						handler (r, g, b)
					end, 'Pixel.Left.Click')

					table.insert(parent.pixels, pixel)
				end
			end
			x = x + pixelSize
			count = 0
		end
		
		count = 0
		
		for v = 100, 0, -(100 / 8)  do
		
			local h, s, v = 0, 0, v
	
			y = count * pixelSize
			count = count + 1
	
			local pixel = select(2, table.remove(parent.pixels)) or EnKai.uiCreateFrame ('nkFrame', 'EnKai.colorPicker.Pixel2.' .. count, parent)
			pixel:ClearAll()
			pixel:SetMouseMasking("full")
			pixel:SetPoint("TOPLEFT", parent, "TOPLEFT", x, y)
			
			local r, g, b = EnKai.tools.color.HSV2RGB(h/360, s/100, v/100)
			pixel:SetBackgroundColor(r, g, b)
			pixel:SetWidth(pixelSize)
			pixel:SetHeight(pixelSize)
	
			pixel:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
				handler (r, g, b)	
			end, 'Pixel.Left.Click')
			
			table.insert(parent.pixels, pixel)
		end
		
	end
	
	
	function parent:ResizePixel(pixelSize)
		pixelSize = pixelSize or 6
		count, x, y = 0, 0, 0
		_fctDraw(pixelSize)
	end
	
	parent:ResizePixel(pixelSize)
	
	return parent, x + (pixelSize or 6), y + (pixelSize or 6)

end

local function buildInternalColorPicker ()

	local colorR, colorG, colorB, colorA

	_uiGlobalColorPicker = EnKai.uiCreateFrame ('nkFrame', 'EnKai.defaultColorPicker', uiContext)
	
	local picker = _uiGlobalColorPicker
	picker:SetBackgroundColor(0, 0, 0, 1)
	
	local width, height
	local inner = EnKai.uiCreateFrame ('nkFrame', 'EnKai.defaultColorPicker.inner', picker)
	inner:SetPoint("TOPLEFT", picker, "TOPLEFT", 1, 1)
	inner:SetPoint("BOTTOMRIGHT", picker, "BOTTOMRIGHT", -1, -1)
	
	inner, width, height = buildColorPicker(inner, function (r, g, b)
		colorR, colorG, colorB, colorA = r, g, b, 1
		EnKai.eventHandlers['EnKai.defaultColorPicker']["ColorChanged"]( r, g, b, 1 )
	end, 8)
	
	local copyText = EnKai.uiCreateFrame ('nkText', 'EnKai.defaultColorPicker.copyText', picker)
	copyText:SetPoint("BOTTOMLEFT", picker, "BOTTOMLEFT", 2, -2)
	copyText:SetFontSize(10)
	copyText:SetFontColor (1,1,1,1)
	copyText:SetText(lang.copy)
	
	copyText:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		_colorPickerCache = { colorR, colorG, colorB, colorA }
	end, 'EnKai.defaultColorPicker.copyText.Left.Click')
		
	local pasteText = EnKai.uiCreateFrame ('nkText', 'EnKai.defaultColorPicker.pasteText', picker)
	pasteText:SetPoint("CENTERLEFT", copyText, "CENTERRIGHT", 5, 0)
	pasteText:SetFontSize(10)
	pasteText:SetFontColor (1,1,1,1)
	pasteText:SetText(lang.paste)
	
	local colorPixel
	
	pasteText:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		colorR, colorG, colorB, colorA = _colorPickerCache[1], _colorPickerCache[2], _colorPickerCache[3], _colorPickerCache[4]
		colorPixel:SetBackgroundColor(colorR, colorG, colorB, 1)
		EnKai.eventHandlers['EnKai.defaultColorPicker']["ColorChanged"]( colorR, colorG, colorB, 1 )
	end, 'EnKai.defaultColorPicker.pasteText.Left.Click')
	
	colorPixel = EnKai.uiCreateFrame ('nkFrame', "EnKai.defaultColorPicker.colorPixel", picker)
	colorPixel:SetPoint("BOTTOMRIGHT", picker, "BOTTOMRIGHT", -2, -6)
	colorPixel:SetWidth(10)
	colorPixel:SetHeight(10)
	colorPixel:SetBackgroundColor(0,0,0,1)
	
	local colorText = EnKai.uiCreateFrame ('nkText', 'EnKai.defaultColorPicker.colorText', picker)
	colorText:SetPoint("CENTERRIGHT", colorPixel, "CENTERLEFT", -5, 1)
	colorText:SetFontSize(10)
	colorText:SetFontColor (1,1,1,1)
	colorText:SetText(lang.color)
	
	picker:SetWidth(width+2)
	picker:SetHeight(height + 16)
	
	picker:SetVisible(false)
	
	function picker:SetColor(r, g, b, a)
		colorR, colorG, colorB, colorA = r, g, b, a
		colorPixel:SetBackgroundColor(r, g, b, 1)
	end	
	
	EnKai.eventHandlers['EnKai.defaultColorPicker']["ColorChanged"], EnKai.events['EnKai.defaultColorPicker']["ColorChanged"] = Utility.Event.Create(addonInfo.identifier, 'EnKai.defaultColorPicker.ColorChanged')	

end

---------- addon internal function block ---------

local function _uiColorPicker(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end
	
	local colorPicker = EnKai.uiCreateFrame ('nkFrame', name, parent)	
	local label = EnKai.uiCreateFrame ('nkText', name .. '.label', colorPicker)
	local labelColor = EnKai.art.GetThemeColor("labelColor")
	
	label:SetPoint("CENTERLEFT", colorPicker, "CENTERLEFT")
	label:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a)	
	label:SetWordwrap(false)
	label:SetHeight(18)
	label:SetFontSize(13)
	
	local colorDisplay = EnKai.uiCreateFrame ('nkFrame', name .. '.colorDisplay', colorPicker)
	colorDisplay:SetLayer(1)
	colorDisplay:SetPoint("CENTERLEFT", label, "CENTERRIGHT")	
	colorDisplay:SetBackgroundColor(0,0,0,1)
	
	local colorDisplayInner = EnKai.uiCreateFrame ('nkFrame', name .. '.colorDisplayInner', colorDisplay)
	colorDisplayInner:SetPoint("TOPLEFT", colorDisplay, "TOPLEFT", 1, 1)
	colorDisplayInner:SetPoint("BOTTOMRIGHT", colorPicker, "BOTTOMRIGHT", -1, -1)
	
	local properties = {}
	local pickerShown = false
	local colorR, colorG, colorB, colorA
	local isActive = true
	local labelColor = { 1, 1, 1, 1 }

	function colorPicker:SetValue(property, value)
		properties[property] = value
	end
	
	function colorPicker:GetValue(property)
		return properties[property]
	end
	
	colorPicker:SetValue("name", name)
	colorPicker:SetValue("parent", parent)
	
	function colorPicker:SetColor (r, g, b, a)
		colorDisplayInner:SetBackgroundColor(r, g, b, a)
		colorR, colorG, colorB, colorA = r, g, b, a
	end
	
	function colorPicker:GetColor ()
		return colorR, colorG, colorB, colorA
	end
	
	function colorPicker:SetActive(flag)
		if flag == true then
			colorDisplay:SetAlpha(1)
		else
			colorDisplay:SetAlpha(.5)
		end
		isActive = flag
	end
	
	function colorPicker:SetLabelColor(r, g, b, a) 
		labelColor = {r, g, b, a}
		label:SetFontColor (r, g, b, a) 
	end
	
	function colorPicker:SetText(text) label:SetText(text) end	
	function colorPicker:SetFont(addonInfo, font) EnKai.ui.setFont(label, addonInfo, font) end
	
	local oSetWidth, oSetHeight = colorPicker.SetWidth, colorPicker.SetHeight
	
	function colorPicker:SetWidth(newWidth)
		oSetWidth(self, newWidth)
		label:SetWidth(newWidth-colorDisplay:GetWidth())
	end
	
	function colorPicker:SetHeight(newHeight)
		oSetHeight(self, newHeight)
		colorDisplay:SetHeight(newHeight)
		colorDisplay:SetWidth(newHeight)
		label:SetWidth(colorPicker:GetWidth()-colorDisplay:GetWidth())
	end
	
	colorDisplay:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
			
		if isActive == false then return end
		
		if _uiGlobalColorPicker == nil then buildInternalColorPicker() end
		
		if _uiGlobalColorPicker:GetVisible() == true and pickerShown == true then
			_uiGlobalColorPicker:SetVisible(false)
		else	
			pickerShown = true
			_uiGlobalColorPicker:SetParent(colorPicker)
			_uiGlobalColorPicker:SetLayer(2)
			_uiGlobalColorPicker:SetVisible(true)
			_uiGlobalColorPicker:SetPoint("TOPLEFT", colorDisplay, "TOPRIGHT", 10 ,0)
			_uiGlobalColorPicker:SetColor(colorR, colorG, colorB, colorA)
			
			Command.Event.Detach(EnKai.events['EnKai.defaultColorPicker'].ColorChanged, nil, "EnKai.defaultColorPicker.ColorChanged")
			
			Command.Event.Attach(EnKai.events['EnKai.defaultColorPicker'].ColorChanged, function (_, r, g, b, a)				
				colorR, colorG, colorB, colorA = r, g, b, a 		
				_uiGlobalColorPicker:SetVisible(false)
				colorDisplayInner:SetBackgroundColor(r, g, b, 1)
				EnKai.eventHandlers[name]["ColorChanged"]( r, g, b, 1 )		
			end, "EnKai.defaultColorPicker.ColorChanged")
		end		
		
	end, name .. '.colorDisplay.Left.Click')
	
	EnKai.eventHandlers[name]["ColorChanged"], EnKai.events[name]["ColorChanged"] = Utility.Event.Create(addonInfo.identifier, name .. "ColorChanged")	

	return colorPicker
	
end

uiFunctions.NKCOLORPICKER = _uiColorPicker