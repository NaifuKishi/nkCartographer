local addonInfo, privateVars = ...

---------- init namespace ---------

--local lang        = privateVars.langTexts

---------- init language texts ---------

if EnKai.tools.lang.getLanguage() == "English" or EnKai.tools.lang.getLanguage() == "French" then
	
	privateVars.langTexts = {
	  tabHeaderSettings	   = 'Settings',
		tabHeaderAbout		   = 'About',
		btClose				       = 'Close',
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
	animationSpeedSlider = 'Update frequency %d%%',
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
    
    startUp              =  '<font color="#0094FF">nkCartographer</font> V%s loaded\n/nkCG toggle - switch between map sizes\n/nkCG show - show / hide map\n/nkCG add x y title- Add custom mark\n/nkCG clear - Clear custom marks',
	errorAddCommand		 = 'Invalid command parameters for <font color="#0094FF">add</font> - Use /nkCG add x y title',
	toggle				 = 'Toggle size',
	configuration		 = 'Configuration',
	showhide			 = 'Show / hide map',
	
	waypointDialogTitle	 = 'Waypoint',
	coordLabel			 = 'Please enter the coordinates:',
	btSet				 = 'Set',
	}
	
end