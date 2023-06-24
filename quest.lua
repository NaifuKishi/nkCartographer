local addonInfo, privateVars = ...

---------- init namespace ---------

local data        = privateVars.data
local uiElements  = privateVars.uiElements
local _internal   = privateVars.internal
local _events     = privateVars.events

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

local oInspectQuestDetail   = Inspect.Quest.Detail
local oInspectQuestComplete = Inspect.Quest.Complete
local oInspectQuestList     = Inspect.Quest.List
local oInspectSystemSecure	= Inspect.System.Secure
local oInspectTimeFrame		= Inspect.Time.Frame
local oInspectSystemWatchdog= Inspect.System.Watchdog
local oSSub                 = string.sub
local oSFormat              = string.format
local oSFind                = string.find
local qByKey                = nkQuestBase.query.byKey
local qByNPC                = nkQuestBase.query.NPC
local qNPCQuests            = nkQuestBase.query.NPCQuests

---------- local function block ---------

local function _fctIsCurrentWorld (details)

	--print ('_fctIsCurrentWorld')
	--print (data.currentWorld)	

	if data.currentWorld == nil then return false end
	
	if details.categoryName ~= nil then
		--if details.name == 'Nichts bleibt verloren' then print (details.categoryName) end

		--dump(details)
	
		local zoneId, zoneDetails = EnKai.map.GetZoneByName(details.categoryName)
		
		--print (zoneId, zoneDetails)
		
		if zoneDetails == nil then
			zoneId = nkQuestBase.query.getZoneByQuest(details.id)
			zoneDetails = EnKai.map.GetZoneDetails (zoneID)
		else
			--print (zoneDetails.map)
		end
		
		if zoneDetails ~= nil and zoneDetails.map == data.currentWorld then return true end
	end  

	if details.tag ~= nil then
		local tagList = EnKai.strings.split(details.tag, " ")
		if EnKai.tools.table.isMember(tagList, "daily") or EnKai.tools.table.isMember(tagList, "weekly") or EnKai.tools.table.isMember(tagList, "monthly") then
			local lvl, dbQuests = qByKey(details.id)
			if lvl == nil then return false end
			if lvl <= 50 and data.currentWorld == "world1" then return true end
			if lvl <= 60 and data.currentWorld == "world2" then return true end  
			if lvl <= 65 and data.currentWorld == "world3" then return true end
			if lvl <= 70 and data.currentWorld == "world4" then return true end
		end
	end

	return false

end

local function _fctProcessObjectives (key, questName, domain, objectiveList, isComplete, hasAdd, addInfo)

	if nkDebug then nkDebug.logEntry (addonInfo.identifier, "_fctProcessObjectives", questName, objectiveList) end

	for idx1 = 1, #objectiveList, 1 do

		if objectiveList[idx1] ~= nil and objectiveList[idx1].complete ~= true then

			local indicators = objectiveList[idx1].indicator

			if indicators ~= nil then
				for idx2 = 1, #indicators, 1 do
					local id = "q-" .. key .. "-o" .. idx1 .. "-i" .. idx2
					local thisEntry = { id = id, type = "QUEST.POINT", descList = { objectiveList[idx1].description }, 
										title = questName,
										coordX = indicators[idx2].x, coordY = indicators[idx2].y, coordZ = indicators[idx2].z }

					if isComplete == true then
						thisEntry.type = "QUEST.RETURN"	
					elseif indicators[idx2].radius and indicators[idx2].radius <=30 then 
						thisEntry.type = "QUEST.POINT"
					elseif indicators[idx2].radius and indicators[idx2].radius > 30 then 
						thisEntry.type = "QUEST.AREA"
						thisEntry.radius = indicators[idx2].radius
					elseif domain == "area" then
						thisEntry.type = "QUEST.ZONEEVENT"
					end

					data.currentQuestList[key][id] = true
					addInfo[id] = thisEntry
					hasAdd = true

				end -- for idx2
			end -- indicators?
		end -- complete?
	end -- idx1

	return hasAdd, addInfo

end

local function _fctProcessQuests (questList, addFlag)

  local addInfo, removeInfo = {}, {}
  local hasAdd, hasRemove = false, false

  local flag, questDetails = pcall(oInspectQuestDetail, questList)
  
  if flag then
  
    for key, details in pairs(questDetails) do
      
      if addFlag == true or _fctIsCurrentWorld(details) == true then
      
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
		
        hasAdd, addInfo = _fctProcessObjectives (key, details.name, details.domain, objectives, details.complete, hasAdd, addInfo)
          
      end -- if
    end -- for
  end
  
  if hasRemove == true then _internal.UpdateMap (removeInfo, "remove") end
  if hasAdd == true then _internal.UpdateMap (addInfo, "add", "_fctProcessQuests") end

end

local function _fctIsQuestComplete(questId)

  if completedList[questId] ~= nil then return true end
  
  local abbrev = oSFormat("%sxxxxxxxx", oSSub(questId, 1, 8))
  if completedList[abbrev] ~= nil then return true end
  
  data.minimapQuestList[questId] = nil 
        
  return false

end

