local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiInfoText(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	local infoText = LibEKL.UICreateFrame ('nkFrame', name, parent)
	local label = LibEKL.UICreateFrame('nkText', name .. 'label', infoText)
	local texture = LibEKL.UICreateFrame('nkTexture', name .. 'texture', infoText)
	
	local properties = {}

	function infoText:SetValue(property, value)
		properties[property] = value
	end
	
	function infoText:GetValue(property)
		return properties[property]
	end

	local fontColor = LibEKL.Art.GetThemeColor("labelColor")
	local fontSize = 12
	
	infoText:SetWidth(100)
	infoText:SetHeight(20)
	
	texture:SetPoint("CENTERLEFT", infoText, "CENTERLEFT")
	texture:SetWidth(20)
	texture:SetHeight(20)
	
	label:SetPoint("CENTERLEFT", infoText, "CENTERLEFT", texture:GetWidth(), 0)
	label:SetFontSize(fontSize)
	label:SetFontColor(fontColor.r, fontColor.g, fontColor.b, fontColor.a)
	label:SetHeight(fontSize + 4)
	label:SetWordwrap(true)
	
	function infoText:SetText(newText)
		label:SetText(newText, true)
		label:ClearWidth()
		if label:GetWidth() > infoText:GetWidth() - texture:GetWidth() then label:SetWidth(infoText:GetWidth() - texture:GetWidth()) end
		label:ClearHeight()
		if label:GetWidth() > infoText:GetHeight() then label:SetHeight(infoText:GetHeight()) end
	end
	
	function infoText:SetType(infoType)
		if infoType == 'warning' then
			texture:SetTextureAsync('LibMap', 'gfx/iconWarning.png')
		else
			texture:SetTextureAsync('LibMap', 'gfx/iconInfo.png')
		end
	end
	
	function infoText:SetFontSize(newFontSize)
		label:SetFontSize(newFontSize)
		label:SetHeight(newFontSize+4)
		
		texture:SetWidth(math.floor(20 * (newFontSize / 12)))
		texture:SetHeight(math.floor(20 * (newFontSize / 12)))
		
		label:ClearWidth()
		if label:GetWidth() > infoText:GetWidth() - texture:GetWidth() then label:SetWidth(infoText:GetWidth() - texture:GetWidth()) end
	end	
	
	local oSetWidth, oSetHeight = infoText.SetWidth, infoText.SetHeight
	
	function infoText:SetWidth(newWidth)		
		oSetWidth(self, newWidth)
		label:ClearWidth()
		label:SetWidth(newWidth - texture:GetWidth())		
	end
	
	function infoText:SetHeight(newHeight)
		oSetHeight(self, newHeight)
		label:SetHeight(newHeight)
	end
	
	function infoText:SetIconAlign(newAlign, x, y)
		local left, top, right, bottom = texture:GetBounds()
		
		texture:ClearAll()
		texture:SetWidth(right-left)
		texture:SetHeight(bottom-top)
	
		if newAlign == "top" then
			texture:SetPoint("TOPLEFT", infoText, "TOPLEFT", 0, 2)
		elseif newAlign == "center" then
			texture:SetPoint("CENTERLEFT", infoText, "CENTERLEFT")
		else
			texture:SetPoint("BOTTOMLEFT", infoText, "BOTTOMLEFT", 0, -2)
		end
	end
	
	function infoText:SetFontColor(r, g, b, a)
	  if type(r) == "table" then
	    fontColor = r
	  else
		  fontColor = { r = r, g = g, b = b, a = a }
		end
		
		label:SetFontColor(fontColor.r, fontColor.g, fontColor.b, fontColor.a)
	end
	
	return infoText
	
end

uiFunctions.NKINFOTEXT = _uiInfoText