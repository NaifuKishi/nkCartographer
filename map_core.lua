-- map_core.lua
-- Kernmodul für die Karte in nkCartographer.
-- Verantwortlich für die UI-Initialisierung, Kartenverwaltung und die zentrale Logik.
--
-- @module map_core
-- @author NaifuKishi

local addonInfo, privateVars = ...

---------- init namespace ---------

local data                  = privateVars.data
local uiElements            = privateVars.uiElements
local internalFunc          = privateVars.internalFunc
local events               = privateVars.events
local lang        			= privateVars.langTexts

---------- init local variables ---------

local _zoneDetails          = nil
local _rareData             = {}

---------- make global functions local ---------

local InspectUnitDetail 	= Inspect.Unit.Detail
local InspectZoneDetail 	= Inspect.Zone.Detail
local InspectSystemSecure 	= Inspect.System.Secure
local InspectSystemWatchdog = Inspect.System.Watchdog
local InspectItemDetail 	= Inspect.Item.Detail
local InspectMouse 			= Inspect.Mouse
local InspectTimeReal 		= Inspect.Time.Real

local LibEKLGetLanguage			= LibEKL.Tools.Lang.GetLanguage
local LibEKLGetLanguageShort	= LibEKL.Tools.Lang.GetLanguageShort
local LibEKLTableCopy			= LibEKL.Tools.Table.Copy
local LibEKLUUID				= LibEKL.Tools.UUID

local stringFind			= string.find
local stringMatch			= string.match
local stringFormat			= string.format
local stringUpper			= string.upper

local mathDeg				= math.deg
local mathAtan2				= math.atan2

-- @section UI

