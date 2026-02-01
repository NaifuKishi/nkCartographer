local addonInfo, privateVars = ...

---------- init namespace ---------

if not LibMap then LibMap = {} end
if not LibMap.fx then LibMap.fx = {} end

local internal   = privateVars.internal

local InspectTimeReal 		= Inspect.Time.Real
local InspectAddonCurrent	= Inspect.Addon.Current

---------- init local variables ---------

local _fxStore = {}

---------- library public function block ---------

function LibMap.fx.register (id, frame, effect)

	_fxStore[id] = { frame = frame, effect = effect }
	_fxStore[id].lastUpdate = InspectTimeReal()

end

function LibMap.fx.update (id, effect)

  if _fxStore[id] == nil then return end

  for key, value in pairs (effect) do
    _fxStore[id].effect[key] = value
  end
  
end

function LibMap.fx.cancel (id) 

	_fxStore[id] = nil 
	
end

function LibMap.fx.updateTime (id)
  if _fxStore[id] ~= nil then
    _fxStore[id].lastUpdate = InspectTimeReal()
    _fxStore[id].lastRun = nil
  end
end

function LibMap.fx.pauseEffect(id)
  if _fxStore[id] ~= nil then
	  _fxStore[id].lastUpdate = nil
  end
end

---------- addon internal function block ---------

function internal.processFX()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (InspectAddonCurrent(), "LibMap internal.processFX") end

	for id, details in pairs (_fxStore) do

		local now = InspectTimeReal()

		if details.effect.id == 'timedhide' then
			if _fxStore[id].lastUpdate ~= nil then
				if now - _fxStore[id].lastUpdate > details.effect.duration then					
					_fxStore[id].lastUpdate = nil
					details.effect.callback()
				end	
			end
		elseif details.effect.id == 'alpha' then
			if _fxStore[id].lastUpdate ~= nil then
				if now - _fxStore[id].lastUpdate > (details.effect.duration + details.effect.delay) then         
					_fxStore[id].lastUpdate = nil
					if details.effect.callback ~= nil then details.effect.callback() end
				elseif now - _fxStore[id].lastUpdate > details.effect.delay then
					local step = ((details.effect.startAlpha - details.effect.endAlpha ) / details.effect.duration) * details.effect.modifier          
					if details.lastRun == nil then
						if details.effect.initCallback ~= nil then details.effect.initCallback() end
						step = 0;
					else
						local delta = now - details.lastRun
						step = step * delta
					end
					details.lastRun = now
					local alpha = details.frame:GetAlpha()
					local newAlpha = (alpha + step)
					if (details.effect.modifier == -1 and newAlpha > details.effect.endAlpha) or (details.effect.modifier == -1 and newAlpha < details.effect.endAlpha) then
						details.frame:SetAlpha(alpha + step)
					end
				end 
			end
		elseif details.effect.id == "rotateCanvas" then
			if _fxStore[id].lastUpdate ~= nil then
				if now - _fxStore[id].lastUpdate > (details.effect.speed or 1) and details.frame:GetVisible() == true then
					_fxStore[id].lastUpdate = now   

					if details.angle == nil then details.angle = 0 else details.angle = details.angle + 1 end

					local radian = math.rad(details.angle)
					local m = LibEKL.Tools.Gfx.Rotate(details.frame, radian, (details.effect.scale or 1))
					details.effect.fill.transform = m:Get()    
					details.frame:SetShape(details.effect.path, details.effect.fill, nil)
				end    
			end
		elseif details.effect.id == "pulseCanvas" then
			if _fxStore[id].lastUpdate ~= nil then
				if now - _fxStore[id].lastUpdate > (details.effect.speed or 1) and details.frame:GetVisible() == true then
					_fxStore[id].lastUpdate = now

					-- Calculate the pulse factor based on the current time
					local pulseFactor = 1 + (details.effect.amplitude or 0.1) * math.sin(now * (details.effect.frequency or 1))

					local m = LibEKL.Tools.Gfx.Pulse(details.frame, pulseFactor)
					-- Apply the pulse effect to the frame
					details.effect.fill.transform = m:Get()    
					details.frame:SetShape(details.effect.path, details.effect.fill, nil)
				end
			end
		end
	end

	if nkDebug then nkDebug.traceEnd (InspectAddonCurrent(), "LibMap internal.processFX", debugId) end	

end