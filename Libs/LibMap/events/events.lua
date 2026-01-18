local addonInfo, privateVars = ...

---------- init namespace ---------

if not LibMap then LibMap = {} end

if not LibMap.eventHandlers then LibMap.eventHandlers = {} end
if not LibMap.events then LibMap.events = {} end

local internal    = privateVars.internal
local data        = privateVars.data

local InspectAddonCurrent	= Inspect.Addon.Current
local InspectSystemWatchdog	= Inspect.System.Watchdog
local InspectTimeFrame		= Inspect.Time.Frame
local InspectSystemSecure	= Inspect.System.Secure
local InspectTimeReal		= Inspect.Time.Real

local stringFormat			= string.format

---------- init local variables ---------

local _insecureEvents = {}
local _periodicEvents = {}

local _lastUpdate1, _lastUpdate2

---------- local function block ---------

local function _fctProcessPeriodic()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (InspectAddonCurrent(), "LibMap _fctProcessPeriodic") end

	local remainingEvents = false

	local _curTime = InspectTimeFrame()
	
	for k, v in pairs(_periodicEvents) do

		if v ~= false then
			if _curTime - v.timer > v.period then
				v.timer = _curTime
				if v.func() == true then _periodicEvents[k] = false end
				
				if _periodicEvents[k] ~= false and v.tries ~= nil then
					_periodicEvents[k].currentTries = _periodicEvents[k].currentTries + 1
					if _periodicEvents[k].currentTries >= _periodicEvents[k].tries then
						_periodicEvents[k] = false
					end
				end
				
			else
				remainingEvents = true
			end
			
		end
	end 

	if remainingEvents == false then _periodicEvents = {} end

	if nkDebug then nkDebug.traceEnd (InspectAddonCurrent(), "LibMap _fctProcessPeriodic", debugId) end	

end

local function _fctProcessInsecure()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (InspectAddonCurrent(), "LibMap _fctProcessInsecure") end

	if InspectSystemSecure() == true then return end

	local remainingEvents = false

	for k, v in pairs(_insecureEvents) do

		if v ~= false then

			if v.timer == nil or v.period == nil then
				v.func()
				_insecureEvents[k] = false
			else
				if InspectTimeFrame() - v.timer > v.period then
					v.func()
					_insecureEvents[k] = false
				else
					remainingEvents = true
				end
			end
		end
	end 

	if remainingEvents == false then _insecureEvents = {} end

	if nkDebug then nkDebug.traceEnd (InspectAddonCurrent(), "LibMap _fctProcessInsecure", debugId) end	

end

local _eventsP1Index = 1
local _eventsS1Index = 1
local _eventsRemIndex = 1

local function _fctUpdateHandler()

	-- run always

	--internal.coroutinesProcess()
	internal.processFX()
	_fctProcessPeriodic()
		
	local _curTime = InspectTimeReal()

	local thisWatchDog = InspectSystemWatchdog()
	
	-- run every 1 second
	
	if (_lastUpdate2 == nil or _curTime - _lastUpdate2 >= 1) then
	
		if thisWatchDog >= 0.1 and _eventsS1Index == 1 then
			internal.processMap()
			_eventsS1Index = 2
		end
		
		if thisWatchDog >= 0.1 and _eventsS1Index == 2 then
			internal.checkShard()
			_eventsS1Index = 3
		end
		
		if thisWatchDog >= 0.1 and _eventsS1Index == 3 then
			internal.uiCheckTooltips()
			_eventsS1Index = 1
		end
		
		_lastUpdate2 = _curTime
	end
	
	-- run every 0.1 seconds
	
	if (_lastUpdate1 == nil or _curTime - _lastUpdate1 >= .1) then
	
		 if thisWatchDog >= 0.1 and _eventsP1Index == 1 then
			--internal.processAbilityCooldowns()
			_eventsP1Index = 2
		 end
		 
		 if thisWatchDog >= 0.1 and _eventsP1Index == 2 then
			--internal.processItemCooldowns()
			_eventsP1Index = 3
		 end
		 
		 if thisWatchDog >= 0.1 and _eventsP1Index == 3 then
			--internal.processBuffs()
			_eventsP1Index = 1
		 end
	
		_lastUpdate1 = _curTime
	end
	
	-- run if there's processor time remaining
	
	if thisWatchDog >= 0.1 and _eventsRemIndex == 1 then
		_fctProcessInsecure()
		_eventsRemIndex = 2
	end
	
	if thisWatchDog >= 0.1 and _eventsRemIndex == 2 then
		internal.uiGarbageCollector()
		_eventsRemIndex = 1
	end
	
	-- lowest priority is the performance queue
	
	internal.processPerformanceQueue()

end

function internal.processPerformanceQueue()

	if data.perfQueue == nil or #data.perfQueue == 0 then return end
	if InspectSystemWatchdog() < 0.1 then return end
		
	data.perfQueue[1]()
	tableRemove(data.perfQueue, 1, 1)
	
	
end

---------- library public function block ---------

function LibMap.events.addPeriodic(func, period, tries) -- period is in seconds
	
	local uuid = LibEKL.Tools.UUID ()
	_periodicEvents[uuid] = {func = func, timer = InspectTimeFrame(), period = (period or 0), tries = (tries or 1), currentTries = 0 }
		
	return uui
	
end

function LibMap.events.addInsecure(func, timer, period)

  local uuid = LibEKL.Tools.UUID ()
	_insecureEvents[uuid] = {func = func, timer = timer, period = period }
	return uuid

end

function LibMap.events.removeInsecure(id) _insecureEvents[id] = false end

function LibMap.internal.checkEvents (name, init) -- radial muss umgebaut werden, dann kann diese function internal gemacht werden

	if LibMap.eventHandlers[name] == nil and init ~= false then
		LibMap.eventHandlers[name] = {}
		LibMap.events[name] = {}
	elseif init ~= false then
		LibEKL.Tools.Error.Display (addonInfo.identifier, stringFormat("Duplicate name '%s' found!", name), 1)
		return false
	end
	
	return true

end

---------- addon internal function block ---------

function internal.deRegisterEvents (name)
  
  if LibMap.eventHandlers[name] ~= nil then
    LibMap.eventHandlers[name] = nil
    LibMap.events[name] = nil
  end

end

-------------------- EVENTS --------------------

Command.Event.Attach(Event.System.Update.Begin, _fctUpdateHandler, "LibMap.system.updateHandler")