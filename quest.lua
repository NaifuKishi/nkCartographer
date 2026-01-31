local addonInfo, privateVars = ...

---------- init namespace ---------

local data        	= privateVars.data
local uiElements  	= privateVars.uiElements
local internalFunc  = privateVars.internalFunc
local events     	= privateVars.events
local lang        	= privateVars.langTexts

---------- init variables ---------

data.minimapQuestList    = {}  -- map element list of quests identified through minimap unknown entries
data.minimapIdToQuest    = {}  -- maps the amp element id to the quest id
data.currentQuestList    = {}  -- map element list of current quests
data.missingQuestList    = {}  -- map element list of missing quests

---------- init local variables ---------

local questZone           = nil -- current quest zone
local completedList       = nil -- list of completed quests

local objectivesCount		= {}  -- number of incomplete objectives per quest

local _unknownCache			= {}  -- cache of unknown elements added before questbase is initialized
local _unknownIdentified	= {}  -- list of unknown names already identified
local _npcCache				= {}  -- list of identified NPC and their quests

---------- make global functions local ---------

local inspectQuestDetail   	= Inspect.Quest.Detail
local inspectQuestComplete 	= Inspect.Quest.Complete
local inspectQuestList     	= Inspect.Quest.List
local inspectSystemSecure	= Inspect.System.Secure
local inspectTimeFrame		= Inspect.Time.Frame
local inspectSystemWatchdog	= Inspect.System.Watchdog

local stringSub             = string.sub
local stringFormat          = string.format
local stringFind            = string.find

local questQueryByKey       = LibQB.query.byKey
local questQueryByNPC       = LibQB.query.NPC
local questGetZoneByQuest	= LibQB.query.getZoneByQuest
local questGetQuestsByZone	= LibQB.query.getQuestsByZone
local questNPCByName		= LibQB.query.NPCByName
local questNPCQuests		= LibQB.query.NPCQuests
local questIsInit			= LibQB.query.isInit

local LibMapMapGetZoneByName		= LibMap.map.GetZoneByName
local LibMapMapGetZoneDetails	= LibMap.map.GetZoneDetails

local LibMapTableIsMember 		= LibEKL.Tools.Table.IsMember
local LibMapTableGetTablePos		= LibEKL.Tools.Table.GetTablePos
local LibMapCoroutinesAdd		= LibEKL.Coroutines.Add
local LibMapStringsSplit			= LibEKL.strings.split
local LibMapEventsAddInsecure	= LibEKL.Events.AddInsecure

---------- local function block ---------

local function isCurrentWorld (details)

	-- maybe at some point find a solution for categoryName = "Profession"

	if data.currentWorld == nil then return false end
	
	if details.categoryName ~= nil then				
		local zoneId, zoneDetails = LibMapMapGetZoneByName(details.categoryName)
		
		if zoneDetails == nil then
			zoneId = questGetZoneByQuest(details.id)
			zoneDetails = LibMapMapGetZoneDetails (zoneID)
		else
			--print (zoneDetails.map)
		end
		
		if zoneDetails ~= nil and zoneDetails.map == data.currentWorld then return true end
	end  

	if details.tag ~= nil then
		local tagList = LibMapStringsSplit(details.tag, " ")
		if LibMapTableIsMember(tagList, "daily") or LibMapTableIsMember(tagList, "weekly") or LibMapTableIsMember(tagList, "monthly") then
			local lvl, dbQuests = questQueryByKey(details.id)
			if lvl == nil then return false end
			if lvl <= 50 and data.currentWorld == "world1" then return true end
			if lvl <= 60 and data.currentWorld == "world2" then return true end  
			if lvl <= 65 and data.currentWorld == "world3" then return true end
			if lvl <= 70 and data.currentWorld == "world4" then return true end
		end
	end

	return false

end

