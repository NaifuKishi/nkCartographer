local addonInfo, privateVars = ...

---------- init namespace ---------

local data                  = privateVars.data
local uiElements            = privateVars.uiElements
local internalFunc          = privateVars.internalFunc
local events               = privateVars.events
local lang        			= privateVars.langTexts

---------- make global functions local ---------

local InspectUnitDetail 	= Inspect.Unit.Detail
local InspectZoneDetail 	= Inspect.Zone.Detail
local InspectSystemSecure 	= Inspect.System.Secure
local InspectSystemWatchdog = Inspect.System.Watchdog
local InspectItemDetail 	= Inspect.Item.Detail
local InspectMouse 			= Inspect.Mouse
local InspectTimeReal 		= Inspect.Time.Real

local LibEKLGetLanguage			= LibEKL.Tools.Lang.GetLanguage
local LibEKLGetLanguageShort	= LibEKL.Tools.Lang.GetLanguageShort
local LibEKLTableCopy			= LibEKL.Tools.Table.Copy
local LibEKLUUID				= LibEKL.Tools.UUID

local stringFind			= string.find
local stringMatch			= string.match
local stringFormat			= string.format
local stringUpper			= string.upper

local mathDeg				= math.deg
local mathAtan2				= math.atan2

---------- local function block ---------

function internalFunc.createMapUI ()

	local mapUI = LibMap.uiCreateFrame("nkMap", "nkCartographer.map", uiElements.context)

	local locked
	if nkCartSetup.locked == true then locked = false else locked = true end
	
	mapUI:SetResizable(locked)
	mapUI:SetDragable(locked)
	mapUI:SetLayer(2)

	mapUI:ShowHeader(false)
	mapUI:ShowCoords(false)	

	local texture = LibEKL.UICreateFrame("nkTexture", "nkCartographer.map.texture", uiElements.context)
	texture:SetLayer(1)

	function mapUI:SetBackground(newBG)
		if nkCartSetup.background == nil then return end

		if data.borderDesigns[nkCartSetup.background].addon == nil then
			texture:SetVisible(false)
		else
			texture:SetVisible(true)    
			texture:SetPoint("TOPLEFT", mapUI, "TOPLEFT", -data.borderDesigns[nkCartSetup.background].offset, -data.borderDesigns[nkCartSetup.background].offset)
			texture:SetPoint("BOTTOMRIGHT", mapUI, "BOTTOMRIGHT", data.borderDesigns[nkCartSetup.background].offset, data.borderDesigns[nkCartSetup.background].offset)
			texture:SetTextureAsync(data.borderDesigns[nkCartSetup.background].addon, data.borderDesigns[nkCartSetup.background].path)
		end
	end

	local oSetVisible = mapUI.SetVisible

	function mapUI:SetVisible(flag)
		oSetVisible(self, flag)
		texture:SetVisible(flag)
	end

	mapUI:SetBackground(nkCartSetup.background)

	local zoneTitle = LibEKL.UICreateFrame("nkText", "nkCartographer.map.zoneTitle", mapUI:GetMask())
	zoneTitle:SetPoint("CENTERTOP", mapUI:GetContent(), "CENTERTOP")
	zoneTitle:SetLayer(9999)
	
	LibEKL.UI.SetFont (zoneTitle, addonInfo.id, "MontserratSemiBold")

	zoneTitle:SetEffectGlow({ colorB = 0, colorA = 1, colorG = 0, colorR = 0, strength = 3, blurX = 3, blurY = 3 })

	local coords = LibEKL.UICreateFrame("nkText", "nkCartographer.map.coords", mapUI)
	coords:SetPoint("CENTERBOTTOM", mapUI:GetContent(), "CENTERBOTTOM", 0, 15)
	coords:SetLayer(9999)
	coords:SetFontSize(20)
	coords:SetEffectGlow({ strength = 3})
	
	LibEKL.UI.SetFont (coords, addonInfo.id, "MontserratBold")

	local mouseCoords = LibEKL.UICreateFrame("nkText", "nkCartographer.map.mouseCoords", mapUI)
	mouseCoords:SetPoint("CENTERBOTTOM", coords, "CENTERTOP", 0, 5)
	mouseCoords:SetLayer(9999)
	mouseCoords:SetFontSize(18)
	mouseCoords:SetFontColor(1, 0.8, 0, 1)
	mouseCoords:SetEffectGlow({ strength = 3})
	
	LibEKL.UI.SetFont (mouseCoords, addonInfo.id, "MontserratBold")

	function mapUI:SetCoordsLabel(x, y)
		coords:SetText(stringFormat("%d / %d", x, y))
	end

	function mapUI:SetZoneTitle(flag)

		if flag == false then
			zoneTitle:SetVisible(false)
		else
			zoneTitle:SetVisible(true)
			local scale = 1 / 300 * mapUI:GetWidth()
			local fontsize = 20 * scale
			if fontsize > 30 then fontsize = 30 end
			zoneTitle:SetFontSize(fontsize)
			zoneTitle:SetText(data.locationName)
		end
	end

	Command.Event.Attach(LibMap.events["nkCartographer.map"].MouseMoved, function (_, text)
		mouseCoords:SetText(text)
	end, "nkCartographer.map.MouseMoved")  

	Command.Event.Attach(LibMap.events["nkCartographer.map"].Moved, function (_, x, y, maximized)

		if maximized == true then
			nkCartSetup.maximizedX, nkCartSetup.maximizedY = x, y 
		else
			nkCartSetup.x, nkCartSetup.y = x, y
		end

	end, "nkCartographer.map.Moved")    

	Command.Event.Attach(LibMap.events["nkCartographer.map"].Resized, function (_, newWidth, newHeight, maximized)

		if maximized == true then
			nkCartSetup.maximizedWidth, nkCartSetup.maximizedHeight = newWidth, newHeight 
		else
			nkCartSetup.width, nkCartSetup.height = newWidth, newHeight
		end

	end, "nkCartographer.map.Moved")

	Command.Event.Attach(LibMap.events["nkCartographer.map"].Zoomed, function (_, newScale, maximized)
		if maximized == true then
			nkCartSetup.maximizedScale = newScale
		else
			nkCartSetup.scale = newScale
		end

	internalFunc.UpdateWaypointArrows ()

	end, "nkCartographer.map.Zoomed")

	Command.Event.Attach(LibMap.events["nkCartographer.map"].Toggled, function (_, newScale, maximized)
		internalFunc.UpdateWaypointArrows ()
		mapUI:SetZoneTitle(nkCartSetup.showZoneTitle)
	end, "nkCartographer.map.Toggled")

	return mapUI
	
end
