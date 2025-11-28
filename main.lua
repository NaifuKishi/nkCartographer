local addonInfo, privateVars = ...

---------- init namespace ---------

if not nkCartographer then nkCartographer = {} end

privateVars.data        = {}
privateVars.internal    = {}
privateVars.uiElements  = {}
privateVars.events      = {}

local data        = privateVars.data
local uiElements  = privateVars.uiElements
local _internal   = privateVars.internal
local _events     = privateVars.events

---------- init local variables ---------

---------- make global functions local ---------

local _oInspectTimeReal = Inspect.Time.Real

---------- init variables ---------

data.playerUID            = nil -- id of the current player
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

	-- _internal.UpdateMap(mapInfo, action, "nkCartographer.UpdateMap." .. action, false)

-- end

function _internal.showHide()

	if uiElements.mapUI:GetVisible() == true then
      uiElements.mapUI:SetVisible(false)
    else
      uiElements.mapUI:SetVisible(true)
    end 

end

local function _commandHandler (commandline)

	if commandline == nil then return end
	if uiElements.mapUI == nil then return end

	if string.find(commandline, "toggle") ~= nil then 
		uiElements.mapUI:ToggleMinMax(true)
	elseif string.find(commandline, "debug") ~= nil and nkDebug then
		if uiElements.debugPanel == nil then 
			uiElements.debugPanel = _internal.debugPanel()
		else
			uiElements.debugPanel:SetVisible(not uiElements.debugPanel:GetVisible())
		end
		
		local mapInfo = uiElements.mapUI:GetMapInfo()
		uiElements.debugPanel:SetCoord(mapInfo.x1, mapInfo.x2, mapInfo.y1, mapInfo.y2)
		
	elseif string.find(commandline, "show") ~= nil then
		_internal.showHide()
	elseif string.find(commandline, "add") ~= nil then
		local thisCommand = EnKai.strings.split(commandline, " ")
		
		if #thisCommand < 4 then
			EnKai.tools.error.display (addonInfo.identifier,  privateVars.langTexts.errorAddCommand, 2)
		else
			
			_internal.AddCustomPoint(tonumber(thisCommand[2]), tonumber(thisCommand[3]), EnKai.strings.right(commandline, thisCommand[3]))
		end
	elseif string.find(commandline, "clear") ~= nil then
		_internal.ClearCustomPoints()
	end

end

local function _languageNotSupported () 

  uiElements.nsDialog = EnKai.uiCreateFrame("nkDialog", "nkCartographer.dialog.notsupported", uiElements.context)
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
    
    table.insert(Command.Slash.Register("nkCG"), {_commandHandler, "nkCartographer", "ui"}) 
    table.insert(Command.Slash.Register("nkCartographer"), {_commandHandler, "nkCartographer", "ui"})

    --RESOURCE.ARTIFACT
    
    for key, design in pairs(data.resourceData) do
      local ressourceEntries = EnKai.map.GetMapElementbyType (key)
      for key2, details in pairs (ressourceEntries) do
        EnKai.map.replaceMapElement ("TRACK" .. string.match (key2, "RESOURCE(.+)"), design)
      end		
    end
	
    EnKai.map.replaceMapElement ("TRACK.ARTIFACT.NORMAL", data.resourceData['RESOURCE.ARTIFACT'])
    EnKai.map.replaceMapElement ("TRACK.ARTIFACT.TWISTED", data.resourceData['RESOURCE.ARTIFACT'])
    EnKai.map.replaceMapElement ("TRACK.ARTIFACT.UNSTABLE", data.resourceData['RESOURCE.ARTIFACT'])
    EnKai.map.replaceMapElement ("TRACK.ARTIFACT.FAEYULE", data.resourceData['RESOURCE.ARTIFACT'])
    EnKai.map.replaceMapElement ("TRACK.ARTIFACT.OTHER", data.resourceData['RESOURCE.ARTIFACT'])
    EnKai.map.replaceMapElement ("TRACK.BOAT", data.resourceData['RESOURCE.ARTIFACT'])
    EnKai.map.replaceMapElement ("TRACK.ARTIFACT.POISON", data.resourceData['RESOURCE.ARTIFACT'])
    EnKai.map.replaceMapElement ("TRACK.ARTIFACT.BURNING", data.resourceData['RESOURCE.ARTIFACT'])
    EnKai.map.replaceMapElement ("TRACK.ARTIFACT.NIGHTMARE", data.resourceData['RESOURCE.ARTIFACT'])
    
    -- add custom elements
      
    for key, data in pairs (data.customElements) do
      EnKai.map.addMapElement (key, data)
    end
      
    nkQuestBase.loadPackage("classic")
    nkQuestBase.loadPackage("nt")
    nkQuestBase.loadPackage("sfp")
    nkQuestBase.loadPackage("poa")
    EnKai.map.init(true)
    EnKai.map.zoneInit(true)
    EnKai.inventory.init()
    EnKai.unit.init()
        
    for idx = 1, #data.rareMobAchievements, 1 do
      _events.achievementUpdate (_, { [data.rareMobAchievements[idx]] = true })
    end
    
	  Command.Event.Attach(Event.System.Update.Begin, _events.SystemUpdate, "nkCartographer.System.Update.Begin")	
    Command.Event.Attach(EnKai.events["EnKai.map"].add, function (a, mapInfo) _internal.UpdateMap(mapInfo, "add", "EinKai.map.add") end, "nkCartographer.EnKai.map.add")
    Command.Event.Attach(EnKai.events["EnKai.map"].change, function (_, mapInfo)  _internal.UpdateMap(mapInfo, "change", "EnKai.map.change Event") end, "nkCartographer.EnKai.map.change")
    Command.Event.Attach(EnKai.events["EnKai.map"].remove, function (_, mapInfo) _internal.UpdateMap(mapInfo, "remove") end, "nkCartographer.EnKai.map.remove")
    Command.Event.Attach(EnKai.events["EnKai.map"].coord, function (_, mapInfo) _internal.UpdateMap(mapInfo, "coord", "EnKai.map.coord Event") end, "nkCartographer.EnKai.map.coord")
    Command.Event.Attach(EnKai.events["EnKai.map"].zone, function (_, mapInfo) _events.ZoneChange (_, mapInfo) end, "nkCartographer.EnKai.map.zone")
    Command.Event.Attach(EnKai.events["EnKai.map"].shard, function (_, mapInfo) _events.ShardChange (_, mapInfo) end, "nkCartographer.EnKai.map.shard")
    Command.Event.Attach(EnKai.events["EnKai.waypoint"].add, function (_, mapInfo) _internal.UpdateMap(mapInfo, "waypoint-add") end, "nkCartographer.EnKai.waypoint.add")
    Command.Event.Attach(EnKai.events["EnKai.waypoint"].change, function (_, mapInfo) _internal.UpdateMap(mapInfo, "waypoint-change") end, "nkCartographer.EnKai.waypoint.change")
    Command.Event.Attach(EnKai.events["EnKai.waypoint"].remove, function (_, mapInfo) _internal.UpdateMap(mapInfo, "waypoint-remove") end, "nkCartographer.EnKai.waypoint.remove")
    Command.Event.Attach(EnKai.events["EnKai.map"].unitAdd, function (_, mapInfo) _internal.UpdateUnit(mapInfo, "add") end, "nkCartographer.EnKai.map.unitAdd")
    Command.Event.Attach(EnKai.events["EnKai.map"].unitRemove, function (_, mapInfo) _internal.UpdateUnit(mapInfo, "remove") end, "nkCartographer.EnKai.map.unitRemove")
    Command.Event.Attach(EnKai.events["EnKai.map"].unitChange, function (_, mapInfo) _internal.UpdateUnit(mapInfo, "change") end, "nkCartographer.EnKai.map.unitChange")
    
    Command.Event.Attach(EnKai.events["EnKai.InventoryManager"].Update, function (_, thisData)
      if data.collectStart and Inspect.Time.Real() - data.collectStart < 2 then        
		    _internal.CollectArtifact(thisData)
		    data.collectStart = nil
      end      
    end, "nkCartographer.EnKai.InventoryManager.Update")
       
    Command.Event.Attach(EnKai.events["EnKai.Unit"].GroupStatus, _events.GroupStatus, "nkCartographer.EnKai.Unit.GroupStatuss")
    Command.Event.Attach(EnKai.events["EnKai.Unit"].Change, _events.UnitChange, "nkCartographer.EnKai.Unit.Change")
    
    Command.Event.Attach(EnKai.events["EnKai.Unit"].PlayerAvailable, _events.playerAvailable, "nkCartographer.EnKai.Unit.PlayerAvailable")
	
    Command.Event.Attach(Event.Unit.Availability.None, _events.UnitUnavailable, "nkCartographer.Unit.Availability.None")
    
    Command.Event.Attach(Event.Quest.Accept, _events.QuestAccept, "nkCartographer.Quest.Accept")
    Command.Event.Attach(Event.Quest.Abandon, _events.QuestAbandon, "nkCartographer.Quest.Abandon")
    Command.Event.Attach(Event.Quest.Change, _events.QuestChange, "nkCartographer.Quest.Change")
    Command.Event.Attach(Event.Quest.Complete, _events.QuestComplete, "nkCartographer.Quest.Complete")
    
    Command.Event.Attach(Event.Unit.Castbar, _events.UnitCastBar, "nkCartographer.Unit.Castbar")
    Command.Event.Attach(Event.Unit.Detail.LocationName, _events.UpdateLocation, "nkCartographer.Unit.Detail.LocationName")
    
    Command.Event.Attach(Event.Achievement.Update, _events.achievementUpdate, "nkCartographer.Achievement.Update")

    if nkCartSetup.syncTarget == true then
      Command.Message.Accept("raid", "nkCartographer.target")
      Command.Message.Accept("party", "nkCartographer.target")
      
      Command.Event.Attach(Event.Message.Receive, _events.messageReceive, "nkCartographer.Message.Receive")
    end
    
    --[[
    local items = {
      { label = privateVars.langTexts.configuration, callBack = _internal.ShowConfig},
      { label = privateVars.langTexts.showhide, callBack = _internal.showHide},
      { label = privateVars.langTexts.toggle, callBack = function() uiElements.mapUI:ToggleMinMax() end}
    }
    
    EnKai.manager.init('nkCartographer', items, nil)
	  ]]
    
    Command.Console.Display("general", true, string.format(privateVars.langTexts.startUp, addonInfo.toc.Version), true)
    
    EnKai.version.init(addonInfo.toc.Identifier, addonInfo.toc.Version)
    
end

local function _performGatheringTransfer()

end

local function _transferGathering()

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
	  
	    nkCartSetup.x = EnKai.uiGetBoundRight() - 300
	  
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
          if string.find(key, "ARTIFAC") ~= nil then
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