local function processObjectives (key, questName, domain, objectiveList, isComplete, hasAdd, addInfo)		

	if nkDebug then nkDebug.logEntry (addonInfo.identifier, "processObjectives 1", questName, objectiveList) end

	if nkDebug then nkDebug.logEntry (addonInfo.identifier, "processObjectives 2", questName, addInfo) end
	
	local lastIndicator

	for idx1 = 1, #objectiveList, 1 do

		if objectiveList[idx1] ~= nil then
			if objectiveList[idx1].complete ~= true then

				local indicators = objectiveList[idx1].indicator
				if not indicators then indicators = lastIndicator end

				if indicators ~= nil then
					for idx2 = 1, #indicators, 1 do
						if isComplete and idx2 > 1 then break end

						local id = "q-" .. key .. "-o" .. idx1 .. "-i" .. idx2

						local thisEntry = { id = id, type = "QUEST.POINT", descList = { objectiveList[idx1].description }, 
											title = questName,
											coordX = indicators[idx2].x, coordY = indicators[idx2].y, coordZ = indicators[idx2].z }

						local isCarnage = false
						if stringFind(questName, lang.questCarnage) then							
							thisEntry.type = "QUEST.CARNAGEPOINT"
							isCarnage = true
						end

						if isComplete == true then
							thisEntry.type = "QUEST.RETURN"	
						elseif indicators[idx2].radius and indicators[idx2].radius <=30 then
							if isCarnage then							
								thisEntry.type = "QUEST.CARNAGEPOINT"
							else
								thisEntry.type = "QUEST.POINT"
							end
						elseif indicators[idx2].radius and indicators[idx2].radius > 30 then 
							if isCarnage then					
								thisEntry.type = "QUEST.CARNAGE"
							else
								thisEntry.type = "QUEST.AREA"
							end
							thisEntry.radius = indicators[idx2].radius
						elseif domain == "area" then
							thisEntry.type = "QUEST.ZONEEVENT"
						end

						if nkDebug then nkDebug.logEntry (addonInfo.identifier, stringFormat("processObjectives 3-%d", idx2), questName, thisEntry) end

						data.currentQuestList[key][id] = true
						addInfo[id] = thisEntry
						hasAdd = true

					end -- for idx2
				end -- indicators?

				lastIndicator = indicators

			elseif lastIndicator == nil then
				lastIndicator = objectiveList[idx1].indicator
			end			
		end -- complete?
	end -- idx1

	return hasAdd, addInfo

end

local function processQuests (questList, addFlag)

	local addInfo, removeInfo = {}, {}
	local hasAdd, hasRemove = false, false

	local flag, questDetails = pcall(inspectQuestDetail, questList)

	if flag then

		for key, details in pairs(questDetails) do

			if nkDebug then 
				nkDebug.logEntry (addonInfo.identifier, "-------------------", "") 
				nkDebug.logEntry (addonInfo.identifier, "processQuests", details.name, details) 
				nkDebug.logEntry (addonInfo.identifier, "processQuests", addFlag) 
				nkDebug.logEntry (addonInfo.identifier, "processQuests", isCurrentWorld(details)) 
			end
			
			if addFlag == true or isCurrentWorld(details) == true then
			
				-- check if quest was identified through the minimap unknown entries
				
				if data.minimapQuestList[key] ~= nil then
					uiElements.mapUI:RemoveElement(data.minimapQuestList[key].id)
				end

				-- check if quest is part of the missing quest list (in case of accepting a new quest)

				if data.missingQuestList[key] ~= nil then
					for _, details in pairs (data.missingQuestList[key]) do removeInfo[details.id] = true end
					hasRemove = true
				end
					
				-- check for quest objectives change

				local objectives = details.objective
				local incompleteCount = 0
				
				if data.currentQuestList[key] ~= nil then 
					for key, _ in pairs(data.currentQuestList[key]) do removeInfo[key] = true end
					hasRemove = true
				end
				
				data.currentQuestList[key] = {}

				hasAdd, addInfo = processObjectives (key, details.name, details.domain, objectives, details.complete, hasAdd, addInfo)
			end -- if
		end -- for
	end
  
  	if hasRemove == true then internalFunc.UpdateMap (removeInfo, "remove") end
  	if hasAdd == true then 
		if nkDebug then nkDebug.logEntry (addonInfo.identifier, "processQuests", "hasAdd", addInfo) end
		internalFunc.UpdateMap (addInfo, "add", "processQuests") 
	end