-- Erstellt und konfiguriert das Hauptfenster der Karte.
--
-- @function _fctMapUI
-- @treturn table Das erstellte Karten-UI-Objekt.
local function _fctMapUI()
    local mapUI = LibMap.uiCreateFrame("nkMap", "nkCartographer.map", uiElements.context)
    
    -- Sperrstatus der Karte basierend auf den Einstellungen
    local locked = not nkCartSetup.locked
    mapUI:SetResizable(locked)
    mapUI:SetDragable(locked)
    mapUI:SetLayer(2)
    mapUI:ShowHeader(false)
    mapUI:ShowCoords(false)

    -- Hintergrundtextur
    local texture = LibEKL.UICreateFrame("nkTexture", "nkCartographer.map.texture", uiElements.context)
    texture:SetLayer(1)

    -- Setzt den Hintergrund der Karte basierend auf den Einstellungen
    function mapUI:SetBackground(newBG)
        if nkCartSetup.background == nil then return end
        if data.borderDesigns[nkCartSetup.background].addon == nil then
            texture:SetVisible(false)
        else
            texture:SetVisible(true)
            texture:SetPoint("TOPLEFT", mapUI, "TOPLEFT", -data.borderDesigns[nkCartSetup.background].offset, -data.borderDesigns[nkCartSetup.background].offset)
            texture:SetPoint("BOTTOMRIGHT", mapUI, "BOTTOMRIGHT", data.borderDesigns[nkCartSetup.background].offset, data.borderDesigns[nkCartSetup.background].offset)
            texture:SetTextureAsync(data.borderDesigns[nkCartSetup.background].addon, data.borderDesigns[nkCartSetup.background].path)
        end
    end

    -- Überschreibt die Sichtbarkeitsmethode, um die Textur ebenfalls zu verstecken
    local oSetVisible = mapUI.SetVisible
    function mapUI:SetVisible(flag)
        oSetVisible(self, flag)
        texture:SetVisible(flag)
    end

    mapUI:SetBackground(nkCartSetup.background)

    -- Titel der Zone
    local zoneTitle = LibEKL.UICreateFrame("nkText", "nkCartographer.map.zoneTitle", mapUI:GetMask())
    zoneTitle:SetPoint("CENTERTOP", mapUI:GetContent(), "CENTERTOP")
    zoneTitle:SetLayer(9999)
    LibEKL.UI.SetFont(zoneTitle, addonInfo.id, "MontserratSemiBold")
    zoneTitle:SetEffectGlow({ colorB = 0, colorA = 1, colorG = 0, colorR = 0, strength = 3, blurX = 3, blurY = 3 })

    -- Koordinaten-Anzeige
    local coords = LibEKL.UICreateFrame("nkText", "nkCartographer.map.coords", mapUI)
    coords:SetPoint("CENTERBOTTOM", mapUI:GetContent(), "CENTERBOTTOM", 0, 15)
    coords:SetLayer(9999)
    coords:SetFontSize(20)
    coords:SetEffectGlow({ strength = 3 })
    LibEKL.UI.SetFont(coords, addonInfo.id, "MontserratBold")

    -- Mauskoordinaten-Anzeige
    local mouseCoords = LibEKL.UICreateFrame("nkText", "nkCartographer.map.mouseCoords", mapUI)
    mouseCoords:SetPoint("CENTERBOTTOM", coords, "CENTERTOP", 0, 5)
    mouseCoords:SetLayer(9999)
    mouseCoords:SetFontSize(18)
    mouseCoords:SetFontColor(1, 0.8, 0, 1)
    mouseCoords:SetEffectGlow({ strength = 3 })
    LibEKL.UI.SetFont(mouseCoords, addonInfo.id, "MontserratBold")

    -- Setzt die Koordinatenbeschriftung
    function mapUI:SetCoordsLabel(x, y)
        coords:SetText(stringFormat("%d / %d", x, y))
    end

    -- Zeigt oder versteckt den Zonen-Titel
    function mapUI:SetZoneTitle(flag)
        if flag == false then
            zoneTitle:SetVisible(false)
        else
            zoneTitle:SetVisible(true)
            local scale = 1 / 300 * mapUI:GetWidth()
            local fontsize = 20 * scale
            if fontsize > 30 then fontsize = 30 end
            zoneTitle:SetFontSize(fontsize)
            zoneTitle:SetText(data.locationName)
        end
    end

    -- Event-Handler für Mausbewegung
    Command.Event.Attach(LibMap.events["nkCartographer.map"].MouseMoved, function(_, text)
        mouseCoords:SetText(text)
    end, "nkCartographer.map.MouseMoved")

    -- Event-Handler für Bewegung der Karte
    Command.Event.Attach(LibMap.events["nkCartographer.map"].Moved, function(_, x, y, maximized)
        if maximized == true then
            nkCartSetup.maximizedX, nkCartSetup.maximizedY = x, y
        else
            nkCartSetup.x, nkCartSetup.y = x, y
        end
    end, "nkCartographer.map.Moved")

    -- Event-Handler für Größenänderung der Karte
    Command.Event.Attach(LibMap.events["nkCartographer.map"].Resized, function(_, newWidth, newHeight, maximized)
        if maximized == true then
            nkCartSetup.maximizedWidth, nkCartSetup.maximizedHeight = newWidth, newHeight
        else
            nkCartSetup.width, nkCartSetup.height = newWidth, newHeight
        end
    end, "nkCartographer.map.Resized")

    -- Event-Handler für Zoom der Karte
    Command.Event.Attach(LibMap.events["nkCartographer.map"].Zoomed, function(_, newScale, maximized)
        if maximized == true then
            nkCartSetup.maximizedScale = newScale
        else
            nkCartSetup.scale = newScale
        end
        internalFunc.UpdateWaypointArrows()
    end, "nkCartographer.map.Zoomed")

    -- Event-Handler für Umschalten der Karte
    Command.Event.Attach(LibMap.events["nkCartographer.map"].Toggled, function()
        internalFunc.UpdateWaypointArrows()
        mapUI:SetZoneTitle(nkCartSetup.showZoneTitle)
    end, "nkCartographer.map.Toggled")

    return mapUI
end

-- @section Core Functions

