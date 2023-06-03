local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.ui then EnKai.ui = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end
if not privateVars.uiNames then privateVars.uiNames = {} end

if privateVars.uiContext == nil then privateVars.uiContext = UI.CreateContext("EnKai.ui") end

if not privateVars.uiElements then privateVars.uiElements  = {} end

local data       		= privateVars.data
local internal   		= privateVars.internal
local uiFunctions		= privateVars.uiFunctions
local uiNames    		= privateVars.uiNames
local uiElements		= privateVars.uiElements
local oFuncs	  		= privateVars.oFuncs

local uiContext   		= privateVars.uiContext
local uiTooltipContext	= nil

if not uiElements.messageDialog then uiElements.messageDialog = {} end
if not uiElements.confirmDialog then uiElements.confirmDialog = {} end

---------- init variables --------- 

data.frameCount = 0
data.canvasCount = 0
data.textCount = 0
data.textureCount = 0
data.uiBoundLeft, data.uiBoundTop, data.uiBoundRight, data.uiBoundBottom = UIParent:GetBounds()

---------- init local variables ---------

local _gc = {}
local _freeElements = {}
--local tooltipCheckTime

---------- local function block ---------

local function _recycleElement (element, elementType)

	element:SetVisible(false)
	element:ClearAll()
	element:SetBackgroundColor(0,0,0,0)
	element:SetStrata('main')
	element:SetLayer(0)
	element:SetMouseMasking('full')
	element:SetWidth(0)
	element:SetHeight(0)
	
	if element:GetMouseoverUnit() ~= nil then element:SetMouseoverUnit(nil) end
	
	--element:SetSecureMode("normal")
	
	for k, v in pairs (element:GetEvents()) do
	  element:EventDetach(k, nil, v.label, v.priority, v.owner)
	end
	
	element:_recycle()
	
end

local function _setInsecure (element)

  element:SetSecureMode("normal")

end

---------- addon internal function block ---------

-- the below is a prototype to frame resuing
-- missing SetName() on frames to fully build this

function internal.uiAddToGarbageCollector (frameType, element)

  local checkFrameType = string.upper(frameType) 

  if _gc[checkFrameType] == nil then _gc[checkFrameType] = {} end
  if _gc[checkFrameType].normal == nil then _gc[checkFrameType].normal = {} end
  if _gc[checkFrameType].restricted == nil then _gc[checkFrameType].restricted = {} end
  
  table.insert(_gc[checkFrameType][element:GetSecureMode()], element) 
  if oFuncs.oInspectSystemSecure() == false or element:GetSecureMode() == 'normal' then element:SetVisible(false) end
  
  EnKai.eventHandlers["EnKai.internal"]["gcChanged"]()
  
end  

function internal.uiGarbageCollector ()

	local debugId  
    if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai internal.uiGarbageCollector") end

	local secure = oFuncs.oInspectSystemSecure()
	local flag = false
	local restrictedFailed = false

	for elementType, secureModes in pairs(_gc) do

		if secure == false and #_gc[elementType].restricted > 0 then
			for idx = 1, #_gc[elementType].restricted, 1 do

				if _gc[elementType].restricted[idx] ~= false then

					local element = _gc[elementType].restricted[idx]
					local err = pcall (_setInsecure, element)
	
					if err == true then -- no error
						flag = true
						_recycleElement(element, elementType)
						uiNames[elementType][element:GetRealName()] = ""

						if _freeElements[elementType] == nil then _freeElements[elementType] = {} end
						table.insert(_freeElements[elementType], element)
						_gc[elementType].restricted[idx] = false
					else
						restrictedFailed = true
					end
				end
			end

			if restrictedFailed == false then _gc[elementType].restricted = {} end
		end

		for idx = 1, #_gc[elementType].normal, 1 do
			flag = true
			local element = _gc[elementType].normal[idx]
			_recycleElement(element, elementType)
			uiNames[elementType][element:GetRealName()] = ""

			if _freeElements[elementType] == nil then _freeElements[elementType] = {} end
			table.insert(_freeElements[elementType], element)
		end

		_gc[elementType].normal = {}
		
	end

	if flag == true then EnKai.eventHandlers["EnKai.internal"]["gcChanged"]() end

	if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai internal.uiGarbageCollector", debugId) end	
	
end

function internal.uiCheckTooltips ()

	-- local now = oFuncs.oInspectTimeFrame()
	-- if tooltipCheckTime == nil or now - tooltipCheckTime > 1 then
		-- tooltipCheckTime = now

		if uiElements.abilityTooltip ~= nil and uiElements.abilityTooltip:GetVisible() == true then
			if uiElements.abilityTooltip:GetTarget():GetVisible() == false then uiElements.abilityTooltip:SetVisible(false) end
		end
	
		if uiElements.genericTooltip ~= nil and uiElements.genericTooltip:GetVisible() == true then
			if uiElements.genericTooltip:GetTarget():GetVisible() == false then uiElements.genericTooltip:SetVisible(false) end
		end
	
		if uiElements.itemTooltip ~= nil and uiElements.itemTooltip:GetVisible() == true then
			if uiElements.itemTooltip:GetTarget():GetVisible() == false then uiElements.itemTooltip:SetVisible(false) end
		end
	--end

end

function internal.uiSetupBoundCheck()

	local testFrameH = EnKai.uiCreateFrame ('nkFrame', "EnKai.ui.boundTestFrameH", uiContext)
	testFrameH:SetBackgroundColor(0, 0, 0, 0)
	testFrameH:SetPoint("TOPLEFT", UIParent, "TOPLEFT")
	testFrameH:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", 0, 1)

	testFrameH:EventAttach(Event.UI.Layout.Size, function (self)
		data.uiBoundLeft, data.uiBoundTop, data.uiBoundRight, data.uiBoundBottom = UIParent:GetBounds()
	end, testFrameH:GetName() .. ".UI.Layout.Size")

	local testFrameV = EnKai.uiCreateFrame("nkFrame", "boundTestFrameV", uiContext)
	testFrameV:SetBackgroundColor(0, 0, 0, 0)
	testFrameV:SetPoint("TOPLEFT", UIParent, "TOPLEFT")
	testFrameV:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 1, 0)

	testFrameV:EventAttach(Event.UI.Layout.Size, function (self)		
		data.uiBoundLeft, data.uiBoundTop, data.uiBoundRight, data.uiBoundBottom = UIParent:GetBounds()
	end, testFrameV:GetName() .. ".UI.Layout.Size")
	
end

---------- library public function block ---------


function EnKai.uiAddToGarbageCollector(frameType, element)
	
	-- internal.deRegisterEvents (name)
    
	-- if element.GetEvents ~= nil then
		-- for handle, details in pairs (element:GetEvents()) do
			-- element:EventDetach(handle, details.callback, details.label, details.priority, nil)
		-- end
	-- end
    
	-- if element.GetMacros ~= nil then 
		-- for k, v in pairs (element:GetMacros()) do element:EventMacroSet(k, nil) end
	-- end
    
    internal.uiAddToGarbageCollector (frameType, element)  

end


function EnKai.uiCreateFrame (frameType, name, parent)

	if frameType == nil or name == nil or parent == nil then
		EnKai.tools.error.display (addonInfo.identifier, string.format("EnKai.uiCreateFrame - invalid number of parameters\nexpecting: type of frame (string), name of frame (string), parent of frame (object)\nreceived: %s, %s, %s", frameType, name, parent))
		return
	end

	local uiObject = nil

	local checkFrameType = string.upper(frameType) 

	if _freeElements[checkFrameType] ~= nil and #_freeElements[checkFrameType] > 0 then
		if EnKai.internal.checkEvents (name, true) == false then return nil end
		uiObject = _freeElements[checkFrameType][1]    
		uiObject:SetParent(parent)

		if uiNames[checkFrameType] == nil then uiNames[checkFrameType] = {} end
		
		uiNames[checkFrameType][uiObject:GetRealName()] = name
		uiObject:SetVisible(true)
		uiObject:ClearAll() -- no clue why this is needed for canvas here but the one in _recycleElement doesn't seem to work

		table.remove(_freeElements[checkFrameType], 1)
		
		EnKai.eventHandlers["EnKai.internal"]["gcChanged"]()
		
	else
		local func = uiFunctions[checkFrameType]
		if func == nil then
			EnKai.tools.error.display (addonInfo.identifier, string.format("EnKai.uiCreateFrame - unknown frame type [%s]", frameType))
		else
			uiObject = func(name, parent)
		end
	end

	return uiObject

end

function EnKai.getGcCount()
	
	local normal, restricted = 0, 0

	for k, v in pairs(_gc) do
		if v.normal ~= nil then normal = normal + #v.normal end
		if v.restricted ~= nil then restricted = restricted + #v.restricted end
	end
	
	return normal, restricted
	
end

function EnKai.getFreeCount()

	local free = 0

	for k, v in pairs(_freeElements) do
		free = free + #v
	end

	return free
	
end

-- deprecated functions

function EnKai.uiSetBounds(left, top, right, bottom)

  if left ~= nil then data.uiBoundLeft = left end
  if top ~= nil then data.uiBoundTop = top end
  if right ~= nil then data.uiBoundRight = right end
  if bottom ~= nil then data.uiBoundBottom = bottom end

end

function EnKai.uiGetBoundLeft ()
	return data.uiBoundLeft
end

function EnKai.uiGetBoundRight ()
	return data.uiBoundRight
end

function EnKai.uiGetBoundTop ()
	return data.uiBoundTop
end

function EnKai.uiGetBoundBottom ()
	return data.uiBoundBottom
end

function EnKai.uiClearBounds()

  data.uiBoundLeft, data.uiBoundTop, data.uiBoundRight, data.uiBoundBottom = UIParent:GetBounds()
  
end

-- ui tooling functions

-- tooltip functions

function EnKai.ui.getItemTooltip()

	return uiElements.itemTooltip

end

function EnKai.ui.attachItemTooltip (target, itemId, callBack)

	local name = "EnKai.itemTooltip"

	if privateVars.uiTooltipContext == nil then
		privateVars.uiTooltipContext = UI.CreateContext("EnKai.ui.tooltip")
		privateVars.uiTooltipContext:SetStrata ('topmost')
	end
	
	if uiElements.itemTooltip == nil then	
		uiElements.itemTooltip = EnKai.uiCreateFrame('nkItemTooltip', name, privateVars.uiTooltipContext)
		uiElements.itemTooltip:SetVisible(false)    
		
		EnKai.eventHandlers[name]["Visible"], EnKai.events[name]["Visible"] = Utility.Event.Create(addonInfo.identifier, name .. "Visible")
	end

	if itemId == nil then
		target:EventDetach(Event.UI.Input.Mouse.Cursor.In, nil, target:GetName() .. ".Mouse.Cursor.In")
		target:EventDetach(Event.UI.Input.Mouse.Cursor.Out, nil, target:GetName() .. ".Mouse.Cursor.In")  
		uiElements.itemTooltip:SetVisible(false)
	else
		target:EventAttach(Event.UI.Input.Mouse.Cursor.In, function (self)
			uiElements.itemTooltip:ClearAll()
			uiElements.itemTooltip:SetItem(itemId)
			uiElements.itemTooltip:SetVisible(true)			
			
			uiElements.itemTooltip:SetPoint("TOPLEFT", target, "BOTTOMRIGHT", 5, 5)
			EnKai.ui.showWithinBound (uiElements.itemTooltip, target)
			
			if callBack ~= nil then callBack(target, itemId) end
			
			EnKai.eventHandlers[name]["Visible"](true)
			
		end, target:GetName() .. ".Mouse.Cursor.In")
  
		target:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function (self)
			uiElements.itemTooltip:SetVisible(false)
			EnKai.eventHandlers[name]["Visible"](false)
			
		end, target:GetName() .. ".Mouse.Cursor.Out") 
	end
	
end

function EnKai.ui.getItemTooltip() return uiElements.itemTooltip end

function EnKai.ui.attachAbilityTooltip (target, abilityId)

	if privateVars.uiTooltipContext == nil then
		privateVars.uiTooltipContext = UI.CreateContext("EnKai.ui.tooltip")
		privateVars.uiTooltipContext:SetStrata ('topmost')
	end
	
	if uiElements.abilityTooltip == nil then	
		uiElements.abilityTooltip = EnKai.uiCreateFrame('nkTooltip', 'EnKai.abilityTooltip', privateVars.uiTooltipContext)
		uiElements.abilityTooltip:SetVisible(false)    
	end

	if abilityId == nil then
		target:EventDetach(Event.UI.Input.Mouse.Cursor.In, nil, target:GetName() .. ".Mouse.Cursor.In")
		target:EventDetach(Event.UI.Input.Mouse.Cursor.Out, nil, target:GetName() .. ".Mouse.Cursor.In")  
		uiElements.abilityTooltip:SetVisible(false)
	else
		target:EventAttach(Event.UI.Input.Mouse.Cursor.In, function (self)
			uiElements.abilityTooltip:ClearAll()
			
			local err, abilityDetails = pcall (Inspect.Ability.New.Detail, abilityId)
			if err == false or abilityDetails == nil then
				err, abilityDetails = pcall (Inspect.Ability.Detail, abilityId)
				if err == false or abilityDetails == nil then
					EnKai.tools.error.display (addonInfo.identifier, "EnKai.ui.attachAbilityTooltip: unable to get details of ability with id " .. abilityId)	
					EnKai.ui.attachAbilityTooltip (target, nil)
					return
				end
			end
			
			uiElements.abilityTooltip:SetWidth(200)
			uiElements.abilityTooltip:SetTitle(string.gsub(abilityDetails.name, "\n", ""))
			uiElements.abilityTooltip:SetLines({{ text = abilityDetails.description, wordwrap = true, minWidth = 200  }})
						
			uiElements.abilityTooltip:SetPoint("TOPLEFT", target, "BOTTOMRIGHT", 5, 5)
			EnKai.ui.showWithinBound (uiElements.abilityTooltip, target)
			
			uiElements.abilityTooltip:SetVisible(true)			
		end, target:GetName() .. ".Mouse.Cursor.In")
  
		target:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function (self)
			uiElements.abilityTooltip:SetVisible(false)
		end, target:GetName() .. ".Mouse.Cursor.Out") 
	end
end

function EnKai.ui.attachGenericTooltip (target, title, text)

	if privateVars.uiTooltipContext == nil then
		privateVars.uiTooltipContext = UI.CreateContext("EnKai.ui.tooltip")
		privateVars.uiTooltipContext:SetStrata ('topmost')
	end
	
	if uiElements.genericTooltip == nil then	
		uiElements.genericTooltip = EnKai.uiCreateFrame('nkTooltip', 'EnKai.genericTooltip', privateVars.uiTooltipContext)
		uiElements.genericTooltip:SetVisible(false)    
	end

	if text == nil then
		target:EventDetach(Event.UI.Input.Mouse.Cursor.In, nil, target:GetName() .. ".Mouse.Cursor.In")
		target:EventDetach(Event.UI.Input.Mouse.Cursor.Out, nil, target:GetName() .. ".Mouse.Cursor.In")  
		uiElements.genericTooltip:SetVisible(false)
	else
		target:EventAttach(Event.UI.Input.Mouse.Cursor.In, function (self)
			uiElements.genericTooltip:ClearAll()
			
			uiElements.genericTooltip:SetWidth(200)
			if title ~= nil then 
				uiElements.genericTooltip:SetTitle(string.gsub(title, "\n", ""))
			else
				uiElements.genericTooltip:SetTitle("")
			end
			uiElements.genericTooltip:SetLines({{ text = text, wordwrap = true, minWidth = 200 }})
							
			uiElements.genericTooltip:SetPoint("TOPLEFT", target, "BOTTOMRIGHT", 5, 5)

			EnKai.ui.showWithinBound (uiElements.genericTooltip, target)
			
			uiElements.genericTooltip:SetVisible(true)			
		end, target:GetName() .. ".Mouse.Cursor.In")
  
		target:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function (self)
			uiElements.genericTooltip:SetVisible(false)
		end, target:GetName() .. ".Mouse.Cursor.Out") 
	end

end

function EnKai.ui.confirmDialog (message, yesFunc, noFunc)

	local thisDialog

	for idx = 1, #uiElements.confirmDialog, 1 do
		if uiElements.confirmDialog[idx]:GetVisible() == false then
			thisDialog = uiElements.confirmDialog[idx]
			break
		end
	end

	if thisDialog == nil then
		if privateVars.uiDialogContext == nil then 
			privateVars.uiDialogContext = UI.CreateContext("EnKai.ui.dialog") 
			privateVars.uiDialogContext:SetStrata ('topmost')
		end
	
		local name = "EnKaiConfirmDialog." .. (#uiElements.messageDialog+1)
	
		thisDialog = EnKai.uiCreateFrame("nkDialogMetro", name, privateVars.uiDialogContext)
		thisDialog:SetLayer(2)
		thisDialog:SetWidth(500)
		thisDialog:SetHeight(250)
		thisDialog:SetType('confirm')
		
		table.insert(uiElements.confirmDialog, thisDialog)
	end
	
	thisDialog:SetMessage(message)
	thisDialog:SetVisible(true)

	Command.Event.Detach(EnKai.events[thisDialog:GetName()].LeftButtonClicked, nil, thisDialog:GetName() .. ".LeftButtonClicked") -- detach event if was previously used
	
	Command.Event.Attach(EnKai.events[thisDialog:GetName()].LeftButtonClicked, function ()
		if yesFunc ~= nil then yesFunc() end
	end, thisDialog:GetName() .. ".LeftButtonClicked")
	
	Command.Event.Detach(EnKai.events[thisDialog:GetName()].RightButtonClicked, nil, thisDialog:GetName() .. ".RightButtonClicked") -- detach event if was previously used
	
	Command.Event.Attach(EnKai.events[thisDialog:GetName()].RightButtonClicked, function ()
		if noFunc ~= nil then noFunc() end
	end, thisDialog:GetName() .. ".RightButtonClicked")
	    
end

function EnKai.ui.messageDialog (message, okFunc)

	local thisDialog

	for idx = 1, #uiElements.messageDialog, 1 do
		if uiElements.messageDialog[idx]:GetVisible() == false then
			thisDialog = uiElements.messageDialog[idx]
			break
		end
	end
	
	if thisDialog == nil then
		if privateVars.uiDialogContext == nil then 
			privateVars.uiDialogContext = UI.CreateContext("EnKai.ui.dialog") 
			privateVars.uiDialogContext:SetStrata ('topmost')
		end
		
		local name = "EnKaiMessageDialog." .. EnKai.tools.uuid ()
	
		thisDialog = EnKai.uiCreateFrame("nkDialogMetro", name, privateVars.uiDialogContext)
		thisDialog:SetLayer(2)
		thisDialog:SetWidth(500)
		thisDialog:SetHeight(250)
		thisDialog:SetType('message')
		
		table.insert(uiElements.messageDialog, thisDialog)
	end
  
	thisDialog:SetMessage(message)
	thisDialog:SetVisible(true)
	
	Command.Event.Detach(EnKai.events[thisDialog:GetName()].CenterButtonClicked, nil, thisDialog:GetName() .. ".CenterButtonClicked") -- detach event if was previously used
	
	if okFunc ~= nil then
		Command.Event.Attach(EnKai.events[thisDialog:GetName()].CenterButtonClicked, function ()
			okFunc()
		end, thisDialog:GetName() .. ".CenterButtonClicked")
	end
	
end

-- generic ui functions to handle screen size and bounds

function EnKai.ui.getBoundBottom() return data.uiBoundBottom end
function EnKai.ui.getBoundRight() return data.uiBoundRight end

function EnKai.ui.showWithinBound (element, target)

	local from, to, x, y

	if element:GetTop() + element:GetHeight() > EnKai.ui.getBoundBottom() then
		if element:GetLeft() + element:GetWidth() > EnKai.ui.getBoundRight() then
			from, to, x, y = "BOTTOMRIGHT", "TOPLEFT", -5, -5
		else
			from, to, x, y = "BOTTOMLEFT", "TOPRIGHT", 5, -5
		end
	else
		from, to, x, y = "TOPRIGHT", "BOTTOMLEFT", -5, 5
	end
	
	if from ~= nil then
		local left, top, right, bottom = element:GetBounds()
		element:ClearAll()
		element:SetPoint(from, target, to, x, y)
		element:SetWidth(right-left)
		element:SetHeight(bottom-top)
	end

end

function EnKai.ui.reloadDialog (title)

	if uiElements.reloadDialog ~= nil then
		EnKai.events.addInsecure(function() 
			uiElements.reloadDialog:SetTitle(title)
			uiElements.reloadDialog:SetTitleAlign('center')
			uiElements.reloadDialog:SetVisible(true)
		end, nil, nil)
		return
	end
	
	if privateVars.uiContextSecure == nil then 
		privateVars.uiContextSecure = UI.CreateContext("EnKai.ui.secure") 
		privateVars.uiContextSecure:SetStrata ('topmost')
		privateVars.uiContextSecure:SetSecureMode('restricted')
	end
	
	local name = "EnKai.reloadDialog"
	
	uiElements.reloadDialog = EnKai.uiCreateFrame("nkWindowMetro", name, privateVars.uiContextSecure)
	uiElements.reloadDialog:SetSecureMode('restricted')
	uiElements.reloadDialog:GetContent():SetSecureMode('restricted')
	uiElements.reloadDialog:SetTitle(title)
	uiElements.reloadDialog:SetTitleAlign('center')
	uiElements.reloadDialog:SetWidth(400)
	uiElements.reloadDialog:SetHeight(125)
	uiElements.reloadDialog:SetCloseable(false)
	uiElements.reloadDialog:SetPoint("CENTERTOP", UIParent, "CENTERTOP", 0, 50)
	
	local msg = EnKai.uiCreateFrame("nkText", name .. ".msg", uiElements.reloadDialog:GetContent())
	msg:SetText(privateVars.langTexts.msgReload)
	msg:SetPoint("CENTERTOP", uiElements.reloadDialog:GetContent(), "CENTERTOP", 0, 10)
	msg:SetFontSize(16)
	msg:SetFontColor(1,1,1,1)
	
	local button = EnKai.uiCreateFrame("nkButtonMetro", name .. ".button", uiElements.reloadDialog:GetContent())
	button:SetPoint("CENTERTOP", msg, "CENTERBOTTOM", 0, 20)
	button:SetText(privateVars.langTexts.reloadButton)
	button:SetMacro("/reloadui")
	
end