end

local function isQuestComplete(questId)

  if completedList[questId] ~= nil then return true end
  
  local abbrev = stringFormat("%sxxxxxxxx", stringSub(questId, 1, 8))
  if completedList[abbrev] ~= nil then return true end
  
  data.minimapQuestList[questId] = nil 
        
  return false

end

local function processMissingZoneQuests (questList)

	for _, questId in pairs (questList) do

		if isQuestComplete(questId) == false then

			local lvl, libDetails = questQueryByKey(questId, false)

			if libDetails ~= nil and libDetails.domain ~= "ia" and libDetails.giver ~= nil then

				local npc = questQueryByNPC(libDetails.giver)

				if npc.x ~= nil then

					local flag, detailsList = pcall(inspectQuestDetail, {[questId]=true})

					if flag then
						for key, details in pairs(detailsList) do   
							local id = "mq-" .. key
							local qType = "QUEST.MISSING"
							if libDetails.type ~= nil and LibMapTableGetTablePos(libDetails.type, 3) ~= -1 then qType = "QUEST.DAILY" end

							local thisEntry = { id = id, type = qType, descList = { details.summary }, title = details.name, coordX = npc.x, coordY = npc.y, coordZ = npc.z }
							data.missingQuestList[key] = {}
							table.insert(data.missingQuestList[key], thisEntry)

							-- only add to map if not current quest
							-- still need it in data.missingQuestList for abandon

							if data.currentQuestList[key] == nil then uiElements.mapUI:AddElement(thisEntry) end

						end -- for detailsList
					end 
				end -- if npc.x      
			end  -- if
		end -- quest not complete
	end -- for

end

