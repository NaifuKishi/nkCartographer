local addonInfo, privateVars = ...

---------- init namespace ---------

if not nkQuestBase then nkQuestBase = {} else return end

privateVars.internal    = {}

local _internal		= privateVars.internal

---------- init local variables ---------

local packageList = {}
local loadedPackages = {}
local init = false
local forceUpdate
local lastUpdate
local _db = { quests = {} }

---------- init variables ---------

nkQuestBase = {
	updateDate = '29.11.2016',
	query = {}
}

--privateVars.lang = Inspect.System.Language()

---------- local function block ---------

local function _fctLoader()

	if privateVars.itemLoader ~= nil and privateVars.itemLoader['all'] ~= nil then
		privateVars.itemLoader['all']()
		privateVars.itemLoader['all'] = nil
	end

	if #packageList == 0 then return end

	if forceUpdate ~= true then
		if lastUpdate == nil then
			lastUpdate = Inspect.Time.Real()
			forceUpdate = true
		else
			local tmpTime = Inspect.Time.Real()
			if EnKai.tools.math.round((tmpTime - lastUpdate), 1) > .5 then forceUpdate = true end
		end
	end

	if forceUpdate == true then

		local thisPackage = packageList[1]

		if privateVars.questLoader[thisPackage] ~= nil then

			privateVars.questLoader[thisPackage]()
			privateVars.questLoader[thisPackage] = function () end

			privateVars.zoneLoader[thisPackage]()
			privateVars.zoneLoader[thisPackage] = function () end

			privateVars.npcLoader[thisPackage]()
			privateVars.npcLoader[thisPackage] = function () end

			privateVars.npcquestLoader[thisPackage]()
			privateVars.npcquestLoader[thisPackage] = function () end

			loadedPackages[thisPackage] = true

		else  
			EnKai.tools.error.display ("nkQuestDbase", "Cannot find questLoader for package " .. thisPackage, 1)	  
		end

		table.remove(packageList, 1)

		lastUpdate = Inspect.Time.Real()
		forceUpdate = false
	end

	if #packageList == 0 then
		Command.Event.Detach(Event.System.Update.Begin, nil, "nkQuestBase.System.Update.Begin")

		privateVars.questLoader = nil
		privateVars.zoneLoader = nil
		privateVars.itemLoader = nil
		privateVars.npcLoader = nil

		init = true
	end

end

---------- addon internal function block ---------

function _internal.loadNPCQuests (npcTable)

	if _db.npcQuests == nil then _db.npcQuests = {} end

	for k, v in pairs(npcTable) do
		_db.npcQuests[k] = v
	end

end

function _internal.loadItems (itemTable)

	if _db.questItems == nil then _db.questItems = {} end

	for k, v in pairs(itemTable) do
		_db.questItems[k] = v;
	end

end

function _internal.loadNPCs (npcTable)

	if _db.npc == nil then _db.npc = {} end

	for k, v in pairs(npcTable) do
		_db.npc[k] = v
	end

end

function _internal.loadZones (zoneTable)

	if _db.byZone == nil then _db.byZone = {} end

	for k, v in pairs(zoneTable) do
		if _db.byZone[k] == nil then
			_db.byZone[k] = v
		else
			for idx = 1, #v, 1 do
				table.insert(_db.byZone[k], v[idx])
			end
		end
	end

end

function _internal.loadQuests (questTable)

	for k, v in pairs(questTable) do
		local lvl = v.lvl
		v.lvl = nil
		if _db.quests[lvl] == nil then _db.quests[lvl] = {} end
		_db.quests[lvl][k] = v
	end

end

---------- lib function block ---------

function nkQuestBase.loadPackage(packageName)

	for idx = 1, #packageList, 1 do
		if packageList[idx] == packageName then return end
	end

	table.insert(packageList, packageName)

end

function nkQuestBase.query.isInit() return init end

function nkQuestBase.query.isPackageLoaded(packageName)

	if loadedPackages[packageName] == true then return true end
	
	return false

end

function nkQuestBase.query.getTypeText (queryType)

	local typeList = {"Kill", "Event Objective","Daily", "Collect", "Breadcrumb", "Usable", "World Event", "Talk", "Carnage", "Use Item", "Rift", "Boss Fight", "Deliver",
							"Use Ability", "Discover", "Area Quest", "Zone Event", "Instance", "Destroy", "Escort", "Mayhem Zone Event", "Defend", "Subdue", "Quest", "Work Order"};

	if type(queryType) ~= 'number' then return "UNKNOWN_TYPE" end

	return typeList[queryType]

end

function nkQuestBase.query.getZoneByQuest (questID)
	
	for zoneID, zoneQuests in pairs(_db.byZone) do
		for _, key in pairs (zoneQuests) do
			if key == questID then return zoneID end
		end
	end

	return "UKNOWN_ZONE"

end

function nkQuestBase.query.IsQuestInZone (zoneID, questID)

	for k, v in pairs(_db.byZone[zoneID]) do
		if v == questID then return true end
	end
	
	return false

end

function nkQuestBase.query.getQuestsByZone(zoneID)

	return _db.byZone[zoneID]

end

function nkQuestBase.query.byKey (questID, zoneFlag)

	for lvl, list in pairs(_db.quests) do
		if list[questID] ~= nil then
			if zoneFlag == true and list[questID].zoneId == nil then
				list[questID].zoneId = nkQuestBase.query.getZoneByQuest (questID)
			end
			return lvl, list[questID] 
		end
	end
	
	return nil, nil

end

function nkQuestBase.query.questItemByKey (itemKey)

	return _db.questItems[itemKey]

end

function nkQuestBase.query.NPC (unitID)

	return _db.npc[unitID]

end

function nkQuestBase.query.NPCByName (checkName)

	local lang = EnKai.tools.lang.getLanguageShort()

	local retList = {}

	for id, details in pairs(_db.npc) do
		if details[lang] == checkName then table.insert(retList, id) end
	end

	if #retList > 0 then
		return retList
	else
		return nil
	end
  
end

function nkQuestBase.query.NPCQuests(unitID)

  return _db.npcQuests[unitID]

end

-------------------- STARTUP EVENTS --------------------

Command.Event.Attach(Event.System.Update.Begin, _fctLoader, "nkQuestBase.System.Update.Begin")