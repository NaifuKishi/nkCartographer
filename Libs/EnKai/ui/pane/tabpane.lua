local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiTabpane(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	-- pre-define ui elements --
	
	local tabPane = EnKai.uiCreateFrame ('nkFrame', name, parent)
	local bodyTexture = EnKai.uiCreateFrame ('nkTexture', name, tabPane)

	local headers = {}
	
	local properties = {}

	function tabPane:SetValue(property, value)
		properties[property] = value
	end
	
	function tabPane:GetValue(property)
		return properties[property]
	end
	
	-- default values --
	
	local activePane = 1
	local width, height = 0, 0
	local headerWidth, headerHeight = 0, 0
	local headerTextureActivePath, headerTextureActiveType = nil, nil
	local headerTexturePassivePath, headerTexturePassiveType = nil, nil
	local vertical = false
	local init = false
	
	local panes = {}
	
	-- fill ui elements with live

	bodyTexture:SetPoint("BOTTOMLEFT", tabPane, "BOTTOMLEFT")	
	bodyTexture:SetLayer(1)
	
	-- texture functions
	
	function tabPane:SetBodyTexture (textureType, texturePath)
		bodyTexture:SetTextureAsync(textureType, texturePath)
		tabPane:RecalcDimensions()
	end
	
	function tabPane:RecalcDimensions ()
		bodyTexture:ClearAll()
	
		if vertical == false then
			bodyTexture:SetWidth(width)
			bodyTexture:SetHeight(height - headerHeight)
			bodyTexture:SetPoint("BOTTOMLEFT", tabPane, "BOTTOMLEFT")	
		else
			bodyTexture:SetWidth(width - headerWidth)
			bodyTexture:SetHeight(height)
			bodyTexture:SetPoint("BOTTOMRIGHT", tabPane, "BOTTOMRIGHT")	
		end
	end
	
	function tabPane:SetHeaderTexture (activeFlag, textureType, texturePath, textureWidth, textureHeight)
		headerWidth = textureWidth
		headerHeight = textureHeight
		
		if activeFlag == true then
			headerTextureActiveType = textureType
			headerTextureActivePath = texturePath
			
			if headerTexturePassiveType == nil then
				headerTexturePassiveType = textureType
				headerTexturePassivePath = texturePath
			end
		else
			headerTexturePassiveType = textureType
			headerTexturePassivePath = texturePath
		end
		
		tabPane:RecalcDimensions()
	end
	
	local oSetWidth, oSetHeight = tabPane.SetWidth, tabPane.SetHeight
	
	function tabPane:SetWidth(newWidth)		
		oSetWidth(self, newWidth)
		width = newWidth
		tabPane:RecalcDimensions()
	end
	
	function tabPane:SetHeight(newHeight)
		oSetHeight(self, newHeight)
		height = newHeight
		tabPane:RecalcDimensions()
	end
	
	function tabPane:AddPane(newPaneInfo, updateFlag)
		
		newPaneInfo.init = false
		table.insert (panes, newPaneInfo)
		newPaneInfo.no = #panes
		
		local headerTexture = EnKai.uiCreateFrame ('nkTexture', name .. "headerTexture" .. #panes, tabPane)
		local headerLabel = EnKai.uiCreateFrame ('nkText', name .. "headerTextureLabel" .. #panes, tabPane)
				
		headerTexture:SetLayer(1)
		headerTexture:SetWidth(headerWidth)
		headerTexture:SetHeight(headerHeight)
		
		headerLabel:SetLayer(2)
		headerLabel:SetPoint("CENTER", headerTexture, "CENTER")
		headerLabel:SetFontColor (1, 1, 1, 1)
		headerLabel:SetText (newPaneInfo.label)
		
		headerTexture:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
			tabPane:SwitchToPane(newPaneInfo.no)	
		end, name .. "headerTexture" .. #panes .. ".Mouse.Left.Click")
		
		headerTexture:EventAttach(Event.UI.Input.Mouse.Cursor.In, function ()			
			headerTexture:SetTextureAsync(headerTextureActiveType, headerTextureActivePath)
		end, name .. "headerTexture" .. #panes .. ".Mouse.Cursor.In")
		
		headerTexture:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function ()
			if newPaneInfo.no == activePane then return end
			headerTexture:SetTextureAsync(headerTexturePassiveType, headerTexturePassivePath)
		end, name .. "headerTexture" .. #panes .. ".Mouse.Cursor.Out")
				
		table.insert(headers, { texture = headerTexture, label = headerLabel })
		
		if updateFlag == true then tabPane:UpdatePanes() end
	end
	
	function tabPane:SwitchToPane(number)
		
		if panes[number].init == false then 
			panes[number].init = true
			panes[number].initFunc() 
		end
		
		panes[activePane].frame:SetVisible(false)
		headers[activePane].texture:SetTextureAsync(headerTexturePassiveType, headerTexturePassivePath)			
		
		headers[number].texture:SetTextureAsync(headerTextureActiveType, headerTextureActivePath)			
		panes[number].frame:SetVisible(true)
		activePane = number
		
		EnKai.eventHandlers[name]["TabPaneChanged"](activePane)
		
	end
	
	function tabPane:GetPaneInfo()
		return panes
	end
	
	function tabPane:UpdatePanes()
		
		local from, paneHeaderObject, to, x = "TOPLEFT", tabPane, "TOPLEFT", 10
		if vertical == true then 
			from = "TOPLEFT"
			to = "TOPLEFT" 
			x = 0
		end
		
		for k, pane in pairs(panes) do
		
			headers[k].texture:SetPoint(from, paneHeaderObject, to, x, 0)
			headers[k].texture:SetTextureAsync(headerTexturePassiveType, headerTexturePassivePath)
		
			if init == false then
				if pane.initFunc ~= nil then
					pane.initFunc()
					init = true
					headers[k].texture:SetTextureAsync(headerTextureActiveType, headerTextureActivePath)
					activePane = k
					pane.init = true
				end
			end			
			
			pane.frame:SetVisible(false)
			pane.frame:SetPoint("TOPLEFT", bodyTexture, "TOPLEFT")
			pane.frame:SetPoint("BOTTOMRIGHT", bodyTexture, "BOTTOMRIGHT")
			pane.frame:SetLayer(999)
						
			if k == activePane then
				pane.frame:SetVisible(true)
			else
				pane.frame:SetVisible(false)
			end
			
			paneHeaderObject = headers[k].texture
			to, x = "TOPRIGHT", 0
			if vertical == true then to = "BOTTOMLEFT" end
			
		end
	end
	
	function tabPane:SetVertical(verticalFlag, updateFlag)
		vertical = verticalFlag
		if updateFlag == true then tabPane:UpdatePanes() end
	end
	
	function tabPane:GetActivePane() return activePane end
	
	EnKai.eventHandlers[name]["TabPaneChanged"], EnKai.events[name]["TabPaneChanged"] = Utility.Event.Create(addonInfo.identifier, name .. "TabPaneChanged")

	return tabPane
	
end

uiFunctions.NKTABPANE = _uiTabpane