local function findMissingRun ()

  if completedList == nil then
    if inspectSystemSecure() == false then Command.System.Watchdog.Quiet() end
    local flag
    flag, completedList = pcall (inspectQuestComplete)
  
    if flag == false then
      print ("problem getting list of completed quests in delayed function")
      return
    end
  end
  
  local list = questGetQuestsByZone(data.lastZone)
  if list == nil or #list == 0 then return end -- not quests in this zone
  
  local questList = {}
  local subList = {}

  -- build sub lists of quests for co-routine
  
  for _, questId in pairs (list) do
    table.insert(subList, questId)
    if #subList == 10 then
      table.insert(questList, subList)
      subList = {}
    end
  end 
  
  if #subList > 0 then table.insert(questList, subList) end
  
  local missingCoRoutine = coroutine.create( function ()
    for idx = 1, #questList, 1 do
      processMissingZoneQuests(questList[idx])
      coroutine.yield(idx)
    end
  end)
      
  LibMapCoroutinesAdd ({ func = missingCoRoutine, counter = #questList, active = true })

end

local function checkUnknown(npcName, thisData)

	local retFlag = false
	local quests = {}

	if _npcCache[npcName] == nil then
		_npcCache[npcName] = questNPCByName (npcName)

		if _npcCache[npcName] == nil then return retFlag end

		for idx = 1, #_npcCache[npcName], 1 do
			local npcQuestList = questNPCQuests(_npcCache[npcName][idx])

			--dump (npcQuestList)
			
			if npcQuestList ~= nil then
				for _, questId in pairs (npcQuestList) do
					table.insert(quests, questId)
				end
			end
		end
		
	end

	if quests ~= nil and inspectSystemWatchdog() >= 0.1 then
		local flag, questDetailList = pcall(inspectQuestDetail, quests)

		if flag then

			for _, questInfo in pairs(questDetailList) do

				if questInfo.complete ~= true then

					_unknownIdentified[npcName] = questInfo.id
					if questInfo.tag ~= nil and stringFind(questInfo.tag, "pvp daily") ~= nil then
						thisData.type = "QUEST.PVPDAILY"
					elseif questInfo.tag ~= nil and (stringFind(questInfo.tag, "daily") ~= nil or stringFind(questInfo.tag, "weekly") ~= nil) then
						thisData.type = "QUEST.DAILY"
					else
						thisData.type = "QUEST.START"
					end

					thisData.title = questInfo.name

					local tempDesc = questInfo.summary or questInfo.description
					if tempDesc ~= nil then thisData.descList = LibMapStringsSplit(tempDesc, "\n") end

					thisData.name = questInfo.name

					uiElements.mapUI:AddElement(thisData)
					data.minimapQuestList[questInfo.id] = thisData
					data.minimapIdToQuest[thisData.id] = id

					if data.missingQuestList[id] ~= nil then
						for id, details in pairs(data.missingQuestList[id]) do
							uiElements.mapUI:RemoveElement({[id] = true})
						end
					end
				end
			end          
		end
	end
	
	return retFlag

end

---------- addon internal function block ---------

function internalFunc.GetQuests() 
	--print ("get quests")
	processQuests (inspectQuestList()) 
end
function events.QuestAccept (_, data) 
	--print ("quest accept")
	processQuests (data, true) 
end
function events.QuestChange (_, data) 
	--print ("change quests")
	processQuests (data, false) 
end
  
function events.QuestAbandon (_, updateData)
  
  local removeInfo, addInfo = {}, {}
  local hasRemove, hasAdd = false, false
  
  for key, details in pairs(updateData) do
  
    if data.currentQuestList[key] ~= nil then
    
      for id, _ in pairs(data.currentQuestList[key]) do
        removeInfo[id] = true
        hasRemove = true
      end
      
      data.currentQuestList[key] = nil
      
      -- minimap info wiederherstellen falls verfügbar
      
      if data.minimapQuestList[key] ~= nil then
        addInfo[key], hasAdd = data.minimapQuestList[key], true
      end

      -- missing info wiederherstellen falls verfügbar 
      
      if data.missingQuestList[key] ~= nil then
        for id, details in pairs(data.missingQuestList[key]) do
          addInfo[id], hasAdd = details, true
        end
      end
      
    end
  end
  
  if hasRemove == true then internalFunc.UpdateMap (removeInfo, "remove") end
  if hasAdd == true then internalFunc.UpdateMap (addInfo, "add") end

end

function events.QuestComplete (_, updateData)

  local removeInfo = {}
  local hasRemove = false
  
  for key, details in pairs(updateData) do
    if data.currentQuestList[key] ~= nil then
      for id, _ in pairs(data.currentQuestList[key]) do
        removeInfo[id] = true
        hasRemove = true
      end
      
      data.currentQuestList[key] = nil
      
	  if completedList == nil then completedList = {} end
	  
      completedList[key] = true
      data.missingQuestList[key] = nil
    end
  end
    
  if hasRemove == true then internalFunc.UpdateMap (removeInfo, "remove") end

end

function internalFunc.FindMissing ()

  -- check aktuelle quests berücksichtigen

  if data.lastZone == nil then return end
  if questZone == data.lastZone then return end
  
  local flag = true
   
  if completedList == nil then   
    if inspectSystemSecure() == false then Command.System.Watchdog.Quiet() end
    flag, _ = pcall (inspectQuestComplete) -- i don't care about the result as the first call is normally not complete anyway
  end
  
  if flag == true then
    LibMapEventsAddInsecure(findMissingRun, inspectTimeFrame(), 5)
    questZone = data.lastZone
  else
    print ("problem getting initial list of completed quests")
  end
  
end

function internalFunc.CheckUnknownForQuest (details) 

	if details.name == nil then return false end
	if _unknownIdentified[details.name] ~= nil then return true end
	_unknownCache[details.name] = details

	if questIsInit() == false then return false end
	
	local retFlag = false
	
	if inspectSystemSecure() == false then Command.System.Watchdog.Quiet() end

	for npcName, thisData in pairs (_unknownCache) do
		retFlag = checkUnknown(npcName, thisData)
	end  

	_unknownCache = {}

	return retFlag

end

function internalFunc.IsKnownMinimapQuest (id)

  if data.minimapIdToQuest[id] == nil then return false end
  
  return true

end 