-- Initialisiert die Karte und setzt die Standardwerte.
--
-- @function internalFunc.initMap
function internalFunc.initMap()
    local debugId
    if nkDebug then debugId = nkDebug.traceStart(addonInfo.identifier, "internalFunc.initMap") end

    -- Erstellt die Karte, falls noch nicht vorhanden
    if uiElements.mapUI == nil then uiElements.mapUI = _fctMapUI() end

    -- Setzt Animationen und Scrollverhalten
    uiElements.mapUI:SetAnimated(nkCartSetup.animations, nkCartSetup.animationSpeed)
    uiElements.mapUI:SetSmoothScroll(nkCartSetup.smoothScroll)

    -- Setzt die Größe der Karte
    uiElements.mapUI:SetWidth(nkCartSetup.width)
    uiElements.mapUI:SetHeight(nkCartSetup.height)

    -- Initialisiert die Zone
    local details = InspectUnitDetail(data.playerUID)
    internalFunc.SetZone(details.zone)

    -- Setzt die Position und den Zoom der Karte
    uiElements.mapUI:SetPointMaximized(nkCartSetup.maximizedX, nkCartSetup.maximizedY)
    uiElements.mapUI:SetWidthMaximized(nkCartSetup.maximizedWidth)
    uiElements.mapUI:SetHeightMaximized(nkCartSetup.maximizedHeight)
    uiElements.mapUI:SetPoint("TOPLEFT", UIParent, "TOPLEFT", nkCartSetup.x, nkCartSetup.y)
    uiElements.mapUI:SetZoom(nkCartSetup.scale, false)
    uiElements.mapUI:SetZoom(nkCartSetup.maximizedScale, true)

    -- Lädt alle Kartenelemente
    local points, units = LibMap.map.getAll()
    internalFunc.UpdateMap(points, "add", "internalFunc.initMap")
    internalFunc.UpdateUnit(units, "add")

    -- Debug-Informationen
    if nkDebug and uiElements.debugPanel then
        local mapInfo = uiElements.mapUI:GetMapInfo()
        uiElements.debugPanel:SetCoord(mapInfo.x1, mapInfo.x2, mapInfo.y1, mapInfo.y2)
    end

    -- Event für verzögerte Positionsanpassung
    Command.Event.Attach(Event.System.Update.Begin, function()
        if data.delayStart ~= nil then
            local tmpTime = InspectTimeReal()
            if LibEKL.Tools.Math.Round((tmpTime - data.delayStart), 1) > 1 then
                uiElements.mapUI:SetPoint("TOPLEFT", UIParent, "TOPLEFT", nkCartSetup.x, nkCartSetup.y)
                Command.Event.Detach(Event.System.Update.Begin, nil, "nkCartographer.resetPosition")
            end
        else
            data.delayStart = InspectTimeReal()
        end
    end, "nkCartographer.resetPosition")

    -- Registriert Minimap-Buttons
    local function _toggleMinMax()
        uiElements.mapUI:ToggleMinMax()
    end

    LibEKL.manager.RegisterButton('nkCartographer.config', addonInfo.id, "gfx/minimapIcon.png", internalFunc.ShowConfig)
    LibEKL.manager.RegisterButton('nkCartographer.toggle', addonInfo.id, "gfx/minimapIconCloseMap.png", internalFunc.showHide)
    LibEKL.manager.RegisterButton('nkCartographer.minmax', addonInfo.id, "gfx/minimapIconResize.png", _toggleMinMax)

    -- Positioniert die Minimap
    local minimapFrame = LibEKL.manager.GetFrame()
    if minimapFrame then
        minimapFrame:ClearPoint("BOTTOMLEFT")
        minimapFrame:SetPoint("TOPLEFT", uiElements.mapUI, "BOTTOMLEFT")
        minimapFrame:SetWidth(uiElements.mapUI:GetWidth())
    end

    if nkDebug then debugId = nkDebug.traceEnd(addonInfo.identifier, "internalFunc.initMap", debugId) end
end

