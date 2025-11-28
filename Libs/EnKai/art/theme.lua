local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {}  end
if not EnKai.art then EnKai.art = {} end

local nkArt   = EnKai.art

---------- init local variables ---------

local _activeTheme = 'default'
local _themes = { default = { logo              = {'EnKai', 'gfx/EnKaiLogo.png'},
                              labelColor        = {r = 1, g = 1, b = 1, a = 1},
                              windowColor       = { { r = 0.126, g = 0.161, b = 0.196, a = .8}, { r = 0.126, g = 0.161, b = 0.196, a = .8}, 
                                                    { r = 1, g = 1, b = 1, a = 1}},
                              tabPaneColor      = { { r = 0.078, g = 0.188, b = 0.306, a = 1}, { r = 0.051, g = 0.118, b = 0.192, a = 1}, 
                                                    { r = 1, g = 1, b = 1, a = 1}, {r = 1, g = 1, b = 1, a = 1}, {r = 1, g = 1, b = 1, a = 1}},
                              gridColor         = { { r = 0.078, g = 0.188, b = 0.306, a = 1}, {r = 0.153, g = 0.314, b = 0.490, a = 1}, 
                                                    { r = 1, g = 1, b = 1, a = 1}, { r = 1, g = 1, b = 1, a = 1}, { r = 0, g = 0, b = 0, a = 1},
                                                    { r = 1, g = 1, b = 1, a = 1}, { r = 1, g = 1, b = 1, a = 1}, { r = 0.051, g = 0.118, b = 0.192, a = 1}},
                              elementMainColor  = {r = 0.153, g = 0.314, b = 0.490, a = 1},
                              elementSubColor   = {r = 0.153, g = 0.314, b = 0.490, a = 1},
                              elementSubColor2  = { r = 0.078, g = 0.188, b = 0.306, a = 1},
                              highlightColor    = { r = 1, g = 1, b = 1, a = 1}
  },
                bw              = { logo              = {'EnKai', 'gfx/EnKaiLogo.png'},
                                    labelColor        = {r = .7, g = .7, b = .7, a = 1},
                                    windowColor       = { { r = 0, g = 0, b = 0, a = 1}, { r = 0, g = 0, b = 0, a = .6}, 
                                                          { r = 1, g = 1, b = 1, a = 1}},
                                    tabPaneColor      = { { r = 0, g = 0, b = 0, a = 1}, { r = 0.07, g = 0.07, b = 0.07, a = .6}, 
                                                          { r = 1, g = 1, b = 1, a = 1}, {r = 1, g = 1, b = 1, a = 1}, {r = 1, g = 1, b = 1, a = 1}},
                                    gridColor         = { { r = 0.078, g = 0.188, b = 0.306, a = 1}, {r = 0.153, g = 0.314, b = 0.490, a = 1}, 
                                                          { r = 1, g = 1, b = 1, a = 1}, { r = 1, g = 1, b = 1, a = 1}, { r = 0, g = 0, b = 0, a = 1},
                                                          { r = 1, g = 1, b = 1, a = 1}, { r = 1, g = 1, b = 1, a = 1}, { r = 0.051, g = 0.118, b = 0.192, a = 1}},
                                    elementMainColor  = {r = 0.153, g = 0.314, b = 0.490, a = 1},
                                    elementSubColor   = {r = 0.153, g = 0.314, b = 0.490, a = 1},
                                    elementSubColor2  = { r = 0.078, g = 0.188, b = 0.306, a = 1},
                                    highlightColor    = { r = 1, g = 1, b = 1, a = 1}
                  },
                  nkUI = { logo = {'EnKai', 'gfx/EnKaiLogo.png'},
                  labelColor = {r = 0.9, g = 0.9, b = 0.9, a = 1},
    windowColor = {
      { r = 0.08, g = 0.08, b = 0.08, a = 0.9},
      { r = 0.08, g = 0.08, b = 0.08, a = 0.9},
      { r = 1, g = 1, b = 1, a = 1}
    },
    tabPaneColor = {
      { r = 0.12, g = 0.12, b = 0.12, a = 1},
      { r = 0.08, g = 0.08, b = 0.08, a = 1},
      { r = 1, g = 1, b = 1, a = 1},
      {r = 1, g = 1, b = 1, a = 1},
      {r = 1, g = 1, b = 1, a = 1}
    },
    gridColor = {
      { r = 0.12, g = 0.12, b = 0.12, a = 1},
      {r = 0.18, g = 0.18, b = 0.18, a = 1},
      { r = 1, g = 1, b = 1, a = 1},
      { r = 1, g = 1, b = 1, a = 1},
      { r = 0, g = 0, b = 0, a = 1},
      { r = 1, g = 1, b = 1, a = 1},
      { r = 1, g = 1, b = 1, a = 1},
      { r = 0.08, g = 0.08, b = 0.08, a = 1}
    },
    elementMainColor = {r = 0.2, g = 0.6, b = 1, a = 1}, -- Bright blue for borders and checkboxes
    elementSubColor = {r = 0.12, g = 0.12, b = 0.12, a = 1}, -- Darker color for button bodies and slider positions
    elementSubColor2 = { r = 0.12, g = 0.12, b = 0.12, a = 1},
    highlightColor = { r = 0.6, g = 0.8, b = 0.9, a = 1} -- Light blue color for slider positions
  }
}

---------- addon public function block ---------

function nkArt.SetTheme(themeId)    _activeTheme = themeId                        end
function nkArt.GetTheme(themeId)    return _activeTheme                           end
function nkArt.GetThemeList()       return EnKai.tools.table.getSortedKeys (_themes)  end
function nkArt.GetThemeColor(index) return _themes[_activeTheme][index]           end
function nkArt.GetThemeLogo()       return _themes[_activeTheme].logo             end