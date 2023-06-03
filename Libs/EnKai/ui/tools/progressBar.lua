local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiProgressBar(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	local labelColor = {0, 0, 0, 0}
	local borderColor = { 1, 1, 1, 1 }
	local backgroundColor = { 0, 0, 0, 1 }	
	local fillColor = {1, 1, 1, 1}
	local value = nil
	
	local range = {0, 100}

	local progressBar = EnKai.uiCreateFrame ('nkCanvas', name, parent)
	local inner = EnKai.uiCreateFrame ('nkFrame', name ..'.inner', progressBar)	
	local label = EnKai.uiCreateFrame ('nkText', name .. '.label', inner)
	
	inner:SetPoint("TOPLEFT", progressBar, "TOPLEFT", 1, 1)
	inner:SetBackgroundColor(fillColor[1], fillColor[2], fillColor[3], fillColor[4])
	
	label:SetFontSize(13)
	label:SetPoint("CENTER", progressBar, "CENTER")
	label:SetFontColor(labelColor[1], labelColor[2], labelColor[3], labelColor[4])	

	local properties = {}

	local canvas = {{xProportional = 0, yProportional = 0}, 
					{ xProportional = 1, yProportional = 0}, 
					{ xProportional = 1, yProportional = 1}, 
					{ xProportional = 0, yProportional = 1},
					{xProportional = 0, yProportional = 0}}
	local fill = {type = 'solid', r = backgroundColor[1], g = backgroundColor[2], b = backgroundColor[3], a = backgroundColor[4]}
	local stroke =  { r = borderColor[1], g = borderColor[2], b = borderColor[3], a = borderColor[4], thickness = 1}
	
	progressBar:SetWidth(0)
	progressBar:SetHeight(0)
	progressBar:SetShape(canvas, fill, stroke)
	
	function progressBar:SetRange(from, to)
		range = {from, to}
	end	
	
	function progressBar:GetRange()
    return range
  end 
  
	
	function progressBar:SetBorderColor(r, g, b, a)
		borderColor = {r, g, b ,a}
		stroke = { r = borderColor[1], g = borderColor[2], b = borderColor[3], a = borderColor[4], thickness = 1}
		progressBar:SetShape(canvas, fill, stroke)
	end
	
	function progressBar:SetBackgroundColor (r, g, b, a)
		backgroundColor = {r, g, b ,a}
		fill = { type = 'solid', r = backgroundColor[1], g = backgroundColor[2], b = backgroundColor[3], a = backgroundColor[4]}
		progressBar:SetShape(canvas, fill, stroke)		
	end
	
	function progressBar:SetFillColor (r, g, b, a)
		fillColor = {r, g, b ,a}
		inner:SetBackgroundColor(r, g, b, a)		
	end
	
	function progressBar:SetFontColor (r, g, b, a)
		labelColor = {r, g, b, a}
		label:SetFontColor(r, g, b, a)
	end
	
	function progressBar:SetFontSize (newFontSize)
		label:SetFontSize(newFontSize)		
	end
	
	function progressBar:SetValue(newValue)
		if newValue < range[1] or newValue > range[2] then
			EnKai.tools.error.display ("EnKai", string.format("pogressBar [%s] value out of range %d-%d",name, range[1], range[2]), 2)
			return
		end
		
		local percent = 1 / (range[2] - range[1] + 1) * newValue
		inner:SetWidth(progressBar:GetWidth() * percent)
		label:ClearWidth()
		label:SetText(string.format("%2.2f%%", percent * 100))
				
		if inner:GetWidth() > progressBar:GetWidth() / 2 + label:GetWidth() / 2 then
			label:SetFontColor(backgroundColor[1], backgroundColor[2], backgroundColor[3], backgroundColor[4])
		else
			label:SetFontColor(labelColor[1], labelColor[2], labelColor[3], labelColor[4])
		end 
		
		value = newValue
	end
	
	local oSetHeight, oSetWidth = progressBar.SetHeight, progressBar.SetWidth
	
	function progressBar:SetWidth(newWidth)
		oSetWidth(self, newWidth)
		inner:SetWidth(newWidth-2)
		if value ~= nil then progressBar:SetValue(value) end
	end
	
	function progressBar:SetHeight(newHeight)
		oSetHeight(self, newHeight)
		inner:SetHeight(newHeight-1)
	end
	
	return progressBar
	
end

uiFunctions.NKPROGRESSBAR = _uiProgressBar