-- Setzt die aktuelle Zone und aktualisiert die Karte.
--
-- @function internalFunc.SetZone
-- @tparam string newZoneID Die ID der neuen Zone.
function internalFunc.SetZone(newZoneID)
    local debugId
    if nkDebug then debugId = nkDebug.traceStart(addonInfo.identifier, "internalFunc.SetZone") end

    local newWorld = LibMap.map.getZoneWorld(newZoneID)
    local isNewWorld = newWorld ~= data.currentWorld

    -- Versteckt Elemente der vorherigen Zone
    if data.lastZone ~= nil then
        internalFunc.ShowPOI(false)
        internalFunc.ShowRareMobs(false)
        if isNewWorld then internalFunc.ShowQuest(false) end
        if nkCartSetup.trackGathering then internalFunc.ShowGathering(false) end
        if nkCartSetup.trackArtifacts then internalFunc.ShowArtifacts(false) end
    end

    data.currentWorld = newWorld

    -- Fehlerbehandlung, falls die Zone nicht gefunden wurde
    if data.currentWorld == nil then
        LibEKL.Tools.Error.Display("nkCartographer", "zone " .. newZoneID .. " not found", 2)
        data.currentWorld = "unknown"
    end

    -- Setzt die neue Zone auf der Karte
    uiElements.mapUI:SetMap("world", data.currentWorld)

    -- Aktualisiert die Position und Koordinaten
    local details = InspectUnitDetail(data.playerUID)
    data.locationName = details.locationName
    uiElements.mapUI:SetCoord(details.coordX, details.coordZ)
    uiElements.mapUI:SetCoordsLabel(details.coordX, details.coordZ)

    _zoneDetails = InspectZoneDetail(newZoneID)
    uiElements.mapUI:SetZoneTitle(nkCartSetup.showZoneTitle)

    -- Unterdrückt den Watchdog, falls das System nicht sicher ist
    if not InspectSystemSecure() then Command.System.Watchdog.Quiet() end

    data.lastZone = newZoneID

    -- Zeigt Elemente der neuen Zone an
    internalFunc.ShowPOI(true)
    internalFunc.ShowCustomPoints()
    internalFunc.ShowRareMobs(true)
    internalFunc.FindMissing()

    if isNewWorld then internalFunc.ShowQuest(true) end
    if nkCartSetup.trackGathering then internalFunc.ShowGathering(true) end
    if nkCartSetup.trackArtifacts then internalFunc.ShowArtifacts(true) end

    -- Debug-Informationen
    if nkDebug and uiElements.debugPane then
        local mapInfo = uiElements.mapUI:GetMapInfo()
        uiElements.debugPanel:SetCoord(mapInfo.x1, mapInfo.x2, mapInfo.y1, mapInfo.y2)
    end

    if nkDebug then debugId = nkDebug.traceEnd(addonInfo.identifier, "internalFunc.SetZone", debugId) end
end

