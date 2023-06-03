local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.coroutines then EnKai.coroutines = {} end

local internal   = privateVars.internal
local oFuncs	  = privateVars.oFuncs

---------- init local variables ---------

local _coRoutines = {}

---------- library public function block ---------

function EnKai.coroutines.add ( info ) table.insert(_coRoutines, info ) end

---------- addon internal function block ---------

function internal.coroutinesProcess ()

	local debugId  
    if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai internal.coroutinesProcess") end

	if #_coRoutines == 0 then return end
	
	local timeReal = oFuncs.oInspectTimeReal
	
	for idx = 1, #_coRoutines, 1 do
		if _coRoutines[idx].active == true then
		
			local go = true
			if _coRoutines[idx].delay ~= nil then
				
				if _coRoutines[idx].timeStamp == nil then _coRoutines[idx].timeStamp = timeReal() end
				
				if EnKai.tools.math.round((timeReal() - _coRoutines[idx].timeStamp), 1) < _coRoutines[idx].delay then 
					go = false
				else
					_coRoutines[idx].delay = nil						
				end					
			end			
		
			if go == true then
				local status, value = coroutine.resume(_coRoutines[idx].func, _coRoutines[idx].para1, _coRoutines[idx].para2)
				
				if status == false then
					if type(value) == 'function' then
						EnKai.tools.error.display ("EnKai", 'error in coroutine within supplied function', 1)
					else
						EnKai.tools.error.display ("EnKai", 'error in coroutine: ' .. value, 1)
					end 
					_coRoutines[idx].active = false
				elseif value == nil or value >= _coRoutines[idx].counter or status == false then
					_coRoutines[idx].active = false
					if _coRoutines[idx].callBack ~= nil then _coRoutines[idx].callBack() end 
				end
			end
		end
	end

	if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai internal.coroutinesProcess", debugId) end	

end