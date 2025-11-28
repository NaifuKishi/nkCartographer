local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiGridHeaderCell(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end
	
	-- pre-define ui elements --
	
	local headerCell = EnKai.uiCreateFrame ('nkCanvas', name, parent)
	headerCell:SetWidth(0)
	headerCell:SetHeight(0)
	
	local label = EnKai.uiCreateFrame ('nkText', name .. 'label', headerCell)

	local properties = {}

	function headerCell:SetValue(property, value)
		properties[property] = value
	end
	
	function headerCell:GetValue(property)
		return properties[property]
	end
	
	-- default values --
	
	local borderColor = EnKai.art.GetThemeColor('borderColor')
	local bodyColor = EnKai.art.GetThemeColor('backgroundColor')
	local labelColor = EnKai.art.GetThemeColor('labelColor')
	local fontSize = 13
	local fontSizeMod = 6
	local height = fontSize + fontSizeMod
	local width = 50 
	local align = "center"
	local orientation = "CENTERLEFT"
	local stroke = {r = 1, g = 1, b = 1, a = 1, thickness = 1 }
	local path = {	{xProportional = 0, yProportional = 0}, 
						{xProportional = 0, yProportional = 1},
						{xProportional = 1, yProportional = 1},
						{xProportional = 1, yProportional = 0},
						{xProportional = 0, yProportional = 0} }
	local fill = {type = 'solid', r = 0, g = 0, b = 0, a = 1}
	
	-- fill ui elements with live --
	
	headerCell:SetWidth(width)
	headerCell:SetHeight(height)
	headerCell:SetShape(path, fill, stroke)
	
	label:SetPoint ("CENTER", headerCell, "CENTER")
	label:SetFontColor (labelColor.r, labelColor.g, labelColor.b, labelColor.a)
	label:SetFontSize (fontSize)
	label:SetHeight (height - 2)
	if headerCell:GetWidth() -2 < label:GetWidth() then label:SetWidth(headerCell:GetWidth()-2) end
	
	function headerCell:SetText(text)
		if text ~= nil then label:SetText(text) end
	end
	
	function headerCell:SetLabelColor(newColor)
	  labelColor = newColor
		label:SetFontColor(newColor.r, newColor.g, newColor.b, newColor.a)
	end
	
	function headerCell:SetBorderColor(newStroke)
	  stroke = { thickness = 1, r = newStroke.r, g = newStroke.g, b = newStroke.b, a = newStroke.a}
		headerCell:SetShape(path, fill, stroke)
	end
	
	function headerCell:SetBodyColor(newFill)
		fill = {type = 'solid', r = newFill.r, g = newFill.g, b = newFill.b, a = newFill.a}
		headerCell:SetShape(path, fill, stroke)
	end
	
	function headerCell:SetAlign(newAlign)
		align = newAlign
		
		if align == 'center' then
			orientation = "CENTER"
		else
			orientation = "CENTERLEFT"
		end
		
		label:ClearAll()
		label:SetPoint (orientation, headerCell, orientation)
		if headerCell:GetWidth()-2 < label:GetWidth() then label:SetWidth(headerCell:GetWidth()-2) end
	end

	function headerCell:SetFont (addonId, fontName)
		EnKai.ui.setFont(label, addonId, fontName)
	end
	
	function headerCell:SetFontSize(newFontSize)
	
		if height == fontSize + fontSizeMod then height = newFontSize + fontSizeMod end
	
		fontSize = newFontSize
		label:SetFontSize(fontSize)
		headerCell:SetHeight(height)
		if headerCell:GetWidth()-2 < label:GetWidth() then label:SetWidth(headerCell:GetWidth()-2) end
	end
	
	local oSetWidth, oSetHeight = headerCell.SetWidth, headerCell.SetHeight
	
	function headerCell:SetWidth(newWidth)
		width = newWidth
		oSetWidth(self, width)
		headerCell:SetShape(path, fill, stroke)
		if headerCell:GetWidth()-2 < label:GetWidth() then label:SetWidth(headerCell:GetWidth()-2) end
	end
	
	function headerCell:SetHeight(newHeight)
		height = newHeight
		oSetHeight(self, height)
		headerCell:SetShape(path, fill, stroke)
	end
		
	return headerCell
	
end

uiFunctions.NKGRIDHEADERCELL = _uiGridHeaderCell
