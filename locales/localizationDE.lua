local addonInfo, privateVars = ...

---------- init namespace ---------

--local lang        = privateVars.langTexts

---------- init language texts ---------

if ( LibEKL.Tools.Lang.GetLanguage()  == "German") then
	
	privateVars.langTexts = {	  
		tabHeaderSettings    = 'Einstellungen',
		tabHeaderAbout		 = 'Über',
		btClose				 = 'Schliessen',
		labelGenericSettings = 'Basiseinstellungen',
		labelDisplaySettings = 'Anzeige Einstellungen',
		labelTrackSettings   = 'Aufzeichnungsoptionen',
		backgroundSelect     = 'Rahmen',
		lockedCheckbox       = 'Gesperrt',
		syncTargetCheckbox    = 'Gegner synchronisieren',
		txtNone              = 'Keiner',
		poiCheckbox          = 'Sehenswürdigkeiten',
		zoneTitleCheckbox    = 'Name der Zone',
		animationsCheckbox   = 'Animationen',
		animationsCheckboxheckboxInfo     = 'WARNUNG: Performance intensiv!',
		animationSpeedSlider = "Update Frequenz <font color='#3399FF'>%d%%</font>",
		rareCheckbox         = 'Seltene Mobs',
		rareCheckboxInfo     = 'Benötigt RareDar oder RareTracker',
		questCheckBox        = 'Quests',
		unknownCheckbox      = 'Unbekanntes',      
		gatheringCheckbox    = 'Sammeln aufzeichnen',
		artifactCheckbox     = 'Artefakte aufzeichnen',
		
		thanxLabel           = 'Besonderen Dank gilt folgenden Personen',
		thanxTesting         = 'gordi@zaviel für seine grandiose Testarbeit',
		thanxTesting2        = '',
		thanxLibs            = 'Ivnedar@Laethys für LibTransform2 und Rat',
		
		poiAchievement       = 'Erfolg',
		poiPuzzle            = 'Rätsel',
		
		startUp              = '<font color="#0094FF">nkCartographer</font> V%s geladen\n/nkCG toggle - Zwischen Mapgrössen wechseln\n/nkCG show - Map zeigen / verstecken\n/nkCG add x y title - Markierung hinzufügen\n/nkCG clear - Markierungen löschen',
		errorAddCommand		 = 'Ungültige Parameter für <font color="#0094FF">add</font> - Verwenden Sie /nkCG add x y titel',
		toggle				 = 'Vergrössern / Verkleinern',
		configuration		 = 'Konfiguration',
		showhide			 = 'Map zeigen / verstecken',
		
		waypointDialogTitle	 = 'Wegpunkt',
		coordLabel			 = 'Geben Sie die Koordinaten ein:',
		btSet				 = 'Setzen',

		questCarnage		 = "Massaker:"
  }
	

end