local addonInfo, privateVars = ...

---------- init namespace ---------

local data                  = privateVars.data
local uiElements            = privateVars.uiElements
local internalFunc          = privateVars.internalFunc

---------- addon internal function block ---------

function internalFunc.ShowQuest(flag)
    
    if flag == true and nkCartSetup.showQuest == true then
        internalFunc.GetQuests()
    else
        if data.currentQuestList ~= nil then
            for questId, mappoints in pairs(data.currentQuestList) do
                internalFunc.UpdateMap(mappoints, "remove")
            end
        end
        
        internalFunc.UpdateMap(data.minimapQuestList, "remove")
        
        if data.missingQuestList ~= nil then
            for questId, mappoints in pairs(data.missingQuestList) do
                internalFunc.UpdateMap(mappoints, "remove")
            end
        end
        
        data.currentQuestList = {}
        data.minimapQuestList = {}
        data.minimapIdToQuest = {}
        data.missingQuestList = {}
    end
end