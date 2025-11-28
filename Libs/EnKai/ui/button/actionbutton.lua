local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal   = privateVars.internal
local oFuncs	  = privateVars.oFuncs

---------- addon internal function block ---------

local function _uiActionButton(name, parent)

	--if EnKai.internal.checkEvents (name, true) == false then return nil end 

	local button = EnKai.uiCreateFrame ('nkFrame', name, parent)	
	local border = EnKai.uiCreateFrame ('nkTexture', name .. '.border', button)
	local texture = EnKai.uiCreateFrame ('nkTexture', name .. '.texture', button)
	local tint = EnKai.uiCreateFrame ('nkFrame', name .. '.tint', button)
	
	local properties = {}

	function button:SetValue(property, value)
		properties[property] = value
	end
	
	function button:GetValue(property)
		return properties[property]
	end
	
	local scale = 1
	local dragable = false
	local tintColor = { 1, 0, 0, .2 }	
	
	button:SetWidth(48)
	button:SetHeight(48)
	
	border:SetTextureAsync ("Rift", "HeaderButton_Normal_Down.png.dds")
	border:SetPoint("TOPLEFT", button, "TOPLEFT")
	border:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT")
	border:SetLayer(2)
	
	texture:SetPoint("CENTER", button, "CENTER")
	texture:SetWidth(34)
	texture:SetHeight(34)
	texture:SetLayer(1)
	
	tint:SetPoint("TOPLEFT", texture, "TOPLEFT")
	tint:SetPoint("BOTTOMRIGHT", texture, "BOTTOMRIGHT")
	tint:SetLayer(3)
	tint:SetBackgroundColor(tintColor[1], tintColor[2], tintColor[3], tintColor[4])
	tint:SetVisible(false)
	
	function button:SetScale(newScale)
		scale = newScale
		
		button:SetWidth(48 * newScale)
		button:SetHeight(48 * newScale)
		
		texture:SetWidth(34 * newScale)
		texture:SetHeight(34 * newScale)
	end
	
  function button:ClearTexture() texture:SetVisible(false) end
  
  function button:SetTexture(addonName, path)
		texture:SetTextureAsync (addonName, path)
		texture:SetVisible(true)
	end
	
	function button:SetDragable(flag)
		dragable = flag
	end
	
	function button:SetMacro(newMacro)
		button:SetSecureMode('restricted')
		button:EventMacroSet(Event.UI.Input.Mouse.Left.Click, newMacro)
	end
	
	function button:SetActiveState(flag)
		if flag == true then tint:SetVisible(false) else tint:SetVisible(true) end
	end
	
	local oSetPoint = button.SetPoint
	
	function button:SetPoint(from, object, to, x, y)
	
		if x ~= nil and y ~= nil then			
			oSetPoint(self, from, object, to, x, y)
		else
			oSetPoint(self, from, object, to)
		end
	end	
	
	button:EventAttach(Event.UI.Input.Mouse.Right.Down, function (self)		
		
		if dragable == false then return end
		if oFuncs.oInspectSystemSecure() == true then return end
		
		self.rightDown = true
		local mouse = Inspect.Mouse()
		
		self.originalXDiff = mouse.x - self:GetLeft()
		self.originalYDiff = mouse.y - self:GetTop()
		
		local left, top, right, bottom = button:GetBounds()
		
		button:ClearAll()
		button:SetPoint("TOPLEFT", UIParent, "TOPLEFT", left, top)
		button:SetWidth(right-left)
		button:SetHeight(bottom-top)
	
	end, name .. "button.Right.Down")
	
	button:EventAttach( Event.UI.Input.Mouse.Cursor.Move, function (self, _, x, y)	
		if self.rightDown ~= true then return end
		button:SetPoint("TOPLEFT", UIParent, "TOPLEFT", x - self.originalXDiff, y - self.originalYDiff)
	end, name .. "button.Cursor.Move")
	
	button:EventAttach( Event.UI.Input.Mouse.Right.Up, function (self)	
	    self.rightDown = false
		EnKai.eventHandlers[name]["Moved"](button:GetLeft(), button:GetTop())
	end, name .. "button.Right.Up")
	
	button:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		if dragable == true then return end
		EnKai.eventHandlers[name]["Clicked"]()
	end, name .. "button.Left.Click")
	
	button:EventAttach( Event.UI.Input.Mouse.Cursor.In, function ()	
		EnKai.eventHandlers[name]["MouseIn"]()
	end, name .. "button.Cursor.In")
	
	button:EventAttach( Event.UI.Input.Mouse.Cursor.Out, function ()	
		EnKai.eventHandlers[name]["MouseOut"]()
	end, name .. "button.Cursor.Out")

	EnKai.eventHandlers[name]["Clicked"], EnKai.events[name]["Clicked"] = Utility.Event.Create(addonInfo.identifier, name .. "Clicked")
	EnKai.eventHandlers[name]["Moved"], EnKai.events[name]["Moved"] = Utility.Event.Create(addonInfo.identifier, name .. "Moved")
	EnKai.eventHandlers[name]["MouseIn"], EnKai.events[name]["MouseIn"] = Utility.Event.Create(addonInfo.identifier, name .. "MouseIn")
	EnKai.eventHandlers[name]["MouseOut"], EnKai.events[name]["MouseOut"] = Utility.Event.Create(addonInfo.identifier, name .. "MouseOut")
		
	return button
	
end

uiFunctions.NKACTIONBUTTON = _uiActionButton