-- Aktualisiert die Kartenelemente basierend auf der Aktion.
--
-- @function internalFunc.UpdateMap
-- @tparam table mapInfo Die zu aktualisierenden Kartenelemente.
-- @tparam string action Die auszuführende Aktion (add, remove, change, coord, waypoint-add, waypoint-remove, waypoint-change).
-- @tparam string debugSource Der Debug-Quellname.
-- @tparam[opt] boolean checkForMinimapQuest Prüft, ob es sich um eine Minimap-Quest handelt.
function internalFunc.UpdateMap(mapInfo, action, debugSource, checkForMinimapQuest)
    if not uiElements.mapUI then
        if nkDebug then nkDebug.logEntry(addonInfo.identifier, "internalFunc.UpdateMap", "No mapUI", mapInfo) end
        return
    end

    local debugId
    if nkDebug then debugId = nkDebug.traceStart(addonInfo.identifier, "internalFunc.UpdateMap") end

    if nkDebug then nkDebug.logEntry(addonInfo.identifier, "internalFunc.UpdateMap", stringFormat("%s - %s", action, debugSource), mapInfo) end

    local RESOURCE_TYPE_MAP = {
        ["RESOURCE.MINE"] = "MINE",
        ["RESOURCE.HERB"] = "HERB",
        ["RESOURCE.WOOD"] = "WOOD",
        ["RESOURCE.FISH"] = "FISH",
        ["RESOURCE.ARTIFACT"] = "ARTIFACT",
        ["RESOURCE.ARTIFACT.FAEYULE"] = "FAEYULE",
    }

    for key, details in pairs(mapInfo) do
        if action == "remove" then
            if checkForMinimapQuest == true or checkForMinimapQuest == nil then
                if not internalFunc.IsKnownMinimapQuest(key) then uiElements.mapUI:RemoveElement(key) end
            else
                uiElements.mapUI:RemoveElement(key)
            end
        elseif action == "add" then
            if not details.type then
                if nkDebug then nkDebug.logEntry(addonInfo.identifier, "internalFunc.UpdateMap add", "details.type == nil", details) end
            elseif details.type ~= "UNKNOWN" and details.type ~= "PORTAL" then
                uiElements.mapUI:AddElement(details)
                local thisType = RESOURCE_TYPE_MAP[details.type] or stringMatch(details.type, "RESOURCE%.(.+)")
                if thisType and nkCartSetup.trackGathering then _trackGathering(details, thisType) end
            elseif details.type == "UNKNOWN" then
                if not data.postponedAdds then data.postponedAdds = {} end
                if not LibQB.query.isInit() or not LibQB.query.isPackageLoaded('poa') or not LibQB.query.isPackageLoaded('nt') or not LibQB.query.isPackageLoaded('classic') then
                    data.postponedAdds[key] = details
                else
                    if InspectSystemWatchdog() < 0.1 then
                        data.postponedAdds[key] = details
                    else
                        if not internalFunc.IsKnownMinimapQuest(details.id) then
                            if nkCartSetup.showUnknown then
                                local retValue = internalFunc.CheckUnknownForQuest(details)
                                if not retValue then uiElements.mapUI:AddElement(details) end
                            end
                        else
                            uiElements.mapUI:AddElement(data.minimapIdToQuest[details.id])
                        end
                    end
                end
            end
        elseif action == "change" then
            if not uiElements.mapUI:ChangeElement(details) then
                if nkDebug then
                    nkDebug.logEntry(addonInfo.identifier, "internalFunc.UpdateMap change", "failed " .. debugSource, details)
                    internalFunc.UpdateMap({[key] = mapInfo}, "add", debugSource)
                end
            end
        elseif action == "coord" then
            if not uiElements.mapUI:ChangeElement(details) then
                internalFunc.UpdateMap({[key] = mapInfo}, "add", debugSource)
                if nkDebug then nkDebug.logEntry(addonInfo.identifier, "internalFunc.UpdateMap coord", "failed " .. debugSource, details) end
            end
        elseif action == "waypoint-add" then
            local unitDetails = InspectUnitDetail(key)
            uiElements.mapUI:AddElement({ id = "wp-" .. key, type = "WAYPOINT", descList = { unitDetails.name }, coordX = details.coordX, coordZ = details.coordZ })
            data.waypoints[key] = { coordX = details.coordX, coordZ = details.coordZ }
            if key == data.playerUID then data.waypoints[key].player = true end
            internalFunc.UpdateWaypointArrows()
        elseif action == "waypoint-remove" then
            uiElements.mapUI:RemoveElement("wp-" .. key)
            if data.waypoints[key] and data.waypoints[key].gfx then data.waypoints[key].gfx:destroy() end
            data.waypoints[key] = nil
            internalFunc.UpdateWaypointArrows()
        elseif action == "waypoint-change" then
            if not uiElements.mapUI:ChangeElement({ id = "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ }) then
                if nkDebug then nkDebug.logEntry(addonInfo.identifier, "internalFunc.UpdateMap waypoint-change", "failed " .. debugSource, { id = "wp-" .. key, coordX = details.coordX, coordZ = details.coordZ }) end
            end
            data.waypoints[key].coordX = details.coordX
            data.waypoints[key].coordZ = details.coordZ
            internalFunc.UpdateWaypointArrows()
        end
    end

    if nkDebug then debugId = nkDebug.traceEnd(addonInfo.identifier, "internalFunc.UpdateMap", debugId) end
end

-- Aktualisiert die Einheiten auf der Karte.
--
-- @function internalFunc.UpdateUnit
-- @tparam table mapInfo Die zu aktualisierenden Einheiten.
-- @tparam string action Die auszuführende Aktion (add, change, remove).
function internalFunc.UpdateUnit(mapInfo, action)
    if not uiElements.mapUI then return end

    local debugId
    if nkDebug then debugId = nkDebug.traceStart(addonInfo.identifier, "internalFunc.UpdateUnit") end

    for key, details in pairs(mapInfo) do
        if action == "add" then
            if details.type == "player" then
                local unitDetails = InspectUnitDetail("player")
                details.type = "UNIT.PLAYER"
                details.title = unitDetails.name
                details.angle = 0
                data.centerElement = key
                uiElements.mapUI:AddElement(details)
            elseif details.type == "player.pet" then
                local unitDetails = InspectUnitDetail("player.pet")
                details.type = "UNIT.PLAYERPET"
                details.title = unitDetails.name
                uiElements.mapUI:AddElement(details)
            elseif stringFind(details.type, "group") and not stringFind(details.type, "group..%.") then
                local unitDetails = InspectUnitDetail(details.type)
                details.type = "UNIT.GROUPMEMBER"
                details.title = unitDetails.name
                details.smoothCoords = true
                uiElements.mapUI:AddElement(details)
                if nkDebug then nkDebug.logEntry(addonInfo.identifier, "internalFunc.UpdateUnit", action .. ": " .. (details.type or '?'), details) end
            end
        elseif action == "change" then
            if key == data.playerUID then
                local coordX, coordZ = uiElements.mapUI:GetCoords()
                local deltaZ = details.coordZ - coordZ
                local deltaX = details.coordX - coordX
                details.angle = -mathDeg(mathAtan2(deltaZ, deltaX))
            end

            if key == data.playerTargetUID then
                details.id = "npc" .. key
                if not uiElements.mapUI:ChangeElement(details) and nkDebug then nkDebug.logEntry(addonInfo.identifier, "internalFunc.UpdateUnit", "could not change element", details) end

                details.id = "t" .. key
                if not uiElements.mapUI:ChangeElement(details) and nkDebug then nkDebug.logEntry(addonInfo.identifier, "internalFunc.UpdateUnit", "could not change element", details) end
            elseif not stringFind(details.type, "mouseover") and not stringFind(details.type, ".pet") and not stringFind(details.type, "player.target.target.target") then
                if not uiElements.mapUI:ChangeElement(details) then
                    if details.type == 'player.target' then
                        internalFunc.UpdateUnit({[key] = details}, "add")
                    elseif nkDebug then
                        nkDebug.logEntry(addonInfo.identifier, "internalFunc.UpdateUnit", "could not change element", details)
                    end
                end
            end

            if key == data.playerUID then
                uiElements.mapUI:SetCoord(details.coordX, details.coordZ)
                uiElements.mapUI:SetCoordsLabel(details.coordX, details.coordZ)
                internalFunc.UpdateWaypointArrows()
            end

            if key == data.playerHostileTargetUID then
                details.id = "e" .. key
                local bData = {change = {"e" .. key, details}}
                events.broadcastTarget(bData)
            end
        elseif action == "remove" then
            uiElements.mapUI:RemoveElement(key)
            if key == data.centerElement then data.centerElement = nil end
        end
    end

    if nkDebug then debugId = nkDebug.traceEnd(addonInfo.identifier, "internalFunc.UpdateUnit", debugId) end
end