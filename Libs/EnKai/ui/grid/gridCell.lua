local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiGridCell(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	-- pre-define ui elements --
	
	local cell = EnKai.uiCreateFrame ('nkCanvas', name, parent)
	cell:SetWidth(0)
	cell:SetHeight(0)
	cell:SetMouseMasking('limited')
	
	local label = EnKai.uiCreateFrame ('nkText', name .. 'label', cell)	
	label:SetMouseMasking('limited')
	
	local texture = nil
	
	local properties = {}

	function cell:SetValue(property, value)
		properties[property] = value
	end
	
	function cell:GetValue(property)
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
	local isTexture = false
	local orientation = "CENTERLEFT"
	local align = 'left'
	local backupText = nil
	local backupLabelColor = nil
	local textureHeight, textureWidth = nil, nil
	local stroke = {r = 1, g = 1, b = 1, a = 1, thickness = 1 }
	local path = {	{xProportional = 0, yProportional = 0}, 
						{xProportional = 0, yProportional = 1},
						{xProportional = 1, yProportional = 1},
						{xProportional = 1, yProportional = 0},
						{xProportional = 0, yProportional = 0} }
	local fill = {type = 'solid', r = 0, g = 0, b = 0, a = 1}
	
	-- fill ui elements with live --
	
	cell:SetWidth(width)
	cell:SetHeight(height)
	--cell:SetBackgroundColor(borderColor[1], borderColor[2], borderColor[3], borderColor[4])
	
	label:SetPoint ("CENTER", cell, "CENTER")
	label:SetFontColor (labelColor.r, labelColor.g, labelColor.b, labelColor.a)
	label:SetFontSize (fontSize)
	label:SetHeight (height - 2)
	if cell:GetWidth()-2 < label:GetWidth() then label:SetWidth(cell:GetWidth()-2) end
	
	function cell:SetText(text)
	
	  if backupText ~= text then 			
		  label:SetText(text)
		  cell:SetAlign(align)
		  backupText = text
	  end
		
	end
	
	function cell:SetLabelColor (newColor)
	  if backupLabelColor ~= newColor then
		  labelColor = newColor
		  label:SetFontColor (newColor.r, newColor.g, newColor.b, newColor.a)
		  backupLabelColor = newColor
		end
	end
	
	function cell:SetBorderColor(newColor)
    if borderColor ~= newColor then 
  		borderColor = newColor
  		stroke = {r = borderColor.r, g = borderColor.g, b = borderColor.b, a = borderColor.a, thickness = 1 } 
  		cell:SetShape(path, fill, stroke)
    end
	end
	
	function cell:SetBodyColor(newColor)
	  if bodyColor ~= newColor then
		  bodyColor = newColor
		  fill = {type = 'solid', r = bodyColor.r, g = bodyColor.g, b = bodyColor.b, a = bodyColor.a} 
		  cell:SetShape(path, fill, stroke)
		end
	end
	
	-- texture handling
	
	function cell:IsTexture()
		return isTexture
	end
	
	function cell:SetTexture(textureType, texturePath)
		if texture == nil then
			label:SetVisible(false)
			texture = EnKai.uiCreateFrame ('nkTexture', name .. 'texture', cell)
			texture:SetMouseMasking('limited')
			texture:SetPoint ("CENTER", cell, "CENTER")
			
			if textureWidth ~= nil or textureHeight ~= nil then
				local width = textureWidth or textureHeight
				local height = textureHeight or textureWidth
				
				if width > cell:GetWidth()-2 then 
					height = height * (width / (cell:GetWidth()-2))
					width = cell:GetWidth()-2
				end
				
				if height > cell:GetHeight()-2 then 
					width = width * (height / (cell:GetHeight()-2))
					height = cell:GetHeight()-2 
				end
			else
				if cell:GetWidth()-2 > cell:GetHeight()-2 then
					texture:SetHeight(cell:GetHeight()-2)
					texture:SetWidth(cell:GetHeight()-2)
				else
					texture:SetHeight(cell:GetWidth()-2)
					texture:SetWidth(cell:GetWidth()-2)
				end
			end
			
		end
		
		if texturePath == nil then textureType, texturePath = 'EnKai', 'gfx/empty.png' end
		texture:SetTextureAsync(textureType, texturePath)
		isTexture = true
			
	end
	
	function cell:SetTextureWidth(newWidth)
		textureWidth = newWidth
		texture:SetWidth(textureWidth)
	end
	
	function cell:SetTextureHeight(newHeight)
		textureHeight = newHeight
		texture:SetHeight(textureHeight)
	end
	
	-- layout options
	
	function cell:GetOrientation()
		return orientation
	end
	
	function cell:SetAlign(newAlign)
		align = newAlign
		if align == 'center' then
			orientation = "CENTER"
		else
			orientation = "CENTERLEFT"
		end
		
		if cell:IsTexture() then
			texture:ClearAll()
			texture:SetPoint (orientation, cell, orientation)
			texture:SetHeight(cell:GetHeight()-2)
			texture:SetWidth(cell:GetWidth()-2)
		else
			label:ClearAll()
			label:SetPoint (orientation, cell, orientation)
			if cell:GetWidth()-2 < label:GetWidth() then label:SetWidth(cell:GetWidth()-2) end
		end
	end
	
	function cell:SetFontSize(newFontSize)
		fontSize = newFontSize
		label:SetFontSize(fontSize)
		cell:SetHeight( fontSize + fontSizeMod)
	end
	
	-- replacing original functions
	
	local oSetWidth, oSetHeight = cell.SetWidth, cell.SetHeight
	
	function cell:SetWidth(newWidth)
		width = newWidth
		oSetWidth(self, width)
		if cell:GetWidth()-2 < label:GetWidth() then label:SetWidth(cell:GetWidth()-2) end
		cell:SetShape(path, fill, stroke)
	end
	
	function cell:SetHeight(newHeight)
		height = newHeight
		oSetHeight(self, height)
		label:SetHeight(height-2)
		cell:SetShape(path, fill, stroke)
	end
	
	local oSetVisible = cell.SetVisible
	
	function cell:SetVisible(flag)
		oSetVisible(self, flag)
		label:SetVisible(flag)
		if cell:IsTexture() then texture:SetVisible(flag) end
	end
	
	return cell
	
end

uiFunctions.NKGRIDCELL = _uiGridCell