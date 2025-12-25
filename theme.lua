local addonInfo, privateVars = ...

-- Initialize d
local data        = privateVars.data

data.theme = {
    windowStartColor = { r = 0.25, g = 0.25, b = 0.2, a = 0.7, position = 0 }, -- yellowish dark grey
    windowEndColor = { r = 0.1, g = 0.1, b = 0.1, a = 0.7, position = 1 },  -- Blackish gray
    labelColor = {r = 1, g = 0.8, b = 0, a = 1},
    formElementColorSub = {r = 0, g = 0, b = 0, a = 1},
    formElementColorMain = {r = 1, g = 0.8, b = 0, a = 1}
}