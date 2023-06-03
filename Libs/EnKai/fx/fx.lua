local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.fx then EnKai.fx = {} end

local internal   = privateVars.internal
local oFuncs	  = privateVars.oFuncs

---------- init local variables ---------

local _fxStore = {}

---------- library public function block ---------

function EnKai.fx.register (id, frame, effect)

	--print ("register fx", id)

	_fxStore[id] = { frame = frame, effect = effect }
	_fxStore[id].lastUpdate = oFuncs.oInspectTimeReal()

end

function EnKai.fx.update (id, effect)

  if _fxStore[id] == nil then return end

  for key, value in pairs (effect) do
    _fxStore[id].effect[key] = value
  end
  
end

function EnKai.fx.cancel (id) 

	--print ('cancel fx', id)
	_fxStore[id] = nil 
	
end

function EnKai.fx.updateTime (id)
  if _fxStore[id] ~= nil then
    _fxStore[id].lastUpdate = oFuncs.oInspectTimeReal()
    _fxStore[id].lastRun = nil
  end
end

function EnKai.fx.pauseEffect(id)
  if _fxStore[id] ~= nil then
	  _fxStore[id].lastUpdate = nil
  end
end

---------- addon internal function block ---------

function internal.processFX()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai internal.processFX") end

	local timeReal = oFuncs.oInspectTimeReal

	for id, details in pairs (_fxStore) do

		local now = timeReal()

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
					local m = EnKai.tools.gfx.rotate(details.frame, radian, (details.effect.scale or 1))
					details.effect.fill.transform = m:Get()    
					details.frame:SetShape(details.effect.path, details.effect.fill, nil)
				end    
			end
		elseif details.effect.id == "pulseCanvas" then
		--		  if _fxStore[id].lastUpdate ~= nil then
		--        if oFuncs.oInspectTimeReal() - _fxStore[id].lastUpdate > details.effect.speed and details.frame:GetVisible() == true then
		--          
		--          _fxStore[id].lastUpdate = oFuncs.oInspectTimeReal()
		--        
		--          if details.scale == nil then details.scale = details.effect.maxScale end
		--          if details.direction == nil then details.direction = 1 end
		--          
		--          if details.direction == 1 then
		--            details.scale = details.scale + details.effect.step
		--            if details.scale > details.effect.maxScale then
		--              details.scale = details.effect.maxScale
		--              details.direction = -1
		--            end
		--          else
		--            details.scale = details.scale - details.effect.step
		--            if details.scale < details.effect.minScale then
		--              details.scale = details.effect.minScale
		--              details.direction = 1
		--            end
		--          end
		--          
		--          local midx = details.frame:GetHeight()/2
		--          local midy = details.frame:GetWidth()/2
		--          local m = Libs.Transform2:new()
		--          m:Translate(midx,midy)
		--          m:Scale(details.scale, details.scale)
		--          
		--          details.effect.fill.transform = m:Get()
		--          details.frame:SetShape(details.effect.path, details.effect.fill, nil)
		--          
		--          --details.frame:SetWidth(details.pulseWidth)
		--        end          
		--      end	  
		end
	end

	if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai internal.processFX", debugId) end	

end