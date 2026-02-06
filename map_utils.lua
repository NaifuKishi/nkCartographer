-- map_utils.lua
-- Hilfsmodul für nkCartographer.
-- Enthält Utility-Funktionen für die Karte.
--
-- @module map_utils
-- @author NaifuKishi

local addonInfo, privateVars = ...

---------- init namespace ---------

local data                  = privateVars.data
local uiElements            = privateVars.uiElements
local internalFunc          = privateVars.internalFunc
local lang                  = privateVars.langTexts

---------- make global functions local ---------

local InspectUnitDetail 	= Inspect.Unit.Detail
local InspectItemDetail 	= Inspect.Item.Detail

-- @section Public Functions

-- Sammelt Artefakte und fügt sie der Karte hinzu.
--
-- @function internalFunc.CollectArtifact
-- @tparam table itemData Die Daten der Artefakte.
function internalFunc.CollectArtifact(itemData)
    if not nkCartGathering.artifactsData[data.lastZone] then nkCartGathering.artifactsData[data.lastZone] = {} end
    
    local unitDetails = InspectUnitDetail('player') 
    local coordRangeX = {unitDetails.coordX-2, unitDetails.coordX+2}
    local coordRangeZ = {unitDetails.coordZ-2, unitDetails.coordZ+2}
    
    for key, _ in pairs(itemData) do
        local details = InspectItemDetail(key)
        if details and string.find(details.category, "artifact") == 1 then
            local artifactType = string.upper(string.match(details.category, "artifact (.+)"))
            if artifactType == "FAE YULE" then artifactType = "FAEYULE" end
            local type = "TRACK.ARTIFACT." .. artifactType
            
            local knownPos = false
            for _, info in pairs(nkCartGathering.artifactsData[data.lastZone]) do
                if info.coordX >= coordRangeX[1] and info.coordX <= coordRangeX[2] and
                   info.coordZ >= coordRangeZ[1] and info.coordZ <= coordRangeZ[2] then
                    knownPos = true
                    break
                end
            end
            
            if not knownPos then
                local thisData = {
                    id = string.match(type, "TRACK.(.+)") .. LibEKL.Tools.UUID(),
                    type = type,
                    descList = {},
                    coordX = unitDetails.coordX,
                    coordY = unitDetails.coordY,
                    coordZ = unitDetails.coordZ
                }
                nkCartGathering.artifactsData[data.lastZone][thisData.id] = thisData
            end
        end
    end
end