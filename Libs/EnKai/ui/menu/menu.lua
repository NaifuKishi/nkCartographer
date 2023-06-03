local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiMenu(name, parent) 

	----if EnKai.internal.checkEvents (name, true) == false then return nil end

	local menu = EnKai.uiCreateFrame ('nkCanvas', name, parent)
		
	local entries = {}
	local properties = {}

	function menu:SetValue(property, value)
		properties[property] = value
	end
	
	function menu:GetValue(property)
		return properties[property]
	end
	
	local fontSize = 13
	local labelColor = { 1, 1, 1, 1 }
	local borderColor = { 1, 1, 1, 1 }
	local backgroundColor = { 0, 0, 0, 1 }
	local menuHeight = 2
	local objectID
	local setPointInfo
	local fixedWidth = false
	
	local canvas = { {xProportional = 0, yProportional = 0}, {xProportional = 1, yProportional = 0}, { xProportional = 1, yProportional = 1}, 
					         { xProportional = 0, yProportional = 1}, {xProportional = 0, yProportional = 0}}
	local fill = {type = 'solid', r = backgroundColor[1], g = backgroundColor[2], b = backgroundColor[3], a = backgroundColor[4]}
	local stroke =  { r = borderColor[1], g = borderColor[2], b = borderColor[3], a = borderColor[4], thickness = 1}
	
	menu:SetWidth(0)
	menu:SetHeight(0)
	menu:SetShape(canvas, fill, stroke)
		
	function menu:SetID(newID) objectID = newID end	
	function menu:GetID() return objectID end
	
	function menu:AddEntry (newEntry)
		local menuEntry = EnKai.uiCreateFrame('nkMenuEntry', name .. '.entry.' .. (#entries + 1), menu)

		menuEntry:SetFontSize(fontSize)
		menuEntry:SetWidth(menu:GetWidth()-2)
		local newWidth = menuEntry:SetText(newEntry.label)
				
		menuEntry:SetFontColor(labelColor[1], labelColor[2], labelColor[3], labelColor[4] )
		menuEntry:SetHeight(fontSize+6)
		menuEntry:SetBackgroundColor(0, 0, 0, 0)
		
		if #entries == 0 then
			menuEntry:SetPoint("TOPLEFT", menu, "TOPLEFT", 1, 1)
		else
			if string.find(entries[#entries]:GetName(), '.separator') == nil then
				menuEntry:SetPoint("TOPLEFT", entries[#entries], "BOTTOMLEFT")
			else
				menuEntry:SetPoint("TOPLEFT", entries[#entries], "BOTTOMLEFT", 1, 0)
			end
		end
		
		if newEntry.callBack ~= nil then		
			Command.Event.Attach(EnKai.events[name .. '.entry.' .. (#entries + 1)].Clicked, function ()
				newEntry.callBack()
			end, name .. '.entry.' .. (#entries + 1) .. 'Clicked')
		end
		
		if newEntry.macro ~= nil then
			menu:SetSecureMode('restricted')
			menuEntry:EventMacroSet(Event.UI.Input.Mouse.Left.Click, newEntry.macro)
		end
		
		table.insert(entries, menuEntry)
		
		menuHeight = menuHeight + fontSize + 6
		menu:SetHeight (menuHeight)		
		if newWidth ~= nil then menu:SetWidth(newWidth) end
		
		return menuEntry
		
	end
	
	function menu:AddSeparator()
	
		local separator = EnKai.uiCreateFrame ('nkFrame', name .. '.separator' .. (#entries + 1), menu)
		separator:SetBackgroundColor(0, 0, 0, 0 )
		separator:SetHeight(3)
		separator:SetWidth(menu:GetWidth())
		
		if #entries == 0 then
			separator:SetPoint("TOPLEFT", menu:GetWidth(), "TOPLEFT", 1, 1)
		else
			separator:SetPoint("TOPLEFT", entries[#entries], "BOTTOMLEFT", -1 ,0)
		end
		
		local line = EnKai.uiCreateFrame ('nkFrame', name .. '.separator' .. (#entries + 1) .. '.line', separator)
		
		line:SetBackgroundColor(labelColor[1], labelColor[2], labelColor[3], labelColor[4] )
		line:SetPoint("CENTERLEFT", separator, "CENTERLEFT")
		line:SetPoint("CENTERRIGHT", separator, "CENTERRIGHT")
		line:SetHeight(1)
		
		menuHeight = menuHeight + 3
		menu:SetHeight (menuHeight)
		
		table.insert(entries, separator)
		
	end
	
	function menu:SetFontSize(newFontSize)

		fontSize = newFontSize
	
	  local width = 0
	  menuHeight = 0
	
		for k, v in pairs (entries) do
      if string.find(v:GetName(), '.separator') == nil then		
        v:ClearWidth()
        local newWidth = v:SetFontSize(newFontSize)
        if newWidth > width then width = newWidth end
        v:SetHeight(newFontSize + 6)
        menuHeight = menuHeight + fontSize + 6
      else
        menuHeight = menuHeight + 3
      end 
    end
		
		menu:SetWidth(width)
    menu:SetHeight(menuHeight)
		
	end

	local oSetPoint, oSetVisible = menu.SetPoint, menu.SetVisible
	
	function menu:SetPoint (from, object, to, x, y)
		if x == nil or y == nil then
			oSetPoint(self, from, object, to)
		else
			oSetPoint(self, from, object, to, x, y)
		end 
		
		setPointInfo = {from = from, object = object, to = to, x = x, y = y} 
	end
	
	function menu:SetVisible(flag)
		if setPointInfo ~= nil then
			if menu:GetLeft() < 0 then
				local width, height = menu:GetWidth(), menu:GetHeight()
				menu:ClearAll()
				if string.find(setPointInfo.from, "TOP") ~= nil then
					menu:SetPoint("TOPLEFT", setPointInfo.object, "TOPRIGHT", setPointInfo.x, setPointInfo.y)
				else
					menu:SetPoint("BOTTOMLEFT", setPointInfo.object, "BOTTOMRIGHT", setPointInfo.x, setPointInfo.y)
				end
				menu:SetWidth(width)
				menu:SetHeight(height)
			elseif menu:GetRight() > UIParent:GetWidth() then
				local width, height = menu:GetWidth(), menu:GetHeight()
				menu:ClearAll()
				if string.find(setPointInfo.from, "TOP") ~= nil then
					menu:SetPoint("TOPRIGHT", setPointInfo.object, "TOPLEFT", setPointInfo.x, setPointInfo.y)
				else
					menu:SetPoint("BOTTOMRIGHT", setPointInfo.object, "BOTTOMLEFT", setPointInfo.x, setPointInfo.y)
				end
				menu:SetWidth(width)
				menu:SetHeight(height)
			end
			
			if menu:GetBottom() > UIParent:GetHeight() then
				local width, height = menu:GetWidth(), menu:GetHeight()
				menu:ClearAll()
				
				if string.find(setPointInfo.from, "LEFT") ~= nil then
					menu:SetPoint("BOTTOMLEFT", setPointInfo.object, "BOTTOMRIGHT", setPointInfo.x, setPointInfo.y)
				else
					menu:SetPoint("BOTTOMRIGHT", setPointInfo.object, "BOTTOMLEFT", setPointInfo.x, setPointInfo.y)
				end
				menu:SetWidth(width)
				menu:SetHeight(height)
			elseif menu:GetTop() < 0 then
				local width, height = menu:GetWidth(), menu:GetHeight()
				menu:ClearAll()
				
				if string.find(setPointInfo.from, "LEFT") ~= nil then
					menu:SetPoint("TOPLEFT", setPointInfo.object, "TOPRIGHT", setPointInfo.x, setPointInfo.y)
				else
					menu:SetPoint("TOPRIGHT", setPointInfo.object, "TOPLEFT", setPointInfo.x, setPointInfo.y)
				end
				menu:SetWidth(width)
				menu:SetHeight(height)
			end
		end
		oSetVisible(self, flag)		
	end	

	local oSetWidth = menu.SetWidth
	
	function menu:SetWidth(newWidth)
		
		oSetWidth(self, newWidth)
		
		for k, v in pairs (entries) do
			if string.find(v:GetName(), '.separator') == nil then
				v:SetWidth(newWidth - 2)
			else
				v:SetWidth(newWidth)
			end
		end
	end

	local oSetBackgroundColor = menu.SetBackgroundColor

	function menu:SetBorderColor(r, g, b, a)
		borderColor = { r, g, b, a }		
		stroke =  { r = borderColor[1], g = borderColor[2], b = borderColor[3], a = borderColor[4], thickness = 1}
		menu:SetShape(canvas, fill, stroke)		
		--oSetBackgroundColor( self, r, g, b, a)
	end
	
	function menu:SetBackgroundColor(r, g, b, a)
		backgroundColor = { r, g, b, a }		
		fill = {type = 'solid', r = backgroundColor[1], g = backgroundColor[2], b = backgroundColor[3], a = backgroundColor[4]}
		menu:SetShape(canvas, fill, stroke)		
	end
	
	function menu:SetLabelColor (r, g, b, a)
		labelColor = { r, g, b, a }
		for k, v in pairs (entries) do
			v:SetLabelColor(r, g, b, a)
		end
	end
	
	function menu:GetEntryCount()
		return #entries
	end
	
	function menu:GetEntries()
		return entries
	end
	
	function menu:GetEntryByID(id)
		for k, v in pairs (entries) do
			if v:GetID() == id then
				return v
			end
		end
		
		return nil
	end
	
	
	return menu
	
end

uiFunctions.NKMENU = _uiMenu