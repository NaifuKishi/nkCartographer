local addonInfo, privateVars = ...

---------- init namespace ---------

--local lang        = privateVars.langTexts

---------- init language texts ---------

if EnKai.tools.lang.getLanguage() == "Russian" then
  
  privateVars.langTexts = {
    tabHeaderSettings    = 'Settings',
    tabHeaderAbout       = 'About',
    btClose              = 'Close',
    labelGenericSettings = 'Generic settings',
    labelDisplaySettings = 'Display settings',
    labelTrackSettings   = 'Track settings',
    backgroundSelect     = 'Border',
    lockedCheckbox       = 'Locked',
    syncTargetCheckbox    = 'Sync enemies',
    txtNone              = 'None',
    poiCheckbox          = 'Points of interest',
    zoneTitleCheckbox    = 'Zone name',
    animationsCheckbox   = 'Animations',
	  animationsCheckboxheckboxInfo     = 'WARNING: performance intensive!',
	  animationSpeedSlider = "Update frequency <font color='#3399FF'>%d%%</font>",
    rareCheckbox         = 'Rare Mobs',
    rareCheckboxInfo     = 'Requires RareDar or RareTracker addon',
    questCheckBox        = 'Quests',
    unknownCheckbox      = 'Unknown',
    gatheringCheckbox    = 'Track gathering',
    artifactCheckbox     = 'Track artifacts',
    
    thanxLabel           = 'Specials thanks go to:',
    thanxTesting         = 'gordi@zaviel who\'s a great help getting my',
    thanxTesting2        = 'addons bug free',
    thanxLibs            = 'Ivnedar@Laethys for LibTransform2 and advise',
    
    poiAchievement       = 'Achievement',
    poiPuzzle            = 'Puzzle',
    
    startUp              =  '<font color="#0094FF">nkCartographer</font> V%s loaded\n/nkCG toggle - switch between map sizes\n/nkCG show - show / hide map',

    questCarnage		     = "Carnage:"
  }
  
end