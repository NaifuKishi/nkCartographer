local addonInfo, privateVars = ...

---------- init namespace ---------

if not nkCartographer then nkCartographer = {} end

privateVars.data          = {}
privateVars.internalFunc  = {}
privateVars.uiElements    = {}
privateVars.events        = {}

local data          = privateVars.data
local uiElements    = privateVars.uiElements
local internalFunc  = privateVars.internalFunc
local events        = privateVars.events

local stringFind    = string.find
local stringMatch   = string.match
local stringFormat  = string.format

---------- init local variables ---------

---------- make global functions local ---------

local _oInspectTimeReal = Inspect.Time.Real

---------- init variables ---------

data.playerTargetUID      = nil -- id of the player's target
data.lastZone             = nil -- id of the current zone e.g. the last zone entered
data.currentWorld         = nil -- id of the current map world
data.centerElement        = nil -- id of the element which is the center of the map (normally the player icon)
data.waypoints            = {}  -- list of the currently known and displayed waypoints
data.collectStart         = nil -- time the last time the player started interacting with a world element (mostly collecting something)
data.rareMobKilled        = {}  -- list of killed raremobs

data.rareMobAchievements  =  {"c5C766AF68015CB70", -- classic
                              "c5057BAEBDEA774CE", -- ember isle
                              "c128FB25EE807902B", -- storm legion
                              "c7443CBB86FC99D5E"  -- nightmare tidde
                              }

---------- generate ui context ---------

uiElements.context = UI.CreateContext("nkCartographer")
uiElements.context:SetStrata ('dialog')

uiElements.contextSecure = UI.CreateContext("nkCartographer")
uiElements.contextSecure:SetStrata ('topmost')
uiElements.contextSecure:SetSecureMode ('restricted')

---------- local function block ---------

-- nkCartographer.UpdateMap = function (mapInfo, action)

	-- internalFunc.UpdateMap(mapInfo, action, "nkCartographer.UpdateMap." .. action, false)

-- end

function internalFunc.showHide()

	if uiElements.mapUI:GetVisible() == true then
      uiElements.mapUI:SetVisible(false)
    else
      uiElements.mapUI:SetVisible(true)
    end 

end

local function _commandHandler (commandline)

	if commandline == nil then return end
	if uiElements.mapUI == nil then return end

	if stringFind(commandline, "toggle") ~= nil then 
		uiElements.mapUI:ToggleMinMax(true)
	elseif stringFind(commandline, "debug") ~= nil and nkDebug then
		if uiElements.debugPanel == nil then 
			uiElements.debugPanel = internalFunc.debugPanel()
		else
			uiElements.debugPanel:SetVisible(not uiElements.debugPanel:GetVisible())
		end
		
		local mapInfo = uiElements.mapUI:GetMapInfo()
		uiElements.debugPanel:SetCoord(mapInfo.x1, mapInfo.x2, mapInfo.y1, mapInfo.y2)
		
	elseif stringFind(commandline, "show") ~= nil then
		internalFunc.showHide()
	elseif stringFind(commandline, "add") ~= nil then
		local thisCommand = LibEKL.strings.split(commandline, " ")
		
		if #thisCommand < 4 then
			LibEKL.Tools.Error.Display (addonInfo.identifier,  privateVars.langTexts.errorAddCommand, 2)
		else
			
			internalFunc.AddCustomPoint(tonumber(thisCommand[2]), tonumber(thisCommand[3]), LibEKL.strings.right(commandline, thisCommand[3]))
		end
	elseif stringFind(commandline, "clear") ~= nil then
		internalFunc.ClearCustomPoints()
	end

end

local function _languageNotSupported () 

  uiElements.nsDialog = LibEKL.UICreateFrame("nkDialog", "nkCartographer.dialog.notsupported", uiElements.context)
  uiElements.nsDialog:SetPoint("CENTER", UIParent, "CENTER")
  uiElements.nsDialog:SetType("OK")
  uiElements.nsDialog:SetMessage("nkCartographer relies on pattern recognition of texts provided by the RIFT API.\n\nUnfortunately your client's language is not supported yet.")
  
end

