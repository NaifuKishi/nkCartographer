local addonInfo, privateVars = ...

---------- init namespace ---------

local _internal		= privateVars.internal

---------- init local variables ---------

---------- init variables ---------

---------- local function block ---------

if privateVars.questLoader == nil then privateVars.questLoader = {} end

privateVars.questLoader['poa'] = 
function() _internal.loadQuests({
    q3AAF6A1A0F9719FD={lvl=70,type={1},domain='pvp'},
    q5AF1D846B31E4893={lvl=70,type={1},domain='pvp'},
    q533DB42AEDAB5E10={lvl=70,type={1},domain='pvp'},
    q5CCAE37DDE6F2328={lvl=70,type={1},domain='pvp'},
    q65319071E7500AF0={lvl=70},
    q71D8ABD02C34D9A1={lvl=70,type={3, 9}},
    q79C95A74EB585BD5={lvl=70},
}) end
