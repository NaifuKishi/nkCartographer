local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions	= privateVars.uiFunctions
local data			= privateVars.data
local uiNames		= privateVars.uiNames
local internal		= privateVars.internal

---------- addon internal function block ---------

local function _uiFrame(name, parent) 

	if EnKai.internal.checkEvents (name, true) == false then return nil end

	data.frameCount = data.frameCount + 1
	local thisName = "EnKai.Frame." .. data.frameCount

	if uiNames.NKFRAME == nil then uiNames.NKFRAME = {} end
	uiNames.NKFRAME[thisName] = name

	local frame = UI.CreateFrame ('Frame', thisName, parent)	

	local events = {}
	local macros = {}

	local oEventMacroSet = frame.EventMacroSet

	function frame:EventMacroSet(handle, macro)

		if macro == nil then
			macros[handle] = nil
			oEventMacroSet(self, handle, nil)
			local count = 0
			for k, v in pairs(macros) do
				count = count + 1
			end
			pcall(frame.SetSecureMode, "normal")
		else
			macros[handle] = true
			frame:SetSecureMode("restricted")
			oEventMacroSet(self, handle, macro)      
		end
		
	end

	function frame:_recycle() 
		frame:ClearAll()
		internal.deRegisterEvents (name)

		for handle, details in pairs (events) do
			frame:EventDetach(handle, details.callback, details.label, details.priority, nil)
		end

		for k, v in pairs (macros) do frame:EventMacroSet(k, nil) end

	end

	function frame:destroy()   
		internal.uiAddToGarbageCollector ('nkFrame', frame)  
	end 

	local oEventAttach, oEventDetach = frame.EventAttach, frame.EventDetach

	function frame:EventAttach(handle, callback, label, priority)

		if priority == nil then
			oEventAttach(self, handle, callback, label)
		else
			oEventAttach(self, handle, callback, label, priority)
		end

		events[handle] = {callback = callback, label = label, priority = priority}		
		
	end	

	function frame:EventDetach(handle, callback, label, priority, owner)

		if priority == nil then
			oEventDetach(self, handle, callback, label)
		elseif owner == nil then
			oEventDetach(self, handle, callback, label, priority)
		else
			oEventDetach(self, handle, callback, label, priority, owner)
		end

		events[handle] = nil		
		
	end

	local oGetName = frame.GetName

	function frame:GetName() return uiNames.NKFRAME[thisName] end
	function frame:GetRealName() return oGetName(self) end
	function frame:GetEvents() return events end

	return frame

end

uiFunctions.NKFRAME = _uiFrame