local function _main(_, addon)

  if addon ~= addonInfo.identifier then return end

    local syslang = Inspect.System.Language()

    if syslang == "French" then
      _languageNotSupported()
      return
    end

    LibEKL.UI.registerFont (addonInfo.id, "Montserrat", "fonts/Montserrat-Regular.ttf")
    LibEKL.UI.registerFont (addonInfo.id, "MontserratSemiBold", "fonts/nkC-Montserrat-SemiBold.ttf")
    LibEKL.UI.registerFont (addonInfo.id, "MontserratBold", "fonts/Montserrat-Bold.ttf")
    
    table.insert(Command.Slash.Register("nkCG"), {_commandHandler, "nkCartographer", "ui"}) 
    table.insert(Command.Slash.Register("nkCartographer"), {_commandHandler, "nkCartographer", "ui"})

    --RESOURCE.ARTIFACT
    
    for key, design in pairs(data.resourceData) do
      local ressourceEntries = LibMap.map.GetMapElementbyType (key)
      for key2, details in pairs (ressourceEntries) do
        LibMap.map.replaceMapElement ("TRACK" .. stringMatch (key2, "RESOURCE(.+)"), design)
      end		
    end
	
    LibMap.map.replaceMapElement ("TRACK.ARTIFACT.NORMAL", data.resourceData['RESOURCE.ARTIFACT'])
    LibMap.map.replaceMapElement ("TRACK.ARTIFACT.TWISTED", data.resourceData['RESOURCE.ARTIFACT'])
    LibMap.map.replaceMapElement ("TRACK.ARTIFACT.UNSTABLE", data.resourceData['RESOURCE.ARTIFACT'])
    LibMap.map.replaceMapElement ("TRACK.ARTIFACT.FAEYULE", data.resourceData['RESOURCE.ARTIFACT'])
    LibMap.map.replaceMapElement ("TRACK.ARTIFACT.OTHER", data.resourceData['RESOURCE.ARTIFACT'])
    LibMap.map.replaceMapElement ("TRACK.BOAT", data.resourceData['RESOURCE.ARTIFACT'])
    LibMap.map.replaceMapElement ("TRACK.ARTIFACT.POISON", data.resourceData['RESOURCE.ARTIFACT'])
    LibMap.map.replaceMapElement ("TRACK.ARTIFACT.BURNING", data.resourceData['RESOURCE.ARTIFACT'])
    LibMap.map.replaceMapElement ("TRACK.ARTIFACT.NIGHTMARE", data.resourceData['RESOURCE.ARTIFACT'])
    
    -- add custom elements
      
    for key, data in pairs (data.customElements) do
      LibMap.map.addMapElement (key, data)
    end
      
    LibQB.loadPackage("classic")
    LibQB.loadPackage("nt")
    LibQB.loadPackage("sfp")
    LibQB.loadPackage("poa")
    LibMap.map.init(true)
    LibMap.map.zoneInit(true)
    LibEKL.Inventory.Init()
    LibEKL.Unit.Init()
        
    for idx = 1, #data.rareMobAchievements, 1 do
      events.achievementUpdate (_, { [data.rareMobAchievements[idx]] = true })
    end
    
	  Command.Event.Attach(Event.System.Update.Begin, events.SystemUpdate, "nkCartographer.System.Update.Begin")	
    Command.Event.Attach(LibMap.events["LibMap.map"].add, function (a, mapInfo) internalFunc.UpdateMap(mapInfo, "add", "EinKai.map.add") end, "nkCartographer.LibMap.map.add")
    Command.Event.Attach(LibMap.events["LibMap.map"].change, function (_, mapInfo)  internalFunc.UpdateMap(mapInfo, "change", "LibMap.map.change Event") end, "nkCartographer.LibMap.map.change")
    Command.Event.Attach(LibMap.events["LibMap.map"].remove, function (_, mapInfo) internalFunc.UpdateMap(mapInfo, "remove") end, "nkCartographer.LibMap.map.remove")
    Command.Event.Attach(LibMap.events["LibMap.map"].coord, function (_, mapInfo) internalFunc.UpdateMap(mapInfo, "coord", "LibMap.map.coord Event") end, "nkCartographer.LibMap.map.coord")
    Command.Event.Attach(LibMap.events["LibMap.map"].zone, function (_, mapInfo) events.ZoneChange (_, mapInfo) end, "nkCartographer.LibMap.map.zone")
    Command.Event.Attach(LibMap.events["LibMap.map"].shard, function (_, mapInfo) events.ShardChange (_, mapInfo) end, "nkCartographer.LibMap.map.shard")
    Command.Event.Attach(LibMap.events["LibMap.waypoint"].add, function (_, mapInfo) internalFunc.UpdateMap(mapInfo, "waypoint-add") end, "nkCartographer.LibMap.waypoint.add")
    Command.Event.Attach(LibMap.events["LibMap.waypoint"].change, function (_, mapInfo) internalFunc.UpdateMap(mapInfo, "waypoint-change") end, "nkCartographer.LibMap.waypoint.change")
    Command.Event.Attach(LibMap.events["LibMap.waypoint"].remove, function (_, mapInfo) internalFunc.UpdateMap(mapInfo, "waypoint-remove") end, "nkCartographer.LibMap.waypoint.remove")
    Command.Event.Attach(LibMap.events["LibMap.map"].unitAdd, function (_, mapInfo) internalFunc.UpdateUnit(mapInfo, "add") end, "nkCartographer.LibMap.map.unitAdd")
    Command.Event.Attach(LibMap.events["LibMap.map"].unitRemove, function (_, mapInfo) internalFunc.UpdateUnit(mapInfo, "remove") end, "nkCartographer.LibMap.map.unitRemove")
    Command.Event.Attach(LibMap.events["LibMap.map"].unitChange, function (_, mapInfo) internalFunc.UpdateUnit(mapInfo, "change") end, "nkCartographer.LibMap.map.unitChange")
    
    Command.Event.Attach(LibEKL.Events["LibEKL.InventoryManager"].Update, function (_, thisData)
      if data.collectStart and Inspect.Time.Real() - data.collectStart < 2 then        
		    internalFunc.CollectArtifact(thisData)
		    data.collectStart = nil
      end      
    end, "nkCartographer.LibEKL.InventoryManager.Update")
       
    Command.Event.Attach(LibEKL.Events["LibEKL.Unit"].GroupStatus, events.GroupStatus, "nkCartographer.LibEKL.Unit.GroupStatuss")
    Command.Event.Attach(LibEKL.Events["LibEKL.Unit"].Change, events.UnitChange, "nkCartographer.LibEKL.Unit.Change")
    
    Command.Event.Attach(LibEKL.Events["LibEKL.Unit"].PlayerAvailable, events.playerAvailable, "nkCartographer.LibEKL.Unit.PlayerAvailable")
	
    Command.Event.Attach(Event.Unit.Availability.None, events.UnitUnavailable, "nkCartographer.Unit.Availability.None")
    
    Command.Event.Attach(Event.Quest.Accept, events.QuestAccept, "nkCartographer.Quest.Accept")
    Command.Event.Attach(Event.Quest.Abandon, events.QuestAbandon, "nkCartographer.Quest.Abandon")
    Command.Event.Attach(Event.Quest.Change, events.QuestChange, "nkCartographer.Quest.Change")
    Command.Event.Attach(Event.Quest.Complete, events.QuestComplete, "nkCartographer.Quest.Complete")
    
    Command.Event.Attach(Event.Unit.Castbar, events.UnitCastBar, "nkCartographer.Unit.Castbar")
    Command.Event.Attach(Event.Unit.Detail.LocationName, events.UpdateLocation, "nkCartographer.Unit.Detail.LocationName")
    
    Command.Event.Attach(Event.Achievement.Update, events.achievementUpdate, "nkCartographer.Achievement.Update")

    if nkCartSetup.syncTarget == true then
      Command.Message.Accept("raid", "nkCartographer.target")
      Command.Message.Accept("party", "nkCartographer.target")
      
      Command.Event.Attach(Event.Message.Receive, events.messageReceive, "nkCartographer.Message.Receive")
    end
    
    Command.Console.Display("general", true, stringFormat(privateVars.langTexts.startUp, addonInfo.toc.Version), true)
    
end

local function _settingsHandler(_, addon) 

  if addon == addonInfo.identifier then
  
    local firstSetup = false
  
    if nkCartSetup == nil then
      nkCartSetup = {
                      x = 600, y= 0, maximizedX = 100, maximizedY = 100, scale = 2.5,
                      width = 300, height = 300, locked = false, syncTarget = false,
                      maximizedWidth = 1000, maximizedHeight = 800, maximizedScale = 1,
                      background = "default",
                      showPOI = true, showZoneTitle = true, animations = true, animationSpeed = 0.05, rareMobs = true, showQuest = true,
                      trackArtifacts = true, trackGathering = true, smoothScroll = true, showUnknown = true,
                      zones = {},
		                  userPOI = {}
                    }
	  
	    nkCartSetup.x = LibEKL.UI.getBoundRight() - 300
	  
      nkCartGathering = { gatheringData = {}, artifactsData = {}}
      
      firstSetup = true
    end
	
	  -- changes for nkCartographer V2.1.1
	
    if nkCartSetup.syncTarget == nil then nkCartSetup.syncTarget = true end
      
    -- changes for nkCartographer V2.0.0
    
    if nkCartSetup.animationSpeed == nil then nkCartSetup.animationSpeed = 0.05 end
    
    -- chanes for nkCartographer V2.1.0
    
    if nkCartSetup.userPOI == nil then nkCartSetup.userPOI = {} end
    
      -- change from character to account wide gathering storage
      
    if firstSetup == false and nkCartGathering == nil then
    
      nkCartGathering = { gatheringData = {}, artifactsData = {}}
      
      for zoneid, data in pairs(nkCartSetup.artifactsData) do
        nkCartGathering.artifactsData[zoneid] = {}
      
        for key, details in pairs(data) do
          nkCartGathering.artifactsData[zoneid][key] = details
        end
      end
      
      for zoneid, data in pairs(nkCartSetup.gatheringData) do
        nkCartGathering.gatheringData[zoneid] = {}
      
        for key, details in pairs(data) do
          if stringFind(key, "ARTIFAC") ~= nil then
            if nkCartGathering.artifactsData[zoneid] == nil then
              nkCartGathering.artifactsData[zoneid] = {}
            end
          
            nkCartGathering.artifactsData[zoneid][key] = details
          else
            nkCartGathering.gatheringData[zoneid][key] = details
          end
        end
      end
      
      nkCartSetup.gatheringData = nil
      nkCartSetup.artifactsData = nil
      
    end 
    
  end
end

-------------------- STARTUP EVENTS --------------------

Command.Event.Attach(Event.Addon.Load.End, _main, "nkCartographer.Addon.Load.End")
Command.Event.Attach(Event.Addon.SavedVariables.Load.End, _settingsHandler, "nkCartographer.SavedVariables.Load.End")