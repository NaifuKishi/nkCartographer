local addonInfo, privateVars = ...

---------- init namespace ---------

if not LibMap then LibMap = {} else return end
if not LibMap.manager then LibMap.ui = {} end

if not LibMap.eventHandlers then LibMap.eventHandlers = {} end
if not LibMap.events then LibMap.events = {} end
if not LibMap.internal then LibMap.internal = {} end -- sobald nkRadial umgebaut ist das hier komplett auf internal umbauen

privateVars.internal = {}
privateVars.data = {}
privateVars.oFuncs = {}

local internal    = privateVars.internal
local data        = privateVars.data
local oFuncs	  = privateVars.oFuncs

oFuncs.oInspectSystemSecure = Inspect.System.Secure
oFuncs.oInspectAddonCurrent = Inspect.Addon.Current
oFuncs.oInspectTimeReal		= Inspect.Time.Real
oFuncs.oInspectTimeFrame	= Inspect.Time.Frame
oFuncs.oInspectItemDetail	= Inspect.Item.Detail
oFuncs.oInspectUnitDetail	= Inspect.Unit.Detail

---------- init variables ---------



---------- init local variables ---------

local _libInit = false

---------- local function block ---------

local function _fctSettingsHandler(_, addon)
	
	if _libInit == true then return end
	
	if LibMap.internal.checkEvents ("LibMap.internal", true) == false then return nil end
		
	LibMap.eventHandlers["LibMap.internal"]["gcChanged"], LibMap.events["LibMap.internal"]["gcChanged"] = Utility.Event.Create(addonInfo.identifier, "LibMap.internal.gcChanged")
	
	LibMap.internal.checkEvents ("LibMap.map", true)
	LibMap.internal.checkEvents ("LibMap.waypoint", true)
	
	LibMap.eventHandlers["LibMap.map"]["add"], LibMap.events["LibMap.map"]["add"] = Utility.Event.Create(addonInfo.identifier, "LibMap.map.mapAdd")
	LibMap.eventHandlers["LibMap.map"]["change"], LibMap.events["LibMap.map"]["change"] = Utility.Event.Create(addonInfo.identifier, "LibMap.map.mapChange")
	LibMap.eventHandlers["LibMap.map"]["remove"], LibMap.events["LibMap.map"]["remove"] = Utility.Event.Create(addonInfo.identifier, "LibMap.map.mapRemove")
	LibMap.eventHandlers["LibMap.map"]["coord"], LibMap.events["LibMap.map"]["coord"] = Utility.Event.Create(addonInfo.identifier, "LibMap.map.mapCoord")	
	LibMap.eventHandlers["LibMap.map"]["zone"], LibMap.events["LibMap.map"]["zone"] = Utility.Event.Create(addonInfo.identifier, "LibMap.map.mapZone")
	LibMap.eventHandlers["LibMap.map"]["shard"], LibMap.events["LibMap.map"]["shard"] = Utility.Event.Create(addonInfo.identifier, "LibMap.map.mapShard")
	LibMap.eventHandlers["LibMap.map"]["unitAdd"], LibMap.events["LibMap.map"]["unitAdd"] = Utility.Event.Create(addonInfo.identifier, "LibMap.map.unitAdd")
	LibMap.eventHandlers["LibMap.map"]["unitChange"], LibMap.events["LibMap.map"]["unitChange"] = Utility.Event.Create(addonInfo.identifier, "LibMap.map.unitChange")
	LibMap.eventHandlers["LibMap.map"]["unitRemove"], LibMap.events["LibMap.map"]["unitRemove"] = Utility.Event.Create(addonInfo.identifier, "LibMap.map.unitRemove")

	LibMap.eventHandlers["LibMap.waypoint"]["change"], LibMap.events["LibMap.waypoint"]["change"] = Utility.Event.Create(addonInfo.identifier, "LibMap.waypoint.change")
	LibMap.eventHandlers["LibMap.waypoint"]["add"], LibMap.events["LibMap.waypoint"]["add"] = Utility.Event.Create(addonInfo.identifier, "LibMap.waypoint.add")
	LibMap.eventHandlers["LibMap.waypoint"]["remove"], LibMap.events["LibMap.waypoint"]["remove"] = Utility.Event.Create(addonInfo.identifier, "LibMap.waypoint.remove")
	
	internal.uiSetupBoundCheck()
	
	_libInit = true
		
end

-------------------- STARTUP EVENTS --------------------

Command.Event.Attach(Event.Addon.SavedVariables.Load.End, _fctSettingsHandler, "LibMap.settingsHandler.SavedVariables.Load.End")