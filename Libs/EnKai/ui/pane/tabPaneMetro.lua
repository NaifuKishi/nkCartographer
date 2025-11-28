local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- local function block ---------

local function tabHeader (name, parent)

  local selected = false

  local vertical = false;

  local headerTabWidth = 100
  local headerTabHeight = 30
  
  local uiFrameStroke = { thickness = 1, r = EnKai.art.GetThemeColor('tabPaneColor')[1].r, g = EnKai.art.GetThemeColor('tabPaneColor')[1].g, b = EnKai.art.GetThemeColor('tabPaneColor')[1].b, a = EnKai.art.GetThemeColor('tabPaneColor')[1].a}
  local uiFrameFill = { type = 'solid', r = EnKai.art.GetThemeColor('tabPaneColor')[2].r, g = EnKai.art.GetThemeColor('tabPaneColor')[2].g, b = EnKai.art.GetThemeColor('tabPaneColor')[2].b, a = EnKai.art.GetThemeColor('tabPaneColor')[2].a}
  local uiFrameFillSelected = EnKai.art.GetThemeColor('tabPaneColor')[3]
  local fontColor = EnKai.art.GetThemeColor('tabPaneColor')[4]
  local fontColorSelected = EnKai.art.GetThemeColor('tabPaneColor')[5]
  local border = true
  
  local cornerRelX = 1 / headerTabWidth * 2
  local cornerRelY = 1 / headerTabHeight * 2    
    
  local path = {   {xProportional = 0, yProportional = 1 },
                   {xProportional = 0, yProportional = 0 },
                   {xProportional = (1-(cornerRelX*2)), yProportional = 0 },
                   {xProportional = (1-cornerRelX), yProportional = cornerRelY },
                   {xProportional = (1-cornerRelX), yProportional = (1-cornerRelY) },
                   {xProportional = 1, yProportional = 1 },
                   {xProportional = 0, yProportional = 1 } }
    
  local tabButton = EnKai.uiCreateFrame("nkCanvas", name, parent)
  
  local label = EnKai.uiCreateFrame("nkText", name .. ".label", tabButton)
      
  tabButton:SetShape(path, uiFrameFill, uiFrameStroke)
  tabButton:SetHeight(headerTabHeight)
  tabButton:SetWidth(headerTabWidth)
  
  label:SetFontSize(12)
  label:SetFontColor(fontColor.r, fontColor.g, fontColor.b, fontColor.a)
  label:SetPoint("CENTER", tabButton, "CENTER")
  
  tabButton:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
    EnKai.eventHandlers[name]["Clicked"]()
  end, name .. ".boxOutter_LeftClick")    
  
  function tabButton:SetText(text)
    label:SetText(text)
  end  

  function tabButton:SetFont(addonInfo, font) EnKai.ui.setFont(label, addonInfo, font) end
  
  function tabButton:SetSelected(flag)
    selected = flag
    
    if selected == true then
      if border == true then    
        tabButton:SetShape(path, uiFrameFillSelected, uiFrameStroke)
      else        
        
        tabButton:SetShape(path, uiFrameFillSelected, { thickness = 1, r = uiFrameFillSelected.r, g = uiFrameFillSelected.g, b = uiFrameFillSelected.b, a = uiFrameFillSelected.a })
      end
      
      if fontColorSelected == nil then
        label:SetFontColor(fontColor.r, fontColor.g, fontColor.b, 1)
      else
        label:SetFontColor(fontColorSelected.r, fontColorSelected.g, fontColorSelected.b, fontColorSelected.a)
      end
    else
      tabButton:SetShape(path, uiFrameFill, uiFrameStroke)      
      label:SetFontColor(fontColor.r, fontColor.g, fontColor.b, fontColor.a)
    end
  end
  
  function tabButton:SetColor(stroke, fill, fillSelected, newFontColor, newFontColorSelected)
  
    if stroke ~= nil then uiFrameStroke = stroke end
    if fill ~= nil then uiFrameFill = fill end
    if fillSelected ~= nil then uiFrameFillSelected = fillSelected end
    if newFontColor ~= nil then fontColor = newFontColor end
    if newFontColorSelected ~= nil then fontColorSelected = newFontColorSelected end
    
    tabButton:SetSelected(selected)
  
  end
  
  function tabButton:SetBorder(flag)
    border = flag
    
    if selected == true then tabButton:SetSelected(selected) end
  end
  
  function tabButton:SetVertical(flag)
    vertical = flag
    
    if vertical == false then
      path = {   {xProportional = 0, yProportional = 1 },
                   {xProportional = 0, yProportional = 0 },
                   {xProportional = (1-(cornerRelX*2)), yProportional = 0 },
                   {xProportional = (1-cornerRelX), yProportional = cornerRelY },
                   {xProportional = (1-cornerRelX), yProportional = (1-cornerRelY) },
                   {xProportional = 1, yProportional = 1 },
                   {xProportional = 0, yProportional = 1 } }
    else
      path = {   {xProportional = 0, yProportional = 0 },
                   {xProportional = 1, yProportional = 0 },
                   {xProportional = 1, yProportional = 1 },
                   {xProportional = cornerRelX, yProportional = 1 },
                   {xProportional = 0, yProportional = (1-cornerRelY) },
                   {xProportional = 0, yProportional = 0 } }
    end
    
    tabButton:SetSelected(selected)
  end
  
  EnKai.eventHandlers[name]["Clicked"], EnKai.events[name]["Clicked"] = Utility.Event.Create(addonInfo.identifier, name .. "Clicked")
  
  return tabButton

