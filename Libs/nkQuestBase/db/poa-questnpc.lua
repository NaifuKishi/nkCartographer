local addonInfo, privateVars = ...

---------- init namespace ---------

local _internal		= privateVars.internal

---------- init local variables ---------

---------- init variables ---------

---------- local function block ---------

if privateVars.npcquestLoader == nil then privateVars.npcquestLoader = {} end

privateVars.npcquestLoader['poa'] =
function() _internal.loadNPCQuests({
    U80000000F10004E0={'q3AAF6A1A0F9719FD', 'q5AF1D846B31E4893', 'q533DB42AEDAB5E10', 'q5CCAE37DDE6F2328'},
    U80000000F10004DF={'q65319071E7500AF0'},
    U80000000F10005BB={'q71D8ABD02C34D9A1'},
    U80000000F100047B={'q79C95A74EB585BD5'},
}) end
