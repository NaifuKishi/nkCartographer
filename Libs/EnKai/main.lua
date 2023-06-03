local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} else return end
if not EnKai.manager then EnKai.ui = {} end

if not EnKai.eventHandlers then EnKai.eventHandlers = {} end
if not EnKai.events then EnKai.events = {} end
if not EnKai.internal then EnKai.internal = {} end -- sobald nkRadial umgebaut ist das hier komplett auf internal umbauen

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
	
	if EnKai.internal.checkEvents ("EnKai.internal", true) == false then return nil end
	
	local settings = {
		mmButtonX = - 231,
		mmButtonY = 37,
		locked = true
	}
	
	if EnKaiSetup == nil then
		if nkManagerSettings ~= nil then		
			EnKaiSetup = nkManagerSettings
		else
			EnKaiSetup = settings
		end
	else
		for k, v in pairs (settings) do if EnKaiSetup[k] == nil then EnKaiSetup[k] = v end end
	end
	
	EnKai.eventHandlers["EnKai.internal"]["gcChanged"], EnKai.events["EnKai.internal"]["gcChanged"] = Utility.Event.Create(addonInfo.identifier, "EnKai.internal.gcChanged")
	
	EnKai.internal.checkEvents ("EnKai.map", true)
	EnKai.internal.checkEvents ("EnKai.waypoint", true)
	
	EnKai.eventHandlers["EnKai.map"]["add"], EnKai.events["EnKai.map"]["add"] = Utility.Event.Create(addonInfo.identifier, "EnKai.map.mapAdd")
	EnKai.eventHandlers["EnKai.map"]["change"], EnKai.events["EnKai.map"]["change"] = Utility.Event.Create(addonInfo.identifier, "EnKai.map.mapChange")
	EnKai.eventHandlers["EnKai.map"]["remove"], EnKai.events["EnKai.map"]["remove"] = Utility.Event.Create(addonInfo.identifier, "EnKai.map.mapRemove")
	EnKai.eventHandlers["EnKai.map"]["coord"], EnKai.events["EnKai.map"]["coord"] = Utility.Event.Create(addonInfo.identifier, "EnKai.map.mapCoord")	
	EnKai.eventHandlers["EnKai.map"]["zone"], EnKai.events["EnKai.map"]["zone"] = Utility.Event.Create(addonInfo.identifier, "EnKai.map.mapZone")
	EnKai.eventHandlers["EnKai.map"]["shard"], EnKai.events["EnKai.map"]["shard"] = Utility.Event.Create(addonInfo.identifier, "EnKai.map.mapShard")
	EnKai.eventHandlers["EnKai.map"]["unitAdd"], EnKai.events["EnKai.map"]["unitAdd"] = Utility.Event.Create(addonInfo.identifier, "EnKai.map.unitAdd")
	EnKai.eventHandlers["EnKai.map"]["unitChange"], EnKai.events["EnKai.map"]["unitChange"] = Utility.Event.Create(addonInfo.identifier, "EnKai.map.unitChange")
	EnKai.eventHandlers["EnKai.map"]["unitRemove"], EnKai.events["EnKai.map"]["unitRemove"] = Utility.Event.Create(addonInfo.identifier, "EnKai.map.unitRemove")
	EnKai.eventHandlers["EnKai.waypoint"]["change"], EnKai.events["EnKai.waypoint"]["change"] = Utility.Event.Create(addonInfo.identifier, "EnKai.waypoint.change")
	EnKai.eventHandlers["EnKai.waypoint"]["add"], EnKai.events["EnKai.waypoint"]["add"] = Utility.Event.Create(addonInfo.identifier, "EnKai.waypoint.add")
	EnKai.eventHandlers["EnKai.waypoint"]["remove"], EnKai.events["EnKai.waypoint"]["remove"] = Utility.Event.Create(addonInfo.identifier, "EnKai.waypoint.remove")
	
	internal.uiSetupBoundCheck()
	
	_libInit = true
		
end

-------------------- STARTUP EVENTS --------------------

Command.Event.Attach(Event.Addon.SavedVariables.Load.End, _fctSettingsHandler, "EnKai.settingsHandler.SavedVariables.Load.End")