local function _fctProcessMissingZoneQuests (questList)

	for _, questId in pairs (questList) do

		if _fctIsQuestComplete(questId) == false then

			local lvl, libDetails = qByKey(questId, false)

			if libDetails ~= nil and libDetails.domain ~= "ia" and libDetails.giver ~= nil then

				local npc = qByNPC(libDetails.giver)

				if npc.x ~= nil then

					local flag, detailsList = pcall(oInspectQuestDetail, {[questId]=true})

					if flag then
						for key, details in pairs(detailsList) do   
							local id = "mq-" .. key
							local qType = "QUEST.MISSING"
							if libDetails.type ~= nil and EnKai.tools.table.getTablePos(libDetails.type, 3) ~= -1 then qType = "QUEST.DAILY" end

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

local function _fctFindMissingRun ()

  if completedList == nil then
    if oInspectSystemSecure() == false then Command.System.Watchdog.Quiet() end
    local flag
    flag, completedList = pcall (oInspectQuestComplete)
  
    if flag == false then
      print ("problem getting list of completed quests in delayed function")
      return
    end
  end
  
  local list = nkQuestBase.query.getQuestsByZone(data.lastZone)
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
      _fctProcessMissingZoneQuests(questList[idx])
      coroutine.yield(idx)
    end
  end)
      
  EnKai.coroutines.add ({ func = missingCoRoutine, counter = #questList, active = true })

end

local function _fctCheckUnknown(npcName, thisData)

	local retFlag = false
	local quests = {}

	if _npcCache[npcName] == nil then
		_npcCache[npcName] = nkQuestBase.query.NPCByName (npcName)

		if _npcCache[npcName] == nil then return retFlag end

		for idx = 1, #_npcCache[npcName], 1 do
			local npcQuestList = nkQuestBase.query.NPCQuests(_npcCache[npcName][idx])

			--dump (npcQuestList)
			
			if npcQuestList ~= nil then
				for _, questId in pairs (npcQuestList) do
					table.insert(quests, questId)
				end
			end
		end
		
	end

	if quests ~= nil and oInspectSystemWatchdog() >= 0.1 then
		local flag, questDetailList = pcall(oInspectQuestDetail, quests)

		if flag then

			for _, questInfo in pairs(questDetailList) do

				if questInfo.complete ~= true then

					--print (questInfo.id)

					_unknownIdentified[npcName] = questInfo.id
					if questInfo.tag ~= nil and oSFind(questInfo.tag, "pvp daily") ~= nil then
						thisData.type = "QUEST.PVPDAILY"
					elseif questInfo.tag ~= nil and (oSFind(questInfo.tag, "daily") ~= nil or oSFind(questInfo.tag, "weekly") ~= nil) then
						thisData.type = "QUEST.DAILY"
					else
						thisData.type = "QUEST.START"
					end

					--print (questInfo.name)
					--print (thisData.type)

					thisData.title = questInfo.name

					local tempDesc = questInfo.summary or questInfo.description
					if tempDesc ~= nil then thisData.descList = EnKai.strings.split(tempDesc, "\n") end

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

function _internal.GetQuests() _fctProcessQuests (oInspectQuestList()) end
function _events.QuestAccept (_, data) _fctProcessQuests (data, true) end
function _events.QuestChange (_, data) _fctProcessQuests (data, false) end
  
function _events.QuestAbandon (_, updateData)
  
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
  
  if hasRemove == true then _internal.UpdateMap (removeInfo, "remove") end
  if hasAdd == true then _internal.UpdateMap (addInfo, "add") end

end

function _events.QuestComplete (_, updateData)

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
    
  if hasRemove == true then _internal.UpdateMap (removeInfo, "remove") end

end

function _internal.FindMissing ()

  -- check aktuelle quests berücksichtigen

  if data.lastZone == nil then return end
  if questZone == data.lastZone then return end
  
  local flag = true
   
  if completedList == nil then   
    if oInspectSystemSecure() == false then Command.System.Watchdog.Quiet() end
    flag, _ = pcall (oInspectQuestComplete) -- i don't care about the result as the first call is normally not complete anyway
  end
  
  if flag == true then
    EnKai.events.addInsecure(_fctFindMissingRun, oInspectTimeFrame(), 5)
    questZone = data.lastZone
  else
    print ("problem getting initial list of completed quests")
  end
  
end

function _internal.CheckUnknownForQuest (details) 

	if details.name == nil then return false end
	if _unknownIdentified[details.name] ~= nil then return true end
	_unknownCache[details.name] = details

	if nkQuestBase.query.isInit() == false then return false end
	
	local retFlag = false
	
	if oInspectSystemSecure() == false then Command.System.Watchdog.Quiet() end

	for npcName, thisData in pairs (_unknownCache) do
		retFlag = _fctCheckUnknown(npcName, thisData)
	end  

	_unknownCache = {}

	return retFlag

end

function _internal.IsKnownMinimapQuest (id)

  if data.minimapIdToQuest[id] == nil then return false end
  
  return true
  
--  uiElements.mapUI:AddElement(data.minimapQuestList[_unknownIdentified[details.name]])
--  
--  return true

end 