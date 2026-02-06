-- map_elements.lua
-- Modul für die Verwaltung dynamischer Kartenelemente in nkCartographer.
-- Verantwortlich für POIs, seltene Mobs, Sammelressourcen und Wegpunkte.
--
-- @module map_elements
-- @author NaifuKishi

local addonInfo, privateVars = ...

---------- init namespace ---------

local data                  = privateVars.data
local uiElements            = privateVars.uiElements
local internalFunc          = privateVars.internalFunc
local lang                  = privateVars.langTexts

---------- make global functions local ---------

local LibEKLGetLanguage      = LibEKL.Tools.Lang.GetLanguage
local LibEKLGetLanguageShort = LibEKL.Tools.Lang.GetLanguageShort
local LibEKLTableCopy       = LibEKL.Tools.Table.Copy
local LibEKLUUID            = LibEKL.Tools.UUID

-- @section Local Functions

-- Verarbeitet die Daten eines seltenen Mobs und fügt ihn der Karte hinzu.
--
-- @function _processRareData
-- @tparam string id Die ID des seltenen Mobs.
-- @tparam number counter Der Zähler für die Position des Mobs.
-- @tparam string name Der Name des Mobs.
-- @tparam number x Die X-Koordinate.
-- @tparam number z Die Z-Koordinate.
-- @tparam string comment Ein optionaler Kommentar.
local function _processRareData(id, counter, name, x, z, comment)
    local thisId = "rare-" .. id .. "-" .. counter
    local thisData = { id = thisId, type = "UNIT.RARE", descList = {name}, coordX = x, coordZ = z }
    table.insert(thisData.descList, "Rare Mob")
    if comment ~= "" then table.insert(thisData.descList, comment) end
    uiElements.mapUI:AddElement(thisData)
    data._rareData[thisId] = thisData
end

-- Lädt die Daten seltener Mobs aus RareDar.
--
-- @function _getRareDarData
local function _getRareDarData()
    if not data._zoneDetails then return end
    data._rareData = {}
    for idx = 1, #RareDar.data, 1 do
        if RareDar.data[idx].zone[LibEKLGetLanguage()] == data._zoneDetails.name then
            local mobs = RareDar.data[idx].mobs
            for idx2 = 1, #mobs, 1 do
                if not data.rareMobKilled[mobs[idx2].achv[LibEKLGetLanguage()]] then
                    local posList = mobs[idx2].pos
                    for idx3 = 1, #posList, 1 do
                        _processRareData(mobs[idx2].id, idx3, mobs[idx2].targ[LibEKLGetLanguage()], posList[idx3][1], posList[idx3][2], mobs[idx2].comment[LibEKLGetLanguage()])
                    end
                end
            end
        end
    end
end

-- Lädt die Daten seltener Mobs aus RareTracker.
--
-- @function _getRareTrackerData
local function _getRareTrackerData()
    local zoneData = Inspect.Addon.Detail('RareTracker').data.moblocs[data.lastZone]
    if not zoneData then return end
    local mobs = zoneData.mobs
    data._rareData = {}
    for idx = 1, #mobs, 1 do
        if not data.rareMobKilled[mobs[idx].n[LibEKLGetLanguageShort()]] then
            local posList = mobs[idx].loc
            for idx2 = 1, #posList, 1 do
                _processRareData(mobs[idx].n[LibEKLGetLanguageShort()], idx2, mobs[idx].n[LibEKLGetLanguageShort()], posList[idx2].x, posList[idx2].z, "")
            end
        end
    end
end

-- Verfolgt Sammelressourcen und fügt sie der entsprechenden Liste hinzu.
--
-- @function _trackGathering
-- @tparam table details Die Details der Ressource.
local function _trackGathering(details)
    if not nkCartGathering.gatheringData[data.lastZone] then nkCartGathering.gatheringData[data.lastZone] = {} end
    if not nkCartGathering.artifactsData[data.lastZone] then nkCartGathering.artifactsData[data.lastZone] = {} end
    
    for key, existingData in pairs(nkCartGathering.gatheringData[data.lastZone]) do
        if existingData.coordX == details.coordX and existingData.coordZ == details.coordZ then return end
    end

    local thisData = LibEKLTableCopy(details)
    thisData.type = "TRACK" .. string.match(thisData.type, "RESOURCE(.+)")
    local thisType = string.match(details.type, "RESOURCE%.(.+)") or string.match(details.type, "RESOURCE%.(.+)%.")
    thisData.id = thisType .. "-" .. LibEKLUUID()

    if thisType == "ARTIFACT" then
        nkCartGathering.artifactsData[data.lastZone][thisData.id] = thisData
    else
        nkCartGathering.gatheringData[data.lastZone][thisData.id] = thisData
    end
end

-- @section Public Functions

-- Zeigt Points of Interest (POIs) auf der Karte an oder versteckt sie.
--
-- @function internalFunc.ShowPOI
-- @tparam boolean flag Ob die POIs angezeigt werden sollen.
function internalFunc.ShowPOI(flag)
    local lastPoi = LibMap.map.GetZonePOI(data.lastZone)
    if flag and nkAM_Loot and LibEKL.Unit.GetGroupStatus() ~= 'single' then
        local bossInfo = nkAM_Loot.getPOI(data.lastZone)
        if bossInfo then
            if not data.customPOIs[data.lastZone] then data.customPOIs[data.lastZone] = {} end
            for k, v in pairs(bossInfo) do
                data.customPOIs[data.lastZone][k] = v
            end
        end
    end
    
    local customPoi = data.customPOIs[data.lastZone]
    if customPoi then
        if not lastPoi then lastPoi = {} end
        for k, v in pairs(customPoi) do
            lastPoi[k] = v
            lastPoi[k].id = k
            if lastPoi[k].type == "POI.ACHIEVEMENT" then
                lastPoi[k].title = lang.poiAchievement
            elseif lastPoi[k].type == "POI.PUZZLE" then
                lastPoi[k].title = lang.poiPuzzle
            end
            lastPoi[k].descList = { v[LibEKLGetLanguageShort()] }
        end
    end
    
    if not lastPoi then return end
    if flag and nkCartSetup.showPOI then
        internalFunc.UpdateMap(lastPoi, "add", "internalFunc.ShowPOI")
    else
        internalFunc.UpdateMap(lastPoi, "remove")
    end
end

-- Zeigt seltene Mobs auf der Karte an oder versteckt sie.
--
-- @function internalFunc.ShowRareMobs
-- @tparam boolean flag Ob die seltenen Mobs angezeigt werden sollen.
function internalFunc.ShowRareMobs(flag)
    if flag then
        if Inspect.Addon.Detail('RareDar') then
            _getRareDarData()
        elseif Inspect.Addon.Detail('RareTracker') then
            _getRareTrackerData()
        end
    else
        internalFunc.UpdateMap(data._rareData, "remove")
    end
end

-- Zeigt Sammelressourcen auf der Karte an oder versteckt sie.
--
-- @function internalFunc.ShowGathering
-- @tparam boolean flag Ob die Sammelressourcen angezeigt werden sollen.
function internalFunc.ShowGathering(flag)
    if not nkCartGathering.gatheringData[data.lastZone] then return end
    local action = "add"
    if not flag then action = "remove" end
    
    local temp = {}
    for k, v in pairs(nkCartGathering.gatheringData[data.lastZone]) do
        table.insert(temp, {[k] = v})
    end
    
    local gridCoRoutine = coroutine.create(
        function ()
            for idx = 1, #temp, 1 do
                internalFunc.UpdateMap(temp[idx], action, "internalFunc.ShowGathering")
                coroutine.yield(idx)
            end
        end
    )
    LibEKL.Coroutines.Add({ func = gridCoRoutine, counter = #temp, active = true })
end

-- Zeigt Artefakte auf der Karte an oder versteckt sie.
--
-- @function internalFunc.ShowArtifacts
-- @tparam boolean flag Ob die Artefakte angezeigt werden sollen.
function internalFunc.ShowArtifacts(flag)
    if not nkCartGathering.artifactsData[data.lastZone] then return end
    if flag then
        internalFunc.UpdateMap(nkCartGathering.artifactsData[data.lastZone], "add")
    else
        internalFunc.UpdateMap(nkCartGathering.artifactsData[data.lastZone], "remove")
    end
end

-- Aktualisiert die Wegpunkt-Pfeile auf der Karte.
--
-- @function internalFunc.UpdateWaypointArrows
function internalFunc.UpdateWaypointArrows()
    if not uiElements.mapUI or not data.centerElement then return end
    local map = uiElements.mapUI:GetMap()
    local mapInfo = uiElements.mapUI:GetMapInfo()
    local coordX, coordZ = uiElements.mapUI:GetElement(data.centerElement):GetCoord()
    local mask = uiElements.mapUI:GetMask()
    local mapWidth, mapHeight = map:GetWidth(), map:GetHeight()
    
    for key, details in pairs(data.waypoints) do
        if details.coordX >= mapInfo.x1 and details.coordX <= mapInfo.x2 and details.coordZ >= mapInfo.y1 and details.coordZ <= mapInfo.y2 then
            if not details.gfx then
                details.gfx = LibEKL.UICreateFrame("nkCanvas", "nkUI.waypointarrow." .. LibEKLUUID(), mask)
                details.gfx:SetLayer(999)
            end
            
            local stroke = { thickness = 3, r = 1, g = 0.8, b = 0.4, a = 1 }
            if details.player then stroke = { thickness = 3, r = 0.463, g = 0.741, b = 0.722, a = 1 } end
            
            local width, height, xmod, zmod, headX, headY = 0, 0, 0, 0, 0, 0
            local canvas
            
            if details.coordX <= coordX then
                width, xmod = coordX - details.coordX, -1
                if details.coordZ <= coordZ then
                    canvas = {{xProportional = 1, yProportional = 1}, {xProportional = 0, yProportional = 0}}
                    height, zmod = coordZ - details.coordZ, -1
                else
                    canvas = {{xProportional = 1, yProportional = 0}, {xProportional = 0, yProportional = 1}}
                    height, zmod, headY = details.coordZ - coordZ, 0, 1
                end
            else
                width, xmod, headX = details.coordX - coordX, 0, 1
                if details.coordZ <= coordZ then
                    canvas = {{xProportional = 0, yProportional = 1}, {xProportional = 1, yProportional = 0}}
                    height, zmod = coordZ - details.coordZ, -1
                else
                    canvas = {{xProportional = 0, yProportional = 0}, {xProportional = 1, yProportional = 1}}
                    height, zmod, headY = details.coordZ - coordZ, 0, 1
                end
            end
            
            local newWidth = mapWidth / (mapInfo.x2 - mapInfo.x1) * width
            local newHeight = mapHeight / (mapInfo.y2 - mapInfo.y1) * height
            local xP = 1 / (mapInfo.x2 - mapInfo.x1) * (coordX - mapInfo.x1)
            local yP = 1 / (mapInfo.y2 - mapInfo.y1) * (coordZ - mapInfo.y1)
            local thisX = (mapWidth * xP)
            local thisY = (mapHeight * yP)
            
            details.gfx:ClearAll()
            details.gfx:SetWidth(newWidth)
            details.gfx:SetHeight(newHeight)
            details.gfx:SetShape(canvas, nil, stroke)
            details.gfx:SetPoint("TOPLEFT", map, "TOPLEFT", thisX + (newWidth * xmod), thisY + (newHeight * zmod))
        end
    end
end

-- Zeigt den Wegpunkt-Dialog an.
--
-- @function internalFunc.WaypointDialog
function internalFunc.WaypointDialog()
    local xpos, ypos
    if InspectSystemSecure() then return end
    
    if not uiElements.waypointDialog then
        local name = "nkCartographer.waypointDialog"
        local coordLabel, xposEdit, yposEdit, sepLabel, setButton
        uiElements.waypointDialog = LibEKL.UICreateFrame("nkWindow", name, uiElements.contextSecure)
        uiElements.waypointDialog:SetLayer(3)
        uiElements.waypointDialog:SetWidth(200)
        uiElements.waypointDialog:SetHeight(140)
        uiElements.waypointDialog:SetTitle(lang.waypointDialogTitle)
        uiElements.waypointDialog:SetSecureMode('restricted')
        uiElements.waypointDialog:SetTitleFont(addonInfo.id, "MontserratSemiBold")
        
        Command.Event.Attach(LibEKL.Events[name].Closed, function ()
            xposEdit:Leave()
            yposEdit:Leave()
        end, name .. ".Closed")
        
        coordLabel = LibEKL.UICreateFrame("nkText", name .. ".coordLabel", uiElements.waypointDialog:GetContent())
        coordLabel:SetPoint("CENTERTOP", uiElements.waypointDialog:GetContent(), "CENTERTOP", 0, 10)
        coordLabel:SetFontColor(1, 1, 1, 1)
        coordLabel:SetFontSize(12)
        coordLabel:SetText(lang.coordLabel)
        LibEKL.ui.setFont(coordLabel, addonInfo.id, "Montserrat")
        
        sepLabel = LibEKL.UICreateFrame("nkText", name .. ".sepLabel", uiElements.waypointDialog:GetContent())
        sepLabel:SetPoint("CENTERTOP", coordLabel, "CENTERBOTTOM", 0, 10)
        sepLabel:SetFontColor(1, 1, 1, 1)
        sepLabel:SetFontSize(12)
        sepLabel:SetText("/")
        LibEKL.ui.setFont(sepLabel, addonInfo.id, "Montserrat")
        
        xposEdit = LibEKL.UICreateFrame("nkTextField", name .. ".xposEdit", uiElements.waypointDialog:GetContent())
        yposEdit = LibEKL.UICreateFrame("nkTextField", name .. ".yposEdit", uiElements.waypointDialog:GetContent())
        
        xposEdit:SetPoint("CENTERRIGHT", sepLabel, "CENTERLEFT", -5, 0)
        xposEdit:SetWidth(50)
        xposEdit:SetTabTarget(yposEdit)
        
        local function _setMacro()
            if not xpos or not ypos or not tonumber(xpos) or not tonumber(ypos) then return end
            LibEKL.Events.AddInsecure(function() setButton:SetMacro(string.format("setwaypoint %d %d", xpos, ypos)) end)
        end
        
        Command.Event.Attach(LibEKL.Events[name .. ".xposEdit"].TextfieldChanged, function (_, newValue)
            xpos = newValue
            _setMacro()
        end, name .. ".xposEdit.TextfieldChanged")
        
        yposEdit:SetPoint("CENTERLEFT", sepLabel, "CENTERRIGHT", 5, 0)
        yposEdit:SetWidth(50)
        yposEdit:SetTabTarget(xposEdit)
        
        Command.Event.Attach(LibEKL.Events[name .. ".yposEdit"].TextfieldChanged, function (_, newValue)
            ypos = newValue
            _setMacro()
        end, name .. ".yposEdit.TextfieldChanged")
        
        setButton = LibEKL.UICreateFrame("nkButton", name .. ".setButton", uiElements.waypointDialog:GetContent())
        setButton:SetPoint("CENTERTOP", sepLabel, "CENTERBOTTOM", 0, 20)
        setButton:SetText(lang.btSet)
        setButton:SetScale(.8)
        setButton:SetLayer(9)
        setButton:SetFont(addonInfo.id, "MontserratSemiBold")
        
        Command.Event.Attach(LibEKL.Events[name .. ".setButton"].Clicked, function ()
            xposEdit:Leave()
            yposEdit:Leave()
            LibEKL.Events.AddInsecure(function() uiElements.waypointDialog:SetVisible(false) end)
        end, name .. ".setButton.Clicked")
    else
        if uiElements.waypointDialog:GetVisible() then
            uiElements.waypointDialog:SetVisible(false)
        else
            uiElements.waypointDialog:SetVisible(true)
        end
    end
    
    local mouseData = InspectMouse()
    uiElements.waypointDialog:SetPoint("TOPLEFT", UIParent, "TOPLEFT", mouseData.x - uiElements.waypointDialog:GetWidth(), mouseData.y - uiElements.waypointDialog:GetHeight())
end

-- Zeigt benutzerdefinierte Punkte auf der Karte an.
--
-- @function internalFunc.ShowCustomPoints
function internalFunc.ShowCustomPoints()
    if nkCartSetup.userPOI[data.currentWorld] then internalFunc.UpdateMap(nkCartSetup.userPOI[data.currentWorld], "add") end
end