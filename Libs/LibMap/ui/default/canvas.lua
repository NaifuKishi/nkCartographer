local addonInfo, privateVars = ...

---------- init namespace ---------

if not LibMap then LibMap = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions  = privateVars.uiFunctions
local data          = privateVars.data
local uiNames      = privateVars.uiNames
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiCanvas(name, parent) 

	--if LibMap.internal.checkEvents (name, true) == false then return nil end

	data.canvasCount = data.canvasCount + 1
	local thisName = "LibMap.Canvas." .. data.canvasCount

	if uiNames.NKCANVAS == nil then uiNames.NKCANVAS = {} end
	uiNames.NKCANVAS[thisName] = name

	local canvas = UI.CreateFrame ('Canvas', thisName, parent)	

	local events = {}
	local macros = {}

	local oEventMacroSet = canvas.EventMacroSet

	function canvas:EventMacroSet(handle, macro)

		if macro == nil then
			macros[handle] = true
			oEventMacroSet(self, handle, nil)
			local count = 0

			for k, v in pairs(macros) do
				count = count + 1
			end
		else
			macros[handle] = nil
			canvas:SetSecureMode("restricted")
			oEventMacroSet(self, handle, macro)      
		end

	end

	function canvas:_recycle() end

	function canvas:destroy()
	
		internal.deRegisterEvents (name)

		for handle, details in pairs (events) do
			canvas:EventDetach(handle, details.callback, details.label, details.priority, nil)
		end

		for k, v in pairs (macros) do canvas:EventMacroSet(k, nil) end

		internal.uiAddToGarbageCollector ('nkCanvas', canvas)  
		
	end	

	local oEventAttach, oEventDetach = canvas.EventAttach, canvas.EventDetach

	function canvas:EventAttach(handle, callback, label, priority)

		if priority == nil then
			oEventAttach(self, handle, callback, label)
		else
			oEventAttach(self, handle, callback, label, priority)
		end

		events[handle] = {callback = callback, label = label, priority = priority}		
		
	end	

	function canvas:EventDetach(handle, callback, label, priority, owner)

		if priority == nil then
			oEventDetach(self, handle, callback, label)
		elseif owner == nil then
			oEventDetach(self, handle, callback, label, priority)
		else
			oEventDetach(self, handle, callback, label, priority, owner)
		end

		events[handle] = nil		
		
	end

	local oGetName = canvas.GetName

	function canvas:GetName() return uiNames.NKCANVAS[thisName] end
	function canvas:GetRealName() return oGetName(self) end
	function canvas:GetEvents() return events end

	return canvas
	
end

uiFunctions.NKCANVAS = _uiCanvas