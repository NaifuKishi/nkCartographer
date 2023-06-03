local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.cdManager then EnKai.cdManager = {} end

local internal    = privateVars.internal
local data        = privateVars.data
local oFuncs	  = privateVars.oFuncs

local oInspectAbilityNewDetail = Inspect.Ability.New.Detail

---------- init local variables ---------

local _cdManager		= false
local _cdSubscriptions	= {}
local _cdStore			= { ABILITY = {} , ITEM = {} }
local _gcd				= 1.5
--local _lastUpdate = nil

---------- local function block ---------

local function _fctIsSubscribed(cdType, key)

	local retList = {}

	--print (cdType)
	
	for addon, details in pairs (_cdSubscriptions) do
	
		--dump (_cdSubscriptions[addon][cdType])
		
		for thisKey, _ in pairs(details[cdType]) do
			--print (thisKey, key)
		
			if thisKey == "*" or thisKey == key then table.insert(retList, addon) end
		end
	end
	
	if #retList > 0 then return true, retList end
	
	return false, nil

end

local function _fctProcessAbilityCooldown (_, info)

	local adds, hasAdds = {}, false
	local stops, hasStops = {}, false  
	
	for key, data in pairs(info) do

		if data <= 0 then
			_cdStore.ABILITY[key] = nil

			local flag, addonList = _fctIsSubscribed("ABILITY", key)
			if flag then
				for _, addon in pairs(addonList) do
					if stops[addon] == nil then stops[addon] = {} end
					stops[addon][key] = { type = "ABILITY" }
					hasStops = true
				end
			end
		elseif data > _gcd then -- only check cd > 1 so we don't process all the standard cooldowns
		--else
			--print ('new cooldown', key)

			_cdStore.ABILITY[key] = { type = "ABILITY", duration = data, begin = oFuncs.oInspectTimeFrame(), remaining = data }
			
			local flag, addonList = _fctIsSubscribed("ABILITY", key)
			if flag then
				for _, addon in pairs(addonList) do
					if adds[addon] == nil then adds[addon] = {} end
					adds[addon][key] = _cdStore.ABILITY[key]
					hasAdds = true
				end
			end
		end
	end

	if hasAdds == true then 
		for addon, addList in pairs(adds) do
			EnKai.eventHandlers["EnKai.CDManager"]["Start"](addon, addList) 
		end
	end

	if hasStops == true then
		for addon, stopList in pairs(stops) do
			EnKai.eventHandlers["EnKai.CDManager"]["Stop"](addon, stopList) 
		end
	end

end


---------- library public function block ---------

function EnKai.cdManager.init()

  _cdSubscriptions[oFuncs.oInspectAddonCurrent()] = { ITEM = {}, ABILITY = {} }

  if _cdManager == true then return end
  
  if EnKai.internal.checkEvents ("EnKai.CDManager", true) == false then return nil end
  
  Command.Event.Attach(Event.Ability.New.Cooldown.Begin , _fctProcessAbilityCooldown, "EnKai.cdManager.Ability.New.Cooldown.Begin")
  Command.Event.Attach(Event.Ability.New.Cooldown.End , _fctProcessAbilityCooldown, "EnKai.cdManager.Ability.New.Cooldown.End")
  
  EnKai.eventHandlers["EnKai.CDManager"]["Start"], EnKai.events["EnKai.CDManager"]["Start"] = Utility.Event.Create(addonInfo.identifier, "EnKai.CDManager.Start")
  EnKai.eventHandlers["EnKai.CDManager"]["Update"], EnKai.events["EnKai.CDManager"]["Update"] = Utility.Event.Create(addonInfo.identifier, "EnKai.CDManager.Update")
  EnKai.eventHandlers["EnKai.CDManager"]["Stop"], EnKai.events["EnKai.CDManager"]["Stop"] = Utility.Event.Create(addonInfo.identifier, "EnKai.CDManager.Stop")
  
  _cdManager = true

end

function EnKai.cdManager.subscribe(sType, id)

	--if oFuncs.oInspectAddonCurrent() == 'nkRebuff' then print ('subscribe cooldown', sType, id) end

	sType = string.upper(sType)
	
	if _cdSubscriptions[oFuncs.oInspectAddonCurrent()] == nil then
		_cdSubscriptions[oFuncs.oInspectAddonCurrent()] = { ITEM = {}, ABILITY = {} }
	end

	if _cdSubscriptions[oFuncs.oInspectAddonCurrent()][sType] == nil then
		_cdSubscriptions[oFuncs.oInspectAddonCurrent()][sType] = {}
	end

	_cdSubscriptions[oFuncs.oInspectAddonCurrent()][sType][id] = true
	
	--dump(_cdSubscriptions)
	
	if sType == 'ABILITY' then
		local list
	
		if id == "*" then
			list = Inspect.Ability.New.List()
		else
			list = { [id] = true }
		end
		
		local flag, detailList = pcall (Inspect.Ability.New.Detail, list)
		if flag and detailList ~= nil then
			for key, details in pairs(detailList) do
				if details.currentCooldownRemaining ~= nil then
					_fctProcessAbilityCooldown (_, {[key] = details.currentCooldownRemaining })
				end
			end
		end
	end

end

function EnKai.cdManager.unsubscribe(type, id)

	if _cdSubscriptions[oFuncs.oInspectAddonCurrent()] ~= nil and _cdSubscriptions[oFuncs.oInspectAddonCurrent()][type] ~= nil and _cdSubscriptions[oFuncs.oInspectAddonCurrent()][type][id] ~= nil then
		_cdSubscriptions[oFuncs.oInspectAddonCurrent()][type][id] = nil
	end

