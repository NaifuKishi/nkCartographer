local addonInfo, privateVars = ...

---------- init namespace ---------

local _internal		= privateVars.internal

---------- init local variables ---------

---------- init variables ---------

---------- local function block ---------

if privateVars.zoneLoader == nil then privateVars.zoneLoader = {} end

privateVars.zoneLoader['poa'] =
function() _internal.loadZones({
    z6FEC49CAE466B014={'q3AAF6A1A0F9719FD', 'q5AF1D846B31E4893', 'q533DB42AEDAB5E10', 'q5CCAE37DDE6F2328', 'q65319071E7500AF0','q71D8ABD02C34D9A1','q79C95A74EB585BD5'},
}) end
