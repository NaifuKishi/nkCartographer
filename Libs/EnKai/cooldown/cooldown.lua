local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.cdManager then EnKai.cdManager = {} end

local internal    = privateVars.internal
local data        = privateVars.data

local InspectAbilityNewDetail	= Inspect.Ability.New.Detail
local InspectAbilityNewList		= Inspect.Ability.New.List
local InspectAddonCurrent		= Inspect.Addon.Current
local InspectTimeFrame			= Inspect.Time.Frame
local InspectTimeReal			= Inspect.Time.Real
local InspectItemDetail	= Inspect.Item.Detail


local stringUpper				= string.upper

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

	--print ("_fctProcessAbilityCooldown")

	--dump (info)

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

			_cdStore.ABILITY[key] = { type = "ABILITY", duration = data, begin = InspectTimeFrame(), remaining = data }
			
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
			--print (addon)
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

function EnKai.cdManager.GetCooldowns()

	return _cdSubscriptions

end

function EnKai.cdManager.init()

  _cdSubscriptions[InspectAddonCurrent()] = { ITEM = {}, ABILITY = {} }

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

	--print (sType, id)

	sType = stringUpper(sType)

	if _cdSubscriptions[InspectAddonCurrent()] == nil then
		_cdSubscriptions[InspectAddonCurrent()] = { ITEM = {}, ABILITY = {} }
	end

	if _cdSubscriptions[InspectAddonCurrent()][sType] == nil then
		_cdSubscriptions[InspectAddonCurrent()][sType] = {}
	end

	_cdSubscriptions[InspectAddonCurrent()][sType][id] = true
	
	--dump(_cdSubscriptions[InspectAddonCurrent()])
	
	if sType == 'ABILITY' then
		local list
	
		if id == "*" then
			list = InspectAbilityNewList()
		else
			list = { [id] = true }
		end
		
		local flag, detailList = pcall (InspectAbilityNewDetail, list)
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

	if _cdSubscriptions[InspectAddonCurrent()] ~= nil and _cdSubscriptions[InspectAddonCurrent()][type] ~= nil and _cdSubscriptions[InspectAddonCurrent()][type][id] ~= nil then
		_cdSubscriptions[InspectAddonCurrent()][type][id] = nil
	end

end

function EnKai.cdManager.getAllCooldowns (cdType) return _cdStore[stringUpper(cdType)] end

function EnKai.cdManager.isCooldownActive(cdType, id) 

	if _cdStore[stringUpper(cdType)] == nil then return false end

	if _cdStore[stringUpper(cdType)][id] == nil then
		return false
	else 
		return true
	end
	
end

function EnKai.cdManager.getCooldownDetails(cdType, id) 

	if _cdStore[stringUpper(cdType)] ~= nil then
		return _cdStore[stringUpper(cdType)][id] 
	end
	
	return nil
	
end

function EnKai.cdManager.setGCD(newGCD) _gcd = newGCD end

---------- addon internal function block ---------

function internal.processAbilityCooldowns ()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (InspectAddonCurrent(), "EnKai internal.processAbilityCooldowns") end

	if _cdManager == false then return end

	local updates, hasUpdates = {}, false
	local adds, hasAdds = {}, false
	local stops, hasStops = {}, false
	
	for key, details in pairs (_cdStore.ABILITY) do

		if _cdStore.ABILITY[key].lastChange == nil then
			local flag, details = InspectAbilityNewDetail(key)
			
			if flag and details ~= nil then
				_cdStore.ABILITY[key].remaining = details.currentCooldownRemaining
				_cdStore.ABILITY[key].duration = details.currentCooldownDuration
				_cdStore.ABILITY[key].begin = details.currentCooldownBegin
			else
				_cdStore.ABILITY[key].remaining = _cdStore.ABILITY[key].duration - (InspectTimeFrame() - _cdStore.ABILITY[key].begin)
			end
		else
			_cdStore.ABILITY[key].remaining = _cdStore.ABILITY[key].duration - (InspectTimeFrame() - _cdStore.ABILITY[key].begin)
		end
		
		local flag, addonList = _fctIsSubscribed("ABILITY", key)
		
		if flag then
			if _cdStore.ABILITY[key].remaining <= 1 or _cdStore.ABILITY[key].lastChange == nil or InspectTimeReal() - _cdStore.ABILITY[key].lastChange >= 1 then
				for _, addon in pairs(addonList) do
					if updates[addon] == nil then updates[addon] = {} end
					updates[addon][key] = _cdStore.ABILITY[key]
					_cdStore.ABILITY[key].lastChange = InspectTimeReal()
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

	if nkDebug then nkDebug.traceEnd (InspectAddonCurrent(), "EnKai internal.processAbilityCooldowns", debugId) end

end

function internal.processItemCooldowns ()

	local debugId  
	if nkDebug then debugId = nkDebug.traceStart (InspectAddonCurrent(), "EnKai internal.processItemCooldowns") end

	if _cdManager == false then return end

	local curTime = InspectTimeReal()

	local updates, hasUpdates = {}, false
	local adds, hasAdds = {}, false
	local stops, hasStops = {}, false
	
	--check item cooldowns - needs to be checked here as rift is not giving any event on item cooldowns
	
	local temp = {}
	
	for addon, details in pairs (_cdSubscriptions) do
		
		for thisKey, _ in pairs(details.ITEM) do

			if temp[thisKey] == nil then
			
				if _cdStore.ITEM[thisKey] == nil then
					local flag, details = pcall(InspectItemDetail, thisKey)

					if flag and details ~= nil and details.cooldownRemaining ~= nil then
						_cdStore.ITEM[thisKey] = { type = "ITEM", duration = details.cooldownDuration, begin = details.cooldownBegin, remaining = details.cooldownRemaining, lastChange = InspectTimeReal() }
						if adds[addon] == nil then adds[addon] = {} end
						adds[addon][thisKey] = _cdStore.ITEM[thisKey]
						hasAdds = true
					end
					
				else
				
					_cdStore.ITEM[thisKey].remaining = _cdStore.ITEM[thisKey].duration - (InspectTimeFrame() - _cdStore.ITEM[thisKey].begin)
					
					if _cdStore.ITEM[thisKey].remaining <= 0 then
						if stops[addon] == nil then stops[addon] = {} end
						stops[addon][thisKey] = { type = "ITEM" }
						hasStops = true
						_cdStore.ITEM[thisKey] = nil
					elseif _cdStore.ITEM[thisKey].remaining <= 1 or curTime - _cdStore.ITEM[thisKey].lastChange >= 1 then
						_cdStore.ITEM[thisKey].lastChange = InspectTimeReal()
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

	if nkDebug then nkDebug.traceEnd (InspectAddonCurrent(), "EnKai internal.processItemCooldowns", debugId) end

end