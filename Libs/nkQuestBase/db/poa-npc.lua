local addonInfo, privateVars = ...

---------- init namespace ---------

local _internal		= privateVars.internal

---------- init local variables ---------

---------- init variables ---------

---------- local function block ---------

if privateVars.npcLoader == nil then privateVars.npcLoader = {} end

privateVars.npcLoader['poa'] =
function() _internal.loadNPCs({
    U80000000F10004E0={DE='Arthor Tourney',FR='Arthor Tourney',EN='Arthor Tourney',scene={DE='Alittu',FR='Alittu',EN='Alittu'},lvl=70},
    U80000000F10004DF={DE='Viala Dunkelwetter',FR='Viala Dunkelwetter',EN='Viala Dunkelwetter',scene={DE='Alittu',FR='Alittu',EN='Alittu'},lvl=70},
    U80000000F10005BB={DE='Lana',FR='Lana',EN='Lana',scene={DE='Alittu',FR='Alittu',EN='Alittu'},lvl=68},
    U80000000F100047B={DE='Kommandant der Eingreiftruppe Korel',FR="Commandant Korel des Forces d'intervention",EN='Kommandant der Eingreiftruppe',scene={DE='Alittu',FR='Alittu',EN='Alittu'},lvl=70},
}) end
