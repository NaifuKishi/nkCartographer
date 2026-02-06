-- map_quests.lua
-- Modul für die Verwaltung von Quests und Quest-Markern in nkCartographer.
--
-- @module map_quests
-- @author NaifuKishi

local addonInfo, privateVars = ...

---------- init namespace ---------

local data                  = privateVars.data
local uiElements            = privateVars.uiElements
local internalFunc          = privateVars.internalFunc

-- @section Public Functions

-- Zeigt Quests auf der Karte an oder versteckt sie.
--
-- @function internalFunc.ShowQuest
-- @tparam boolean flag Ob die Quests angezeigt werden sollen.
function internalFunc.ShowQuest(flag)
    if flag and nkCartSetup.showQuest then
        internalFunc.GetQuests()
    else
        -- Entfernt alle Quest-Marker von der Karte
        if data.currentQuestList then
            for questId, mappoints in pairs(data.currentQuestList) do
                internalFunc.UpdateMap(mappoints, "remove")
            end
        end
        
        internalFunc.UpdateMap(data.minimapQuestList, "remove")
        
        if data.missingQuestList then
            for questId, mappoints in pairs(data.missingQuestList) do
                internalFunc.UpdateMap(mappoints, "remove")
            end
        end
        
        -- Zurücksetzen der Quest-Listen
        data.currentQuestList = {}
        data.minimapQuestList = {}
        data.minimapIdToQuest = {}
        data.missingQuestList = {}
    end
end