local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.unit then EnKai.unit = {} end

local lang        = privateVars.langTexts
local data        = privateVars.data

local InspectTimeReal		= Inspect.Time.Real
local InspectAddonCurrent 	= Inspect.Addon.Current
local InspectUnitLookup		= Inspect.Unit.Lookup
local InspectUnitDetail		= Inspect.Unit.Detail
local InspectUnitList		= Inspect.Unit.List

local stringFind	= string.find
local stringFormat	= string.format
local stringSub		= string.sub

---------- init local variables ---------

local _subscriptions = {}

local function _eventHealth (_, info)
	for unit, thisData in pairs(info) do

		local identifiers = _getIdentifier (unit)
		if #identifiers > 0 then
			for idx = 1, #identifiers, 1 do
				local frame = _getUnitFrame(identifiers[idx])		

				if frame then
					frame:SetHealth(thisData)
				end
			end
		end
	end
end

local function _eventHealthCap (a,b,c)
end

local function _eventHealthMax (_, info)
	for unit, thisData in pairs(info) do
		--print ("_eventHealthMax")

		local identifiers = _getIdentifier (unit)
		if #identifiers > 0 then
			for idx = 1, #identifiers, 1 do
				local frame = _getUnitFrame(identifiers[idx])		

				if frame then frame:SetHealthMax(thisData) end
			end
		end
	end
end

local function _eventEnergy (_, info)
	for unit, thisData in pairs(info) do
		--print ("_eventEnergy")

		local identifiers = _getIdentifier (unit)
		if #identifiers > 0 then
			for idx = 1, #identifiers, 1 do
				local frame = _getUnitFrame(identifiers[idx])		

				if frame then frame:SetEnergy(thisData) end

				if identifiers[idx] == "player" then
					uiElements.frames["player.ressourcebar"]:SetRessource(thisData)
				end
			end
		end
	end
end

local function _eventEnergyMax (_, info)
	for unit, thisData in pairs(info) do
		local identifiers = _getIdentifier (unit)
		if #identifiers > 0 then
			for idx = 1, #identifiers, 1 do
				local frame = _getUnitFrame(identifiers[idx])		

				if frame then frame:SetEnergyMax(thisData) end

				if identifiers[idx] == "player" then
					uiElements.frames["player.ressourcebar"]:SetRessourceMax(thisData)
				end
			end
		end
	end
end

local function _eventMana (_, info)
	for unit, thisData in pairs(info) do
		--print ("_eventMana")
		local identifiers = _getIdentifier (unit)
		if #identifiers > 0 then
			for idx = 1, #identifiers, 1 do
				local frame = _getUnitFrame(identifiers[idx])		

				if frame then frame:SetEnergy(thisData) end

				if identifiers[idx] == "player" then
					uiElements.frames["player.ressourcebar"]:SetRessource(thisData)
				end
			end
		end
	end
end

local function _eventCharge (_, info)
	for unit, thisData in pairs(info) do
		--print ("_eventCharge")
		local identifiers = _getIdentifier (unit)
		if #identifiers > 0 then
			for idx = 1, #identifiers, 1 do
				local frame = _getUnitFrame(identifiers[idx])		

				if frame then frame:SetCharge(thisData) end

				if identifiers[idx] == "player" then
					uiElements.frames["player.ressourcebar"]:SetCharge(thisData)
				end
			end
		end		
	end
end

local function _eventPower (_, info)
	for unit, thisData in pairs(info) do
		--print ("_eventPower")
		local identifiers = _getIdentifier (unit)
		if #identifiers > 0 then
			for idx = 1, #identifiers, 1 do
				local frame = _getUnitFrame(identifiers[idx])		

				if frame then frame:SetEnergy(thisData) end

				if identifiers[idx] == "player" then
					uiElements.frames["player.ressourcebar"]:SetRessource(thisData)
				end
			end
		end	
	end
end

local function _eventPlanar (_, info)
	for unit, thisData in pairs(info) do
		--print ("_eventPlanar")
		local identifiers = _getIdentifier (unit)
		if #identifiers > 0 then
			for idx = 1, #identifiers, 1 do
				local frame = _getUnitFrame(identifiers[idx])		

				if frame then frame:SetPlanar(thisData) end
			end
		end	
	end
end

local function _eventCombo (_, info)
	for unit, thisData in pairs(info) do        

		local identifiers = _getIdentifier (unit)
		if #identifiers > 0 then
			for idx = 1, #identifiers, 1 do
				if identifiers[idx] == "player" then
					uiElements.frames["player.ressourcebar"]:SetCombo(thisData)
				end
			end
		end	
	end
end


function EnKai.unit.statsBroadcast(stat, identifier, unitId, value)

	local sub = _subscriptions[stat]

	if identifier ~= nil then 
		for _, value in pairs (sub.identifier) do
			if value == identifier then
				
			end
		end
	end

end

function EnKai.unit.statsSubscribe(stat, identifier, unitId)

	if _subscriptions == nil then _subscriptions = {} end
	if _subscriptions[stat] == nil then _subscriptions[stat] = { identifier = {}, unitId = {}} end

	if not EnKai.tools.table.isMember (_subscriptions[stat].identifier, identifier) then
		tableInsert(_subscriptions[stat].identifier, identifier)
	end

	if not EnKai.tools.table.isMember (_subscriptions[stat].unitId, identifier) then
		tableInsert(_subscriptions[stat].unitId, identifier)
	end

end

function EnKai.unitStats.statsInit()

	_subscriptions[InspectAddonCurrent()] = {}

	if EnKai.internal.checkEvents ("EnKai.Unit", false) == false then return nil end

	Command.Event.Attach(Event.Unit.Detail.Health, _eventHealth, "EnKai.unit.Unit.Detail.Health")
    Command.Event.Attach(Event.Unit.Detail.HealthCap, _eventHealthCap, "EnKai.unit.Unit.Detail.HealthCap")
    Command.Event.Attach(Event.Unit.Detail.HealthMax, _eventHealthMax, "EnKai.unit.Unit.Detail.HealthMax")
    Command.Event.Attach(Event.Unit.Detail.Energy, _eventEnergy, "EnKai.unit.Unit.Detail.Energy")
    Command.Event.Attach(Event.Unit.Detail.EnergyMax, _eventEnergyMax, "EnKai.unit.Unit.Detail.EnergyMax")
	Command.Event.Attach(Event.Unit.Detail.Power, _eventPower, "EnKai.unit.Unit.Detail.Power")    
	Command.Event.Attach(Event.Unit.Detail.Mana, _eventMana, "EnKai.unit.Unit.Detail.Mana")    
	Command.Event.Attach(Event.Unit.Detail.Charge, _eventCharge, "EnKai.unit.Unit.Detail.Charge")    
    Command.Event.Attach(Event.Unit.Detail.Planar, _eventPlanar, "EnKai.unit.Unit.Detail.Planar")
	Command.Event.Attach(Event.Unit.Detail.Combo, _eventCombo, "EnKai.unit.Unit.Detail.Combo")

	EnKai.eventHandlers["EnKai.Unit"]["StatChange"], EnKai.events["EnKai.Unit"]["StatChange"] = Utility.Event.Create(addonInfo.identifier, "EnKai.Unit.StatChange")

end