end

function EnKai.cdManager.getAllCooldowns (cdType) return _cdStore[string.upper(cdType)] end

function EnKai.cdManager.isCooldownActive(cdType, id) 

	if _cdStore[string.upper(cdType)] == nil then return false end

	if _cdStore[string.upper(cdType)][id] == nil then
		return false
	else 
		return true
	end
	
end

function EnKai.cdManager.getCooldownDetails(cdType, id) 

	if _cdStore[string.upper(cdType)] ~= nil then
		return _cdStore[string.upper(cdType)][id] 
	end
	
	return nil
	
end

function EnKai.cdManager.setGCD(newGCD) _gcd = newGCD end

---------- addon internal function block ---------

function internal.processAbilityCooldowns ()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai internal.processAbilityCooldowns") end

	if _cdManager == false then return end

	local updates, hasUpdates = {}, false
	local adds, hasAdds = {}, false
	local stops, hasStops = {}, false
	
	for key, details in pairs (_cdStore.ABILITY) do

		if _cdStore.ABILITY[key].lastChange == nil then
			local flag, details = oInspectAbilityNewDetail(key)
			
			if flag and details ~= nil then
				_cdStore.ABILITY[key].remaining = details.currentCooldownRemaining
				_cdStore.ABILITY[key].duration = details.currentCooldownDuration
				_cdStore.ABILITY[key].begin = details.currentCooldownBegin
			else
				_cdStore.ABILITY[key].remaining = _cdStore.ABILITY[key].duration - (oFuncs.oInspectTimeFrame() - _cdStore.ABILITY[key].begin)
			end
		else
			_cdStore.ABILITY[key].remaining = _cdStore.ABILITY[key].duration - (oFuncs.oInspectTimeFrame() - _cdStore.ABILITY[key].begin)
		end
		
		local flag, addonList = _fctIsSubscribed("ABILITY", key)
		
		if flag then
			if _cdStore.ABILITY[key].remaining <= 1 or _cdStore.ABILITY[key].lastChange == nil or oFuncs.oInspectTimeReal() - _cdStore.ABILITY[key].lastChange >= 1 then
				for _, addon in pairs(addonList) do
					if updates[addon] == nil then updates[addon] = {} end
					updates[addon][key] = _cdStore.ABILITY[key]
					_cdStore.ABILITY[key].lastChange = oFuncs.oInspectTimeReal()
					hasUpdates = true
				end
			end
		end
	end

	if hasUpdates == true then 
		for addon, updateList in pairs(updates) do
			EnKai.eventHandlers["EnKai.CDManager"]["Update"](addon, updateList) 
		end
	end

	if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai internal.processAbilityCooldowns", debugId) end

end

function internal.processItemCooldowns ()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai internal.processItemCooldowns") end

	if _cdManager == false then return end

	local curTime = oFuncs.oInspectTimeReal()

	local updates, hasUpdates = {}, false
	local adds, hasAdds = {}, false
	local stops, hasStops = {}, false
	
	--check item cooldowns - needs to be checked here as rift is not giving any event on item cooldowns
	
	local temp = {}
	
	for addon, details in pairs (_cdSubscriptions) do
		
		for thisKey, _ in pairs(details.ITEM) do

			if temp[thisKey] == nil then
			
				if _cdStore.ITEM[thisKey] == nil then
					local flag, details = pcall(oFuncs.oInspectItemDetail, thisKey)

					if flag and details ~= nil and details.cooldownRemaining ~= nil then
						_cdStore.ITEM[thisKey] = { type = "ITEM", duration = details.cooldownDuration, begin = details.cooldownBegin, remaining = details.cooldownRemaining, lastChange = oFuncs.oInspectTimeReal() }
						if adds[addon] == nil then adds[addon] = {} end
						adds[addon][thisKey] = _cdStore.ITEM[thisKey]
						hasAdds = true
					end
					
				else
				
					_cdStore.ITEM[thisKey].remaining = _cdStore.ITEM[thisKey].duration - (oFuncs.oInspectTimeFrame() - _cdStore.ITEM[thisKey].begin)
					
					if _cdStore.ITEM[thisKey].remaining <= 0 then
						if stops[addon] == nil then stops[addon] = {} end
						stops[addon][thisKey] = { type = "ITEM" }
						hasStops = true
						_cdStore.ITEM[thisKey] = nil
					elseif _cdStore.ITEM[thisKey].remaining <= 1 or curTime - _cdStore.ITEM[thisKey].lastChange >= 1 then
						_cdStore.ITEM[thisKey].lastChange = oFuncs.oInspectTimeReal()
						if updates[addon] == nil then updates[addon] = {} end
						updates[addon][thisKey] = _cdStore.ITEM[thisKey]
						hasUpdates = true
					end
					
				end
				
				temp[thisKey] = true
			end
		end
	end

	if hasAdds == true then 
		for addon, addList in pairs(adds) do
			EnKai.eventHandlers["EnKai.CDManager"]["Start"](addon, addList) 
		end
	end

	if hasStops == true then
		for addon, stopList in pairs(stops) do
			EnKai.eventHandlers["EnKai.CDManager"]["Stop"](addon, stopList) 
		end
	end

	if hasUpdates == true then 
		for addon, updateList in pairs(updates) do
			EnKai.eventHandlers["EnKai.CDManager"]["Update"](addon, updateList) 
		end
	end

	if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai internal.processItemCooldowns", debugId) end

end