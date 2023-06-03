local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal
local lang          = privateVars.langTexts

---------- addon internal function block ---------

local function _uiDialog(name, parent) 

	--if EnKai.internal.checkEvents (name, false) == false then return nil end

	local dialog = EnKai.uiCreateFrame("nkWindowMetro", name, parent)
	local message = EnKai.uiCreateFrame ('nkText', name .. "message", dialog)
	local leftButton = EnKai.uiCreateFrame ('nkButtonMetro', name .. "leftButton", dialog)
	local centerButton = EnKai.uiCreateFrame ('nkButtonMetro', name .. "centerButton", dialog)
	local rightButton = EnKai.uiCreateFrame ('nkButtonMetro', name .. "rightButton", dialog)

	local properties = {}

	function dialog:SetValue(property, value)
		properties[property] = value
	end
	
	function dialog:GetValue(property)
		return properties[property]
	end
	
	-- GARBAGE COLLECTOR ROUTINES
  
	local oDialogDestroy = dialog.destroy
  
	function dialog:destroy()
		rightButton:destroy()
		centerButton:destroy()
		leftButton:destroy()
		message:destroy()
		oDialogDestroy()
	end 
	
	dialog:SetValue("name", name)
	dialog:SetValue("parent", parent)

	--dialog:SetDragable(true)
	dialog:SetCloseable(true)
	dialog:SetStrata('main')
	dialog:SetTitle("")
	dialog:SetPoint("CENTER", UIParent, "CENTER")
	
	message:SetPoint("CENTER", dialog:GetContent(), "CENTER", 0, -30)
	message:SetFontColor(1, 1, 1, 1)
	message:SetFontSize(16)
	message:SetWordwrap(true)
	
	leftButton:SetPoint("BOTTOMLEFT", dialog:GetContent(), "BOTTOMLEFT", 5, -5)
	
	leftButton:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		dialog:SetVisible(false)
		EnKai.eventHandlers[name]["LeftButtonClicked"]()
	end, name .. "_leftButton_LeftClick")
	
	centerButton:SetPoint("BOTTOMCENTER", dialog:GetContent(), "BOTTOMCENTER", 0, -5)
	
	centerButton:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		dialog:SetVisible(false)
		EnKai.eventHandlers[name]["CenterButtonClicked"]()
	end, name .. "_centerButton_LeftClick")
	
	rightButton:SetPoint("BOTTOMRIGHT", dialog:GetContent(), "BOTTOMRIGHT", -5, -5)
	
	rightButton:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		dialog:SetVisible(false)
		EnKai.eventHandlers[name]["RightButtonClicked"]()
	end, name .. "_rightButton_LeftClick")
	
	function dialog:SetType(dialogType)
	
		if dialogType == "confirm" then
			leftButton:SetText(lang.yes)
			rightButton:SetText(lang.no)
			leftButton:SetVisible(true)
			rightButton:SetVisible(true)
			centerButton:SetVisible(false)
		else
			centerButton:SetText(lang.ok)			
			leftButton:SetVisible(false)
			rightButton:SetVisible(false)
			centerButton:SetVisible(true)
		end
	
	end
	
	function dialog:SetMessage(messageText)
		message:ClearAll()
		message:SetPoint("CENTER", dialog:GetContent(), "CENTER", 0, -30)		
		message:SetText(messageText)
		
		if message:GetWidth() > ( dialog:GetWidth() - 40) then		
			message:SetWidth(dialog:GetWidth() - 40)
		end
		
		dialog:SetHeight(message:GetHeight()+120)
	end
	
	local oSetWidth, oSetHeight = dialog.SetWidth, dialog.SetHeight
	
	function dialog:SetWidth(width)
		oSetWidth(self, width)
		message:SetWidth( width - 40)
	end
	
	function dialog:SetHeight(height)
		oSetHeight(self, height)
		message:SetHeight( height - 120)
	end

	EnKai.eventHandlers[name]["LeftButtonClicked"], EnKai.events[name]["LeftButtonClicked"] = Utility.Event.Create(addonInfo.identifier, name .. "LeftButtonClicked")
	EnKai.eventHandlers[name]["RightButtonClicked"], EnKai.events[name]["RightButtonClicked"] = Utility.Event.Create(addonInfo.identifier, name .. "RightButtonClicked")
	EnKai.eventHandlers[name]["CenterButtonClicked"], EnKai.events[name]["CenterButtonClicked"] = Utility.Event.Create(addonInfo.identifier, name .. "CenterButtonClicked")
	
	return dialog
	
end

uiFunctions.NKDIALOGMETRO = _uiDialog