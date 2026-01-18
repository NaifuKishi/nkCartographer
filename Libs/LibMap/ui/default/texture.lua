local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions  = privateVars.uiFunctions
local data          = privateVars.data
local uiNames      = privateVars.uiNames
local internal      = privateVars.internal

---------- addon internal function block ---------

local function _uiTexture(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end
	
	data.textureCount = data.textureCount + 1
	local thisName = "EnKai.Texture." .. data.textureCount
	
	if uiNames.NKTEXTURE == nil then uiNames.NKTEXTURE = {} end
	uiNames.NKTEXTURE[thisName] = name
	
	local texture = UI.CreateFrame ('Texture', thisName, parent)	

	local events = {}
  local macros = {}
  
  local oEventMacroSet = texture.EventMacroSet
  
  function texture:EventMacroSet(handle, macro)
    
     if macro == nil then
      macros[handle] = true
      oEventMacroSet(self, handle, nil)
      local count = 0
      for k, v in pairs(macros) do
        count = count + 1
      end
      if count > 0 then texture:SetSecureMode("normal") end
    else
      macros[handle] = nil
      texture:SetSecureMode("restricted")
      oEventMacroSet(self, handle, macro)      
    end
    
  end

  function texture:_recycle()
    internal.deRegisterEvents (name)
    for k, v in pairs (macros) do
       texture:EventMacroSet(k, nil)
    end
  end

	function texture:destroy()
	  internal.uiAddToGarbageCollector ('nkTexture', texture)  
	end	
	
	local oEventAttach, oEventDetach = texture.EventAttach, texture.EventDetach
	
	function texture:EventAttach(handle, callback, label, priority)
		
		if priority == nil then
		  oEventAttach(self, handle, callback, label)
		else
		  oEventAttach(self, handle, callback, label, priority)
		end
		
		events[handle] = {callback = callback, label = label, priority = priority}		
	end	
	
	function texture:EventDetach(handle, callback, label, priority, owner)
		
		if priority == nil then
		  oEventDetach(self, handle, callback, label)
		elseif owner == nil then
		  oEventDetach(self, handle, callback, label, priority)
		else
		  oEventDetach(self, handle, callback, label, priority, owner)
		end
		
		events[handle] = nil		
	end
	
	local oGetName = texture.GetName
	
	function texture:GetName() return uiNames.NKTEXTURE[thisName] end
	function texture:GetRealName() return oGetName(self) end
	
	function texture:GetEvents() return events end

	return texture
	
end

uiFunctions.NKTEXTURE = _uiTexture