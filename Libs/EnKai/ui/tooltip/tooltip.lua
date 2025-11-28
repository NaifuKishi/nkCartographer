local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiTooltip(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	local defaultTitleColor = {1, 1, 1, 1}
	local defaultSubTitleColor = {1, 1, 1, 1}	
	local defaultLinesColor = {1, 1, 1, 1}	
	local defaultBorderColor = { 0.557, 0.553, 0.431, 1 }
	
	local defaultWidth = 100

	local tooltip = EnKai.uiCreateFrame ('nkFrame', name, parent)
	local tooltipInner = EnKai.uiCreateFrame ('nkFrame', name .. 'Innner', tooltip)
	local title = EnKai.uiCreateFrame ('nkText', name .. 'Title', tooltipInner)
	local subTitle = EnKai.uiCreateFrame ('nkText', name .. 'subTitle', tooltipInner)
	local separator = EnKai.uiCreateFrame ('nkFrame', name .. 'separator', tooltipInner)
	
	local lines = {}
	local target = nil
	local properties = {}
	local font = nil

	function tooltip:SetValue(property, value)
		properties[property] = value
	end
	
	function tooltip:GetValue(property)
		return properties[property]
	end
	
	tooltip:SetValue("name", name)
	tooltip:SetValue("parent", parent)
	tooltip:SetVisible(false)
	
	tooltip:SetWidth(defaultWidth)
	tooltip:SetBackgroundColor (defaultBorderColor[1], defaultBorderColor[2], defaultBorderColor[3], defaultBorderColor[4])
	
	tooltipInner:SetPoint ("TOPLEFT", tooltip, "TOPLEFT", 1, 1)
	tooltipInner:SetPoint ("BOTTOMRIGHT", tooltip, "BOTTOMRIGHT", -1, -1)
	tooltipInner:SetBackgroundColor (0, 0, 0, 1)
	 
	title:SetPoint ("TOPLEFT", tooltip, "TOPLEFT")
	title:SetFontSize(13)
	title:SetFontColor(defaultTitleColor[1], defaultTitleColor[2], defaultTitleColor[3], defaultTitleColor[4])
		
	subTitle:SetPoint ("TOPLEFT", title, "BOTTOMLEFT")
	subTitle:SetFontSize(11)
	subTitle:SetFontColor(defaultSubTitleColor[1], defaultSubTitleColor[2], defaultSubTitleColor[3], defaultSubTitleColor[4])
	subTitle:SetVisible(false)
	subTitle:SetHeight(1)
	
	separator:SetPoint("TOPLEFT", subTitle, "BOTTOMLEFT")
	separator:SetWidth(tooltipInner:GetWidth())
	separator:SetHeight(1)
	
	separator:SetBackgroundColor(defaultBorderColor[1], defaultBorderColor[2], defaultBorderColor[3], defaultBorderColor[4])

	function tooltip:SetFont (addonId, fontName)
		font = { addonId = addonId, fontName = fontName}

		EnKai.ui.setFont(title, addonId, fontName)
		EnKai.ui.setFont(subTitle, addonId, fontName)

		for idx = 1, #lines, 1 do
			local line = lines[idx]
			EnKai.ui.setFont(line, addonId, fontName)
		end
	end

	function tooltip:SetTitle(newTitle)
		title:ClearWidth()
		title:SetText(newTitle)
	end
	
	function tooltip:SetTitleColor(r, g, b)
		title:SetFontColor(r, g, b , 1)
	end
	
	function tooltip:SetTitleFontSize(newFontSize)
		title:ClearWidth()
		title:SetFontSize(newFontSize)
	end
	
	function tooltip:SetSubTitle(newTitle)
	
		tooltip:SetValue('subTitle', newTitle)
		
		if newTitle == nil then
			subTitle:SetPoint("TOPLEFT", tooltipInner, "BOTTOMLEFT")
			subTitle:SetVisible(false)
			subTitle:SetHeight(1)
			subTitle:SetWidth(1)
		else				
			subTitle:ClearWidth()
			subTitle:SetText(newTitle)
			subTitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT")
			subTitle:SetVisible(true)
			subTitle:SetHeight(11)			
		end
	end
	
	function tooltip:SetLines(newLines)
		
		local newHeight = title:GetHeight() + 7
		local newWidth = 0
		
		if title:GetWidth() > newWidth then newWidth = title:GetWidth() end
		if subTitle:GetWidth() > newWidth then newWidth = subTitle:GetWidth() end
		
		if subTitle:GetVisible() == true then newHeight = newHeight + subTitle:GetHeight() end
		
		for idx = 1, #newLines, 1 do
			local line = nil
			if idx > #lines then
				line = EnKai.uiCreateFrame ('nkText', name .. 'line' .. idx, tooltipInner)
				line:SetFontColor(defaultLinesColor[1], defaultLinesColor[2], defaultLinesColor[3], defaultLinesColor[4])
				line:SetFontSize(11)

				if font ~= nil then
					EnKai.ui.setFont(line, font.addonId, font.fontName)
				end
								
				if idx == 1 then
					line:SetPoint("TOPLEFT", separator, "BOTTOMLEFT")
				else
					line:SetPoint("TOPLEFT", lines[idx-1], "BOTTOMLEFT")
				end
				
				table.insert(lines, line)
			else
				line = lines[idx]
				line:SetVisible(true)
			end
			
			if newLines[idx].fontsize ~= nil then
				line:SetFontSize(newLines[idx].fontsize)
			end 

			line:ClearHeight()
			
			if newLines[idx].wordwrap ~= true then 
				if newLines[idx].height == nil then
					line:SetHeight(16)
				else
					line:SetHeight(newLines[idx].height)
				end
			else
				line:SetWordwrap(true)
				if newLines[idx].minWidth ~= nil and newWidth < newLines[idx].minWidth then
					line:SetWidth(newLines[idx].minWidth)
				else
					line:SetWidth(newWidth)
				end
			end
			
			line:SetText(newLines[idx].text, true)	
			
			newHeight = newHeight + line:GetHeight()
			if line:GetWidth() > newWidth then newWidth = line:GetWidth() end
			
		end
		
		if #newLines < #lines then
			for idx = #newLines + 1, #lines, 1 do
				lines[idx]:SetVisible(false)
			end
		end
		
		tooltip:SetWidth(newWidth)
		separator:SetWidth(newWidth-2)
		tooltip:SetHeight(newHeight+2)
	end
	
	local oSetWidth = tooltip.SetWidth
	
	function tooltip:SetWidth(newWidth)
    oSetWidth(self, newWidth)
    separator:SetWidth(newWidth-2)
	end
	
	local oSetVisible = tooltip.SetVisible
	
	function tooltip:SetVisible(flag)
		
		if #lines == 0 then
			separator:SetVisible(false)	
			tooltip:SetHeight(title:GetHeight())
		else
			local key, value = EnKai.tools.table.getFirstElement(lines)
			if value:GetVisible() == false then
				separator:SetVisible(false)
				tooltip:SetHeight(title:GetHeight())
			else
				separator:SetVisible(true)
			end
		end
		
		oSetVisible(self, flag)
		
	end
	
	local oSetPoint = tooltip.SetPoint
	
	function tooltip:SetPoint(from, object, to, x, y)
		target = object
		oSetPoint(self, from, object, to, x, y)
	end
	
	function tooltip:GetTarget() return target end
	
	return tooltip
	
end

uiFunctions.NKTOOLTIP = _uiTooltip