end

---------- addon internal function block ---------

local function _uiTabpaneMetro(name, parent) 

	local tabPane = EnKai.uiCreateFrame("nkFrame", name, parent)
	
	if tabPane == nil then return nil end -- event check failed
	
	local uiFrame = EnKai.uiCreateFrame("nkCanvas", name .. ".ui", tabPane)
	local bodyFrame = EnKai.uiCreateFrame("nkFrame", name .. ".body", uiFrame)
	local helperLine = EnKai.uiCreateFrame("nKFrame", name .. ".helperLine", tabPane)
  
  local panes = {}
  local tabButtons = {}
  local fontInfo = {}
  
	-- GARBAGE COLLECTOR ROUTINES
  
  function tabPane:destroy()
    internal.uiAddToGarbageCollector ('nkFrame', tabPane)
    internal.uiAddToGarbageCollector ('nkCanvas', uiFrame)
    internal.uiAddToGarbageCollector ('nkFrame', bodyFrame)
    internal.uiAddToGarbageCollector ('nkFrame', helperLine)
    
    for k, v in pairs(tabButtons) do
       v:destroy()
    end
  end   
  
  -- SPECIFIC FUNCTIONS
	
	local activePane = 1
	local init = false
	local headerTabWidth = 100
	local headerTabHeight = 30
	local vertical = false
	                           
  local tabButtonPath = {  {xProportional = 0, yProportional = 1},
                         {xProportional = 0, yProportional = 0},
                          {xProportional = 1, yProportional = 0},
                          {xProportional = 1, yProportional = 1} }	
                          
  local uiFrameFill = { type = 'solid', r = EnKai.art.GetThemeColor('tabPaneColor')[2].r, g = EnKai.art.GetThemeColor('tabPaneColor')[2].g, b = EnKai.art.GetThemeColor('tabPaneColor')[2].b, a = EnKai.art.GetThemeColor('tabPaneColor')[2].a}
  
  local uiFramePath = {  {xProportional = 0, yProportional = 0},
                         {xProportional = 1, yProportional = 0},
                          {xProportional = 1, yProportional = 1},
                          {xProportional = 0, yProportional = 1},
                          {xProportional = 0, yProportional = 0} }
                          
  local uiFrameStroke = { thickness = 1, r = EnKai.art.GetThemeColor('tabPaneColor')[1].r, g = EnKai.art.GetThemeColor('tabPaneColor')[1].g, b = EnKai.art.GetThemeColor('tabPaneColor')[1].b, a = EnKai.art.GetThemeColor('tabPaneColor')[1].a}
  
  local fontColor = EnKai.art.GetThemeColor('tabPaneColor')[4]
  local fontColorSelected = nil
  local border = true
  
  uiFrame:SetLayer(2)
  uiFrame:SetPoint("TOPLEFT", tabPane, "TOPLEFT", 0, headerTabHeight)
  uiFrame:SetPoint("BOTTOMRIGHT", tabPane, "BOTTOMRIGHT")
  uiFrame:SetShape(uiFramePath, uiFrameFill, uiFrameStroke)
  
	bodyFrame:SetPoint("TOPLEFT", uiFrame, "TOPLEFT", 10, 10)
	bodyFrame:SetPoint("BOTTOMRIGHT", uiFrame, "BOTTOMRIGHT", -10, -10)
	bodyFrame:SetLayer(1)
	
	helperLine:SetBackgroundColor(uiFrameFill.r, uiFrameFill.g, uiFrameFill.b, uiFrameFill.a)
	helperLine:SetLayer(9)
	helperLine:SetWidth(headerTabWidth-2)
	helperLine:SetHeight(2)

	function tabPane:AddPane(newPaneInfo, updateFlag)
		
		local paneNo = #panes + 1
		
		local stepButtonName = name .. ".tabButton" .. paneNo
		
		newPaneInfo.init = false
		table.insert (panes, newPaneInfo)
		newPaneInfo.no = paneNo

		local tabButton = tabHeader (stepButtonName, tabPane)
		tabButton:SetText(newPaneInfo.label)

		if fontInfo.fontName then tabButton:SetFont(fontInfo.addonInfo, fontInfo.fontName) end
		
		Command.Event.Attach(EnKai.events[stepButtonName].Clicked, function ()
			tabButtons[activePane]:SetSelected(false)
		tabPane:SwitchToPane(paneNo)
    end, stepButtonName .. '.Clicked')
		
		table.insert(tabButtons, tabButton)
		
		if updateFlag == true then tabPane:UpdatePanes() end
	end
	
	function tabPane:SwitchToPane(number)
		
		if activePane == number then return end
		
		if panes[number].init == false then 
			panes[number].init = true
			panes[number].initFunc() 
		end
		
		panes[activePane].frame:SetVisible(false)
		panes[number].frame:SetVisible(true)
		
		tabButtons[activePane]:SetSelected(false)
		tabButtons[activePane]:SetLayer(1)
		
		tabButtons[number]:SetSelected(true)
		tabButtons[number]:SetLayer(3)
		helperLine:SetPoint("TOPLEFT", tabButtons[number], "BOTTOMLEFT", 1,0)

		activePane = number
		
		EnKai.eventHandlers[name]["TabPaneChanged"](activePane)
		
	end
	
	function tabPane:GetPaneInfo()
		return panes
	end
	
	function tabPane:UpdatePanes()
	
	  local path = {}
	  
	  local cornerRelX = 1 / tabPane:GetWidth() * 5
	  local cornerRelY = 1 / tabPane:GetHeight() * 5
	  local startX = headerTabWidth * activePane
	  local startX2 = headerTabWidth * (activePane-1)
	  local startY = headerTabHeight
	  local relX = 1 / tabPane:GetWidth() * startX + cornerRelX
	  local relY = 1 / tabPane:GetHeight() * startY + cornerRelY
	  
	  table.insert(path, {xProportional = 0, yProportional = 0 })
	  table.insert(path, {xProportional = (1-cornerRelX), yProportional = 0} )
	  table.insert(path, {xProportional = 1, yProportional = cornerRelY})
	  table.insert(path, {xProportional = 1, yProportional = 1 - cornerRelY })
	  table.insert(path, {xProportional = (1-cornerRelX), yProportional = 1})
	  table.insert(path, {xProportional = cornerRelX, yProportional = 1})
	  table.insert(path, {xProportional = 0, yProportional = (1-cornerRelY)})
	  table.insert(path, {xProportional = 0, yProportional = 0 })
	  
	  if border == true then
	    uiFrame:SetShape(path, uiFrameFill, uiFrameStroke)
	  else
	    uiFrame:SetShape(path, uiFrameFill, { thickness = 1, r = uiFrameFill.r, g = uiFrameFill.g, b = uiFrameFill.b, a = uiFrameFill.a })
	  end
	  
	  uiFrame:ClearPoint("TOPLEFT")
    
    if vertical == true then
	    uiFrame:SetPoint("TOPLEFT", tabPane, "TOPLEFT", headerTabWidth, 0)	   
    else
      uiFrame:SetPoint("TOPLEFT", tabPane, "TOPLEFT", 0, headerTabHeight)
	  end
	  
		local from, paneHeaderObject, to, x, y = "TOPLEFT", tabPane, "TOPLEFT", 0, 0
		
		local tabCornerRelX = 1 / headerTabWidth * 2
		
		for k, pane in pairs(panes) do
		
		  tabButtons[k]:SetPoint(from, paneHeaderObject, to, x, y)			
		  tabButtons[k]:SetColor(uiFrameStroke, {type = 'solid', r = uiFrameStroke.r, g = uiFrameStroke.g, b = uiFrameStroke.b, a = uiFrameStroke.a}, uiFrameFill, fontColor, fontColorSelected)
		  tabButtons[k]:SetBorder(border)
		  tabButtons[k]:SetVertical(vertical)
		
			if init == false then
				if pane.initFunc ~= nil then
					pane.initFunc()
					init = true
					activePane = k
					
					tabButtons[k]:SetSelected(true)					
					pane.init = true					
				end
			end			
			
  		pane.frame:SetVisible(false)
			pane.frame:SetPoint("TOPLEFT", bodyFrame, "TOPLEFT")
			pane.frame:SetPoint("BOTTOMRIGHT", bodyFrame, "BOTTOMRIGHT")
			pane.frame:SetLayer(999)
						
			if k == activePane then
				pane.frame:SetVisible(true)
				tabButtons[k]:SetLayer(3)
				
				if border == true then
				  helperLine:SetVisible(true)
  				helperLine:SetPoint("TOPLEFT", tabButtons[k], "BOTTOMLEFT", 1,0)
  				helperLine:SetBackgroundColor(uiFrameFill.r, uiFrameFill.g, uiFrameFill.b, uiFrameFill.a)
  			else
  			  helperLine:SetVisible(false)
  			end
			else
				pane.frame:SetVisible(false)
				tabButtons[k]:SetLayer(1)
			end
			
			paneHeaderObject = tabButtons[k]
			
			if vertical == true then
			  to, y = "BOTTOMLEFT", -3
			else
			  to, x = "TOPRIGHT", -3
			end

		end
		
	end
	
	function tabPane:SetColor(stroke, fill, newFontColor, newFontColorSelected)
	  if stroke ~= nil then uiFrameStroke = stroke end
	  if fill ~= nil then uiFrameFill = fill end
	  if newFontColor ~= nil then fontColor = newFontColor end
	  if newFontColorSelected ~= nil then fontColorSelected = newFontColorSelected end
	  
	  if init == true then tabPane:UpdatePanes() end
	end
	
	function tabPane:SetFont(addonInfo, fontName) 
		fontInfo = { addonInfo = addonInfo, fontName = fontName}
		--for k, v in pairs(tabButtons) do
		--	EnKai.ui.setFont(v, addonInfo, fontName)
		--end
	end

	function tabPane:SetBorder(flag)
	  border = flag
	  if init == true then tabPane:UpdatePanes() end
	end
		
	function tabPane:SetVertical(flag)
	  vertical = flag
	  if init == true then tabPane:UpdatePanes() end
	end
	
	function tabPane:GetBodyFrame()
	  return bodyFrame
	end
	
	function tabPane:GetActivePane() return activePane end
	
	EnKai.eventHandlers[name]["TabPaneChanged"], EnKai.events[name]["TabPaneChanged"] = Utility.Event.Create(addonInfo.identifier, name .. "TabPaneChanged")

	return tabPane
	
end

uiFunctions.NKTABPANEMETRO = _uiTabpaneMetro