local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions  = privateVars.uiFunctions
local data          = privateVars.data
local uiNames      = privateVars.uiNames
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiText(name, parent) 

	if EnKai.internal.checkEvents (name, true) == false then return nil end
	
	data.textCount = data.textCount + 1
	local thisName = "EnKai.Text." .. data.textCount
	
	if uiNames.NKTEXT == nil then uiNames.NKTEXT = {} end
	uiNames.NKTEXT[thisName] = name

	local labelColor = EnKai.art.GetThemeColor("labelColor")

	local text = UI.CreateFrame ('Text', thisName, parent)
	text:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a)	

	local events = {}
	local macros = {}
  
	local lastText = nil
  
	local oSetText = text.SetText
		
	function text:SetText(newText, htmlFlag)
		if not newText or newText == lastText then return end
		lastText = newText
		if htmlFlag == true then
			oSetText(self, newText, true)
		else	
			oSetText(self, newText)
		end
	end

	function text:SetTextFont(addonInfo, fontName) EnKai.ui.setFont(text, addonInfo, fontName) end
  
	local oEventMacroSet = text.EventMacroSet
  
	function text:EventMacroSet(handle, macro)
    
    	if macro == nil then
      		macros[handle] = true
      		oEventMacroSet(self, handle, nil)
      		local count = 0
      		for k, v in pairs(macros) do
        		count = count + 1
      		end
      		if count > 0 then text:SetSecureMode("normal") end
    	else
      		macros[handle] = nil
      		text:SetSecureMode("restricted")
      		oEventMacroSet(self, handle, macro)      
    	end
    
  	end

	function text:_recycle()
		internal.deRegisterEvents (name)
		for k, v in pairs (macros) do
			text:EventMacroSet(k, nil)
		end
	end

	function text:destroy()
		internal.uiAddToGarbageCollector ('nkText', text)  
	end	
	
	local oEventAttach, oEventDetach = text.EventAttach, text.EventDetach
	
	function text:EventAttach(handle, callback, label, priority)
		
		if priority == nil then
		  oEventAttach(self, handle, callback, label)
		else
		  oEventAttach(self, handle, callback, label, priority)
		end
		
		events[handle] = {callback = callback, label = label, priority = priority}		
	end	
	
	function text:EventDetach(handle, callback, label, priority, owner)
		
		if priority == nil then
		  oEventDetach(self, handle, callback, label)
		elseif owner == nil then
		  oEventDetach(self, handle, callback, label, priority)
		else
		  oEventDetach(self, handle, callback, label, priority, owner)
		end
		
		events[handle] = nil		
	end
	
	local oGetName = text.GetName
	
	function text:GetName() return uiNames.NKTEXT[thisName] end
	function text:GetRealName() return oGetName(self) end
	
	function text:GetEvents()
		return events
	end

	return text
	
end

uiFunctions.NKTEXT = _uiText