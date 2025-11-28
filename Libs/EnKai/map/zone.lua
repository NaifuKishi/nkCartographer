local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.map then EnKai.map = {} end

local internal   = privateVars.internal

local InspectUnitDetail     = Inspect.Unit.Detail
local InspectAddonCurrent   = Inspect.Addon.Current
local InspectZoneDetail     = Inspect.Zone.Detail
local InspectConsoleList    = Inspect.Console.List
local InspectConsoleDetail  = Inspect.Console.Detail
local InspectShard          = Inspect.Shard
local InspectUnitList       = Inspect.Unit.List
local InspectMapList        = Inspect.Map.List

---------- init local variables ---------

local _zoneEvents = false
local _zoneData = {}
local _shardName = ""
--local updateTime

---------- set internal data ---------

local _zoneMapping= {
  world1 = {"z3DBE218325519634", "z798505F47158EF641", "z00000013CAF21BE3", "z000000069C1F0227", "z000000142C649218", "z00000016EB9ECBA5", "z0000001804F56C61", "z0000001A4AF8CD7A", "z0000001B2BB9E10E", "z019595DB11E70F58", "z1416248E485F6684", "z585230E5F68EA919", "z6BA3E574E9564149", "z76C88A5A51A38D90","z0000000CB7B53FD7", "z487C9102D2EA79BE", "z0000001CE3FE8B2C", "z798505F47158EF64"},  
  world2 = {"z10D7E74AB6D7B293", "z2F1E4708BEC6A608", "z48530386ED2EA5AD", "z4D8820D7EF52685C", "z563CB77E4A32233F", "z698CB7B72B3D69E9", "z754553DD46F46371", "z11173F9D259DAADE", "z1C938C07F41C83CC", "z2F9C9E1FF91F9293", "z39095BA75AD7DC03", "z59124F7DD7F15825", "z00000000F92992F2"},
  world3 = {"z0000012D6EEBB377", "z0000012E087E78E1", "z0000012F14279B5A", "z196650F5AA524928"},
  world4 = {"z6FEC49CAE466B014", "z5AA06689CCBB9285", "z7B2B0BB6E3EA1BEC", "z480CCFE1F3A277E9", "z77AC247EDB5F0186", "z2EF8C4A4103B159A", "z1E81B494CFA05AD0"},
  
  terminus		= {"z00EC7E88D7CC9977"},
  mathosia		= {"z0000000F382A777C"},
  planetouchedw = {"z0000001CE3FE8B2C"},    
  
  dimension_faensretreat          = {"z1D80C1C32D1B49EB"},
  dimension_hailol                = {"z0ACCBB7F73EAB386"},
  dimension_dolcegavalley         = {"z03611E2BC68B8471"},
  dimension_vengefulsky           = {"z4CF0DB12C39B5A44"},
  dimension_wardenspoint          = {"z7A46533FFCE88957"},
  dimension_empyreanmill          = {"z350E3DD769837AE5"},
  dimension_edgeofinfinity        = {"z55736BC0ABB70785"},
  dimension_dormantcore           = {"z4521408F44D41738"},
  dimension_auditoriumcarnosplaza = {"z61C80A2200B98A2E"},
  dimension_stoneflasktavern      = {"z2BC70E4903AFD604"},
  dimension_shorewardisland       = {"z0C7A552C417AFA2D"},
  dimension_bahraltsascent        = {"z3C7A1E242FA05FDF"},
  dimension_infinitygate          = {"z60F599DC201A974B"},
  dimension_threesprings          = {"z1448F56F23628D07"},
  dimension_towermeadow           = {"zFE59F29301FE0E4F"},
  dimension_tuldiosunorb          = {"z05F5ABBEFDF2ED2B"},
  dimension_castlefortune         = {"z241A45DDF1EBC0F9"},
  dimension_hallsofshaping        = {"z23D81F35A786EF05"},
  dimension_anywhere              = {"z7ABF85D9EE126B32"},
  dimension_kestrelscryravine     = {"z67D30B0E23D4E71D"},
  dimension_sanguine_shores		    = {"z35AF15C83AF5D79A"},
  
  
  wf_codex                = {"z3E4D09700894552E"},
  wf_theblackgarden       = {"z05F5E1003F3825C9"},
  wf_karthanridge         = {"z44D26A0CDAC02569"},
  wf_blightedantechamber  = {"z696E0362EDE1AC4B"},
  wf_whitefallsteppes     = {"z6B5AD834EA25B8F0"},
  wf_battleforportscion   = {"z3C5A92DE2A358F7F"},
  wf_gharstationeyn       = {"z19694FE4BDEDFFF4"},
  wf_libraryofrunemasters = {"z60A9C9C1C7D80AD0"},
  wf_bronzetomb			      = {"z194F291D5548958D"},
  
  chronicle_herorises     = {"z0141CAE86D63845B"},
  chronicle_infernaldawn  = {"z5E4806E8B6029FA2"},
  chronicle_planebreaker  = {"z0574E9FAB61259A8"},
  chronicle_skatherran		= {"z223F978C26438CBA"},
  chronicle_xarth			= {"z5BB72B13E2C25A14"},
  chronicle_gedlo			= {"z12B7695EABB56864"},
  chronicle_ashenfall		= {"z29C62C17C8FFBE46"},
  
  dungeon_irontomb             = {"z63CDD36DF6C01849"},
  dungeon_deepstrikemine       = {"z18968734FCBE911B"},
  dungeon_foulcascade          = {"z35DDFF1190688208"},
  dungeon_kingsbreach          = {"z327EFC0DB8BDF2C1"},
  dungeon_glacialmaw           = {"z569B28D8528D5EF3"},
  dungeon_lanternhook          = {"z27CCF897E4FB0FC4"},
  dungeon_charmerscaldera      = {"z62C9CD5CFA25BB31"},
  dungeon_nightmarecoast       = {"z4600C759281B0020"},
  dungeon_abyssalprecipice     = {"z295CA909CADD411F"},
  dungeon_runicdescent         = {"z71B2BDA5EB547772"},
  dungeon_darkeningdeeps       = {"z2F949CB02DF4A277"},
  dungeon_realmofthefae        = {"z22CFAB0A21D523EE"},
  dungeon_realmoftwisteddreams = {"z32CBCCE4E8DE11D9"},
  dungeon_stormbreakerprotocol = {"z5DB9395EDCEB6971"},
  dungeon_toweroftheshattered  = {"z534FB8BD5326DA9D"},
  dungeon_archiveofflesh       = {"z47D61B58166F7FD6"},
  dungeon_golemfoundry         = {"z3AB6CEC7BB32B6BA"},
  dungeon_unhallowedboneforge  = {"z2C8E81C0EF33A72B"},
  dungeon_empyreancore         = {"z44FC282F5C8B4976"},
  dungeon_gyelfortress         = {"z52E67CB8500AD7EB"},
  dungeon_citadelofinsanity    = {"z4141A2F7CF2BE5E7"},
  dungeon_exodusofthestormqueen= {"z3C1E5A27FCE87788"},
  dungeon_caduceusrise         = {"z75D546BB111B83A7"},
  dungeon_rhazadecanyons	     = {"z5D5EC5F61912F9EA"},
  dungeon_witchcircle			     = {"z7D01D8B1EE3AF5FA"},
  dungeon_themazeofsteel       = {"z56567A3CAF3F3794"},
  dungeon_templeofananke       = {"z6D32679BF5BCB74D"},
  
  shoresofterror               = {"z00000071F6B45F38"},
  
  raid_frozentempest           = {"z3686B447B0FA3A1C"},
  raid_cometofahnket		   = {"z05B9E2A09D1A0441"},
  
  hammerknell                  = {"z3EF52F80EB92ABA8"},
  greenscale                   = {"z6C80171E0E43B26E"},  
  riverofsouls                 = {"z6D63DC5B332895AC"},
  rhenoffate                   = {"z0BB0AC69E7C79347"},  
  mountsharax                  = {"z40E934612B00D95C"},
  tyrantsforge                 = {"z2FF62D10B6ECD38E"}, 
  mindofmadness		   		   = {"z2843DD1A185158B3"},
  --Glaciersend				   = {"z2843DD1A185158B3"}
  
}

local _zoneList= {
['z000000069C1F0227']={DE='Güldene Prophezeiung', EN='Gilded Prophecy', FR='Prophétie dorée', type='instance', map='world1'}
,['z000000069C1F0227']={DE='Schimmersand', EN='Shimmersand', FR='Sable-chatoyant', type='world', map='world1'}
,['z0000000CB7B53FD7']={DE='Silberwald', EN='Silverwood', FR='Bois d\'Argent', type='world', map='world1'}
,['z00000013CAF21BE3']={DE='Freimark', EN='Freemarch', FR='Libremarche', type='world', map='world1'}
,['z000000142C649218']={DE='Wundwaldregion', EN='Scarwood Reach', FR='Étendue de Bois Meurtris', type='world', map='world1'}
,['z00000016EB9ECBA5']={DE='Eisenkieferngipfel', EN='Iron Pine Peak', FR='Pic du Pin de fer', type='world', map='world1'}
,['z0000001804F56C61']={DE='Mondschattenberge', EN='Moonshade Highlands', FR='Hautes-Terres d\'Ombrelune', type='world', map='world1'}
,['z0000001A4AF8CD7A']={DE='Stillmoor', EN='Stillmoor', FR='Mornelande', type='world', map='world1'}
,['z0000001B2BB9E10E']={DE='Dämmerwald', EN='Gloamwood', FR='Bois du Crépuscule', type='world', map='world1'}
,['z0000012D6EEBB377']={DE='Goboro-Riff', EN='Goboro Reef', FR='Récif de Goboro', type='world', map='world3'}
,['z0000012E087E78E1']={DE='Draumheim', EN='Draumheim', FR='Draumheim', type='world', map='world3'}
,['z0000012F14279B5A']={DE='Tarken-Gletscher', EN='Tarken Glacier', FR='Glacier de Tarken', type='world', map='world3'}
,['z0141CAE86D63845B']={DE='Chronik: Ein Held erhebt sich', EN='Chronicle: A Hero Rises', FR='Chronique : La venue d\'un héros', type='instance', map='chronicle_herorises'}
,['z019595DB11E70F58']={DE='Scharlachrote Schlucht', EN='Scarlet Gorge', FR='Gorges Écarlates', type='world', map='world1'}
,['z0574E9FAB61259A8']={DE='Ebenenbrecher-Bastion', EN='Planebreaker Bastion', FR='Bastion des Planicides', type='instance', map='chronicle_planebreaker'}
,['z0BB0AC69E7C79347']={DE='Das Rhen des Schicksals', EN='The Rhen of Fate', FR='Le Rhen du Destin', type='instance', map='rhenoffate'}
,['z10D7E74AB6D7B293']={DE='Das Dendrom', EN='The Dendrome', FR='Le Rhizome', type='world', map='world2'}
,['z11173F9D259DAADE']={DE='Sturmbucht', EN='Tempest Bay', FR='Baie de la Tempête', type='world', map='world2'}
,['z1416248E485F6684']={DE='Ödlande', EN='Droughtlands', FR='Plaines Arides', type='world', map='world1'}
,['z18968734FCBE911B']={DE='Nach Tiefschlag zurückkehren', EN='Return to Deepstrike', FR='Retour à Couprofond', type='instance', map='dungeon_deepstrikemine'}
,['z18968734FCBE911B']={DE='Tiefschlagmine', EN='Deepstrike Mines', FR='Mines de Couprofond', type='instance', map='dungeon_deepstrikemine'}
,['z196650F5AA524928']={DE='Tyrannenthron', EN='Tyrant\'s Throne', FR='Trône du Tyran', type='world', map='world3'}
,['z1C938C07F41C83CC']={DE='Königreich Pelladane', EN='Kingdom of Pelladane', FR='Royaume de Pelladane', type='world', map='world2'}
,['z22CFAB0A21D523EE']={DE='Reich der Feen', EN='Realm of the Fae', FR='Royaume des Fées', type='instance', map='dungeon_realmofthefae'}
,['z27CCF897E4FB0FC4']={DE='Der Untergang von Laternenhaken', EN='The Fall of Lantern Hook', FR='La Chute de Saillant de Lanterne', type='instance', map='dungeon_lanternhook'}
,['z295CA909CADD411F']={DE='Abgründige Kluft', EN='Abyssal Precipice', FR='Précipice abyssal', type='instance', map='dungeon_abyssalprecipice'}
,['z2C8E81C0EF33A72B']={DE='Unheilige Knochenschmiede', EN='Unhallowed Boneforge', FR='Osserie impie', type='instance', map='dungeon_unhallowedboneforge'}
,['z2F1E4708BEC6A608']={DE='Ashora', EN='Ashora', FR='Ashora', type='world', map='world2'}
,['z2F949CB02DF4A277']={DE='Finstere Tiefen', EN='Darkening Deeps', FR='Profondeurs Insondables', type='instance', map='dungeon_darkeningdeeps'}
,['z2F9C9E1FF91F9293']={DE='Steppen der Unendlichkeit', EN='Steppes of Infinity', FR='Steppes de l\'Infini', type='world', map='world2'}
,['z327EFC0DB8BDF2C1']={DE='Königsbresche', EN='King\'s Breach', FR='Voie Royale', type='instance', map='dungeon_kingsbreach'}
,['z32CBCCE4E8DE11D9']={DE='Reich der Verwirrenden Träume', EN='Realm of Twisted Dreams', FR='Royaume des Rêves Étranges', type='instance', map='dungeon_realmoftwisteddreams'}
,['z35DDFF1190688208']={DE='Ekelkaskade', EN='Foul Cascade', FR='Cascade infecte', type='instance', map='dungeon_foulcascade'}
,['z3686B447B0FA3A1C']={DE='Froststurm', EN='Frozen Tempest', FR='Tempête de glace', type='instance', map='raid_frozentempest'}
,['z39095BA75AD7DC03']={DE='Morban', EN='Morban', FR='Morban', type='world', map='world2'}
,['z3AB6CEC7BB32B6BA']={DE='Golemgießerei', EN='Golem Foundry', FR='Fabrique de golems', type='instance', map='dungeon_golemfoundry'}
,['z3C1E5A27FCE87788']={DE='Exodus der Sturmkönigin', EN='Exodus of the Storm Queen', FR='Exode de la Reine des Tempêtes', type='instance', map='dungeon_exodusofthestormqueen'}
,['z3C5A92DE2A358F7F']={DE='Kampf um Sprosshafen', EN='The Battle for Port Scion', FR='La Bataille pour Port Scion', type='warfront', map='wf_battleforportscion'}
,['z3EF52F80EB92ABA8']={DE='Chronik: Festung Hammerhall', EN='Chronicle: Hammerknell Fortress', FR='Chronique : Forteresse de Glasmarteau', type='instance', map='hammerknell'}
,['z3EF52F80EB92ABA8']={DE='Chronik: Hammerhall: Renaissance', EN='Chronicle: Hammerknell: Renaissance', FR='Chronique : Renaissance de Glasmarteau', type='instance', map='hammerknell'}
,['z3EF52F80EB92ABA8']={DE='Festung Hammerhall', EN='Hammerknell Fortress', FR='Forteresse de Glasmarteau', type='instance', map='hammerknell'}
,['z4141A2F7CF2BE5E7']={DE='Zitadelle des Irrsinns', EN='Citadel of Insanity', FR='Citadelle de la Démence', type='instance', map='dungeon_citadelofinsanity'}
,['z44FC282F5C8B4976']={DE='Empyreum-Kern', EN='Empyrean Core', FR='Cœur empyréen', type='instance', map='dungeon_empyreancore'}
,['z44FC282F5C8B4976']={DE='Rückkehr zum Empyreum-Kern', EN='Return to Empyrean Core', FR='Retour au Cœur empyréen', type='instance', map='dungeon_empyreancore'}
,['z4600C759281B0020']={DE='Albtraumküste', EN='Nightmare Coast', FR='Côte Cauchemardesque', type='instance', map='dungeon_nightmarecoast'}
,['z47D61B58166F7FD6']={DE='Fleisch-Archiv', EN='Archive of Flesh', FR='Archives de Chair', type='instance', map='dungeon_archiveofflesh'}
,['z48530386ED2EA5AD']={DE='Östliche Besitztümer', EN='Eastern Holdings', FR='Fiefs de l\'Orient', type='world', map='world2'}
,['z487C9102D2EA79BE']={DE='Sanctum', EN='Sanctum', FR='Sanctum', type='world', map='world1'}
,['z4D8820D7EF52685C']={DE='Königszirkel', EN='Kingsward', FR='Protectorat du Roi', type='world', map='world2'}
,['z52E67CB8500AD7EB']={DE='Gyel-Festung', EN='Gyel Fortress', FR='Forteresse Gyel', type='instance', map='dungeon_gyelfortress'}
,['z534FB8BD5326DA9D']={DE='Turm der Zerschmetterten', EN='Tower of the Shattered', FR='Tour des Résignés', type='instance', map='dungeon_toweroftheshattered'}
,['z563CB77E4A32233F']={DE='Eiferer-Reich', EN='Ardent Domain', FR='Contrée Ardente', type='world', map='world2'}
,['z569B28D8528D5EF3']={DE='Gletscherschlund', EN='Glacial Maw', FR='Gueule Glaciale', type='instance', map='dungeon_glacialmaw'}
,['z585230E5F68EA919']={DE='Aufstieg des Phönix', EN='Rise of the Phoenix', FR='Envol du Phénix', type='instance', map='world1'}
,['z585230E5F68EA919']={DE='Steinfeld', EN='Stonefield', FR='Champ de Pierre', type='world', map='world1'}
,['z59124F7DD7F15825']={DE='Seratos', EN='Seratos', FR='Serratos', type='world', map='world2'}
,['z5DB9395EDCEB6971']={DE='Sturmbrecher-Protokoll', EN='Storm Breaker Protocol', FR='Stratagème de Brise-tempête', type='instance', map='dungeon_stormbreakerprotocol'}
,['z5E4806E8B6029FA2']={DE='Höllendämmerung', EN='Infernal Dawn', FR='Aurore infernale', type='instance', map='chronicle_infernaldawn'}
,['z5E4806E8B6029FA2']={DE='Höllendämmerung:', EN='Infernal Dawn', FR='Aurore Infernale', type='instance', map='chronicle_infernaldawn'}
,['z62C9CD5CFA25BB31']={DE='Zaubererkessel', EN='Charmer\'s Caldera', FR='Caldera du Charmeur', type='instance', map='dungeon_charmerscaldera'}
,['z63CDD36DF6C01849']={DE='Eisengrab', EN='Iron Tomb', FR='Tombe de Fer', type='instance', map='dungeon_irontomb'}
,['z63CDD36DF6C01849']={DE='Rückkehr zum Eisengrab', EN='Return to Iron Tomb', FR='Retour à la Tombe de Fer', type='instance', map='dungeon_irontomb'}
,['z698CB7B72B3D69E9']={DE='Kap Jul', EN='Cape Jule', FR='Cap Yule', type='world', map='world2'}
,['z6BA3E574E9564149']={DE='Meridian', EN='Meridian', FR='Méridian', type='world', map='world1'}
,['z6C80171E0E43B26E']={DE='Chronik: Grünschuppes Pesthauch', EN='Chronicle: Greenscale\'s Blight', FR='Chronique : Fléau de Vertécaille', type='instance', map='greenscale'}
,['z6C80171E0E43B26E']={DE='Grünschuppes Pesthauch', EN='Greenscale\'s Blight', FR='Fléau de Vertécaille', type='instance', map='greenscale'}
,['z6D63DC5B332895AC']={DE='Seelenfluss', EN='River of Souls', FR='Fleuve des Âmes', type='instance', map='riverofsouls'}
,['z71B2BDA5EB547772']={DE='Runental', EN='Runic Descent', FR='Descente runique', type='instance', map='dungeon_runicdescent'}
,['z754553DD46F46371']={DE='Stadtkern', EN='City Core', FR='Cœur de la Cité', type='world', map='world2'}
,['z75D546BB111B83A7']={DE='Hermesstab-Anhöhe', EN='Caduceus Rise', FR='Butte du Caducée', type='instance', map='dungeon_caduceusrise'}
,['z76C88A5A51A38D90']={DE='Glutinsel', EN='Ember Isle', FR='Île de Braise', type='world', map='world1'}
,['z6D63DC5B332895AC']={DE='Chronik: Seelenfluss', EN='Chronicle: River of Souls', FR='Chronique : Fleuve des Âmes', type='instance', map='riverofsouls'}
,['z00EC7E88D7CC9977']={DE='Terminus', EN='Terminus', FR='Terminus', type='world', map='terminus'}
,['z0000000F382A777C']={DE='Mathosia', EN='Mathosia', FR='Mathosia', type='world', map='mathosia'}
,['z40E934612B00D95C']={DE='Sharax', EN='Mount Sharax', FR='Mont Sharax', type='instance', map='mountsharax'}
,['z3DBE218325519634']={DE='See des Trostes', EN='Lake of Solace', FR='Lac de la Consolation', type='world', map='world1'}
,['z2843DD1A185158B3']={DE='Der Geist des Wahnsinns', EN='The Mind of Madness', FR='L\'Esprit de la folie', type='instance', map='mindofmadness'}
,['z5D5EC5F61912F9EA']={DE='Rhaza\'de Canyons', EN='Rhaza\'de Canyons', FR='Rhaza\'de Canyons', type='instance', map='dungeon_rhazadecanyons'}
,['z0000001CE3FE8B2C']={DE='Ebenenberührte Wildnis', EN='Planetouched Wilds', FR='Étendues marquées par les Plans', type='world', map='planetouchedw'}
,['z05B9E2A09D1A0441']={DE='Komet von Ahnket', EN='Comet of Ahnket', FR='Comète d\'Ahnket', type='instance', map="raid_cometofahnket"}
,["z6FEC49CAE466B014"]={DE='Alittu', EN='Alittu', FR='Alittu', type='world', map="world4"}
,["z5AA06689CCBB9285"]={DE='Tenebrische Spaltung', EN='Tenebrean Schism', FR='Schisme Ténébréen', type='world', map="world4"}
,["z7B2B0BB6E3EA1BEC"]={DE='Skatherran-Wald', EN='Scatherran Forest', FR='Forêt des Bourreaux', type='world', map="world4"}
,["z480CCFE1F3A277E9"]={DE='Xarth-Sumpf', EN='Xarth Mire', FR='Bourbier de Xarth', type='world', map="world4"}
,["z77AC247EDB5F0186"]={DE='Aschenfall', EN='Ashenfall', FR='Chutecendres', type='world', map="world4"}
,["z2EF8C4A4103B159A"]={DE='Gedlonianisches Ödland', EN='Gedlo Badlands', FR='Maleterres de Gedlo', type='world', map="world4"}
,["z223F978C26438CBA"]={DE='Chronik: Skatherran-Wald', EN='Chronicle: Scatherran Forest', FR='Chronique: Forêt des Bourreaux', type='instance', map="chronicle_skatherran"}
,["z5BB72B13E2C25A14"]={DE='Chronik: Xarth-Sumpf', EN='Chronicle: Xarth Mire', FR='Chronique: Bourbier de Xarth', type='instance', map="chronicle_xarth"}
,["z7D01D8B1EE3AF5FA"]={DE="Tuath'de-Hexenzirkel", EN="Tuath'de Coven", FR="Tuath'de Coven", type='instance', map="dungeon_witchcircle"}
,["z12B7695EABB56864"]={DE="Chronik: Gedlonianisches Ödland", EN='Chronicle: Gedlo Badlands', FR='Chronique: Maleterres de Gedlo', type='instance', map="chronicle_gedlo"}
,["z29C62C17C8FFBE46"]={DE="Chronik: Aschenfall", EN='Chronicle: Ashenfall', FR='Chronique: Chutecendres', type='instance', map="chronicle_ashenfall"}
,["z798505F47158EF64"]={DE="Wrack der Esperanza", EN='Wreck of the Endeavor', FR="L'épave du Novia", type='world', map="world1"}
,["z1E81B494CFA05AD0"]={DE="Vostigar-Gipfel", EN='Vostigar Peaks', FR="Pics de Vostigar", type='world', map="world4"}
,["z56567A3CAF3F3794"]={DE="Das Stählerne Labyrinth", EN='The Maze of Steel', FR="Le labyrinthe d'acier", type='instance', map="dungeon_themazeofsteel"}
,["z6D32679BF5BCB74D"]={DE="Tempel von Ananke", EN='Temple of Ananke', FR="Temple d'Ananke", type='instance', map="dungeon_templeofananke"}
}

local _zoneMapPOI = {
  z1E81B494CFA05AD0 = {	["z1E81B494CFA05AD0poi1"] = { coordX = 4022, coordZ = 2064, DE = "Der Turm des Magiers", EN = "The Magician's Tower", type = "POI.PORTAL" },
                        ["z1E81B494CFA05AD0poi2"] = { coordX = 4032, coordZ = 3420, DE = "Uttila-Ost", EN = "Uttila East", type = "POI.PORTAL" },
                        ["z1E81B494CFA05AD0poi3"] = { coordX = 3082, coordZ = 2229, DE = "Kilcual", EN = "Kilcual", type = "POI.PORTAL" },
                        ["z1E81B494CFA05AD0poi4"] = { coordX = 3815, coordZ = 3857, DE = "Treppe von Vostigar", EN = "Vostigar Stairs", type = "POI.PORTAL" },
                        ["z1E81B494CFA05AD0poi5"] = { coordX = 4024, coordZ = 1685, DE = "Die stählerne Bastion", EN = "The Bastion of Steel", type = "POI.DUNGEON" },
                     },
	z6FEC49CAE466B014 = {	["z6FEC49CAE466B014poi1"] = { coordX = 4068, coordZ = 6297, DE = "Alittu", EN = "Alittu", type = "POI.PORTAL" },
                        ["z6FEC49CAE466B014poi2"] = { coordX = 4054, coordZ = 6055, DE = "Enclave of Ahnket", EN = "Enclave of Ahnket", type = "POI.DUNGEON" },
                        ["z6FEC49CAE466B014poi3"] = { coordX = 4024, coordZ = 6267, DE = "Intrepid Darkening Deeps", EN = "Intrepid Darkening Deeps", type = "POI.DUNGEON" },
                     },
	z7B2B0BB6E3EA1BEC = {	["z7B2B0BB6E3EA1BECpoi1"] = { coordX = 4866, coordZ = 5795, DE = "Feilbocan", EN = "Feilbocan", type = "POI.PORTAL" },
                        ["z7B2B0BB6E3EA1BECpoi2"] = { coordX = 6221, coordZ = 5618, DE = "Schwarzdornfälle", EN = "Blackthorn Fall", type = "POI.PORTAL" },
                        ["z7B2B0BB6E3EA1BECpoi3"] = { coordX = 5247, coordZ = 5019, DE = "Schattenmarkt", EN = "Shadow Market", type = "POI.PORTAL" },
                        ["z7B2B0BB6E3EA1BECpoi4"] = { coordX = 5519, coordZ = 4884, DE = "Tuath’de Coven", EN = "Tuath’de Coven", type = "POI.DUNGEON" }},
	z480CCFE1F3A277E9 = {	["z480CCFE1F3A277E9poi1"] = { coordX = 4175, coordZ = 3897, DE = "Bailghol", EN = "Bailghol", type = "POI.PORTAL" },
						          	["z480CCFE1F3A277E9poi2"] = { coordX = 4036, coordZ = 4285, DE = "Lager Morast", EN = "Camp Mire", type = "POI.PORTAL" }},
	z5AA06689CCBB9285 = {	 },
	z77AC247EDB5F0186 = {	["z77AC247EDB5F0186poi1"] = { coordX = 3133, coordZ = 5291, DE = "Lager Veist", EN = "Camp Veist", type = "POI.PORTAL" },
							          ["z77AC247EDB5F0186poi2"] = { coordX = 2615, coordZ = 4300, DE = "Thedeors Speer", EN = "Thedeor’s Spear", type = "POI.PORTAL" },
                        ["z77AC247EDB5F0186poi3"] = { coordX = 2176, coordZ = 4601, DE = "Tartarische Tiefen", EN = "Tartaric Depths", type = "POI.DUNGEON" },
                        ["z77AC247EDB5F0186poi4"] = { coordX = 2650, coordZ = 4428, DE = "Temple von Ananke", EN = "Temple of Ananke", type = "POI.DUNGEON" },
                        ["z77AC247EDB5F0186poi5"] = { coordX = 3490, coordZ = 4717, DE = "Intrepid Gyel Fortress", EN = "Intrepid Gyel Fortress", type = "POI.DUNGEON" },
                      },
	z2EF8C4A4103B159A = {	["z2EF8C4A4103B159Apoi1"] = { coordX = 3601, coordZ = 6493, DE = "Sankt Tanaris", EN = "Saint Tanaris", type = "POI.PORTAL" },
							          ["z2EF8C4A4103B159Apoi2"] = { coordX = 2015, coordZ = 6836, DE = "Tal des Morgensterns", EN = "Valley of the Morning Start", type = "POI.PORTAL" }},
  z000000069C1F0227 = { ["z000000069C1F0227poi1"] = { coordX = 5626, coordZ = 6646, DE = "Scheuerschwallhafen", EN = "Gritsquall Haven", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi2"] = { coordX = 6086, coordZ = 7309, DE = "Wurmfluchspitze", EN = "Wyrmbane Spire", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi3"] = { coordX = 6530, coordZ = 7425, DE = "Windzorn-Außenposten", EN = "Windfury Post", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi4"] = { coordX = 6544, coordZ = 7353, DE = "Albtraumküste", EN = "Nightmare Coast", type = "POI.DUNGEON" },
                        ["z000000069C1F0227poi5"] = { coordX = 6736, coordZ = 7377, DE = "Leestein-Posten", EN = "Leestone Stand", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi6"] = { coordX = 7094, coordZ = 7341, DE = "Khalati-Zuflucht", EN = "Khaliti Refuge", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi7"] = { coordX = 7019, coordZ = 7082, DE = "Nomadenofen", EN = "Nomad's Furnace", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi8"] = { coordX = 7038, coordZ = 6749, DE = "Sandachsengrube", EN = "Sandaxle Pit", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi9"] = { coordX = 6641, coordZ = 6603, DE = "Totenschlucht", EN = "", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi10"] = { coordX = 6771, coordZ = 6582, DE = "Verborgene Bastion", EN = "Veiled Bastion", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi11"] = { coordX = 6677, coordZ = 6346, DE = "Der Flachhof", EN = "The Flatyard", type = "POI.OTHER" },
                        ["z000000069C1F0227poi12"] = { coordX = 7306, coordZ = 7590, DE = "Mondscheinhöhle", EN = "Moonrise Hollow", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi13"] = { coordX = 7152, coordZ = 7612, DE = "Zauberkessel", EN = "Charmer's Caldera", type = "POI.DUNGEON" },
                        ["z000000069C1F0227poi14"] = { coordX = 6637, coordZ = 6603, DE = "Glimmlicht", EN = "Glimmering Light", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi15"] = { coordX = 6608, coordZ = 6975, DE = "Glücksküste", EN = "Fortune's Shore", type = "POI.QUESTHUB" },
                        ["z000000069C1F0227poi16"] = { coordX = 6725, coordZ = 7085, DE = "Glücksküste", EN = "Fortune's Shore", type = "POI.PORTAL" },
                        ["z000000069C1F0227poi17"] = { coordX = 6080, coordZ = 7335, DE = "Wurmfluchspitze", EN = "Wyrmbane Spire", type = "POI.PORTAL" },
                      },
  z1416248E485F6684 = { ["z1416248E485F6684poi1"] = { coordX = 8903, coordZ = 6831, DE = "Steinerne Ruine", EN = "Redoubt", type = "POI.OTHER" },
                        ["z1416248E485F6684poi2"] = { coordX = 7697, coordZ = 6640, DE = "Brutwacht-Posten", EN = "Broodwatch Post", type = "POI.QUESTHUB" },
                        ["z1416248E485F6684poi3"] = { coordX = 8045, coordZ = 6840, DE = "Harlans Klage", EN = "Harlan's Lament", type = "POI.OTHER" },
                        ["z1416248E485F6684poi4"] = { coordX = 8268, coordZ = 7224, DE = "Bisshügel", EN = "Mordant Knolls", type = "POI.OTHER" },
                        ["z1416248E485F6684poi5"] = { coordX = 8374, coordZ = 7363, DE = "Spaltrachenweiher", EN = "Splitmouth Ponds", type = "POI.OTHER" },
                        ["z1416248E485F6684poi6"] = { coordX = 8509, coordZ = 7349, DE = "Spaltrachen-Arena", EN = "Splitmouth Arena", type = "POI.OTHER" },
                        ["z1416248E485F6684poi7"] = { coordX = 8625, coordZ = 6995, DE = "Schlupfwinkel", EN = "Fallback", type = "POI.QUESTHUB" },
                        ["z1416248E485F6684poi8"] = { coordX = 8545, coordZ = 6636, DE = "Jägerlager", EN = "Hunter's Camp", type = "POI.QUESTHUB" },
                        ["z1416248E485F6684poi9"] = { coordX = 8669, coordZ = 6474, DE = "Räuberklippe", EN = "Brigand's Bluff", type = "POI.QUESTHUB" },
                        ["z1416248E485F6684poi10"] = { coordX = 8022, coordZ = 6355, DE = "Zentaurenholz", EN = "Centaurs' Stand", type = "POI.OTHER" },
                        ["z1416248E485F6684poi11"] = { coordX = 7654, coordZ = 6337, DE = "Laternenhaken", EN = "Latern Hook", type = "POI.QUESTHUB" },
                        ["z1416248E485F6684poi12"] = { coordX = 7401, coordZ = 6196, DE = "Laternenplateau", EN = "Lantern Plateau", type = "POI.QUESTHUB" },
                        ["z1416248E485F6684poi13"] = { coordX = 7890, coordZ = 6047, DE = "Bastard-Ausläufer", EN = "Mongrel Foothills", type = "POI.OTHER" },
                        ["z1416248E485F6684poi14"] = { coordX = 7522, coordZ = 5912, DE = "Getreunhöhe", EN = "Stalwart Rise", type = "POI.OTHER" },
                        ["z1416248E485F6684poi15"] = { coordX = 8647, coordZ = 6995, DE = "Schlupfwinkel", EN = "Fallback", type = "POI.PORTAL" },
                        ["z1416248E485F6684poi16"] = { coordX = 7695, coordZ = 6165, DE = "Laternenhaken", EN = "Latern Hook", type = "POI.PORTAL" },
                        ["z1416248E485F6684poi17"] = { coordX = 7745, coordZ = 6870, DE = "Sturmbrutversteck", EN = "Stormbrood Lair", type = "POI.OTHER" },                      
                      },
  z00000013CAF21BE3 = { ["z00000013CAF21BE3poi1"] = { coordX = 7259, coordZ = 5424, DE = "Denegars Stand", EN = "Denegar's Stand", type = "POI.QUESTHUB" },
                        ["z00000013CAF21BE3poi2"] = { coordX = 7190, coordZ = 5264, DE = "Denegars Stand", EN = "Smith's Haven", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi3"] = { coordX = 7036, coordZ = 5095, DE = "Ritterposten", EN = "Knight's Stand", type = "POI.QUESTHUB" },
                        ["z00000013CAF21BE3poi4"] = { coordX = 7092, coordZ = 4870, DE = "Glücksend", EN = "Fortune's End", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi5"] = { coordX = 6757, coordZ = 4684, DE = "Meersteinklippe", EN = "Seastone Bluff", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi6"] = { coordX = 6627, coordZ = 4539, DE = "Kelari-Zuflucht", EN = "Kelari Refuge", type = "POI.QUESTHUB" },
                        ["z00000013CAF21BE3poi7"] = { coordX = 6340, coordZ = 4330, DE = "Regentenbucht", EN = "Reagent's Cove", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi8"] = { coordX = 6148, coordZ = 4113, DE = "Gründerschwelle", EN = "Founder's Threshold", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi9"] = { coordX = 6198, coordZ = 4382, DE = "Arche der Auserwählten", EN = "Ark of the Ascended", type = "POI.QUESTHUB" },
                        ["z00000013CAF21BE3poi10"] = { coordX = 6284, coordZ = 4538, DE = "Königliches Refugium", EN = "King's Retreat", type = "POI.QUESTHUB" },
                        ["z00000013CAF21BE3poi11"] = { coordX = 6172, coordZ = 4811, DE = "Das Eisengrab", EN = "The Iron Tomb", type = "POI.DUNGEON" },
                        ["z00000013CAF21BE3poi12"] = { coordX = 6471, coordZ = 4861, DE = "Eliamfelder", EN = "Eliam Fields", type = "POI.QUESTHUB" },                        
                        ["z00000013CAF21BE3poi13"] = { coordX = 6083, coordZ = 5192, DE = "Meridian", EN = "Meridian", FR = "4 Not yet translated", RU = "", type = "POI.QUESTHUB" },
                        ["z00000013CAF21BE3poi14"] = { coordX = 5938, coordZ = 5761, DE = "Überbleibsel", EN = "Vestige", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi15"] = { coordX = 6194, coordZ = 5629, DE = "Seeblick-Außenposten", EN = "Lakeside Outpost", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi16"] = { coordX = 6940, coordZ = 5870, DE = "Wildhügel", EN = "Savage Hill", type = "POI.QUESTHUB" },
                        ["z00000013CAF21BE3poi17"] = { coordX = 6960, coordZ = 5412, DE = "Die Eiserne Festung", EN = "The Iron Fortress", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi18"] = { coordX = 6649, coordZ = 5415, DE = "Narbenmoor", EN = "Scarred Mire", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi19"] = { coordX = 6702, coordZ = 5131, DE = "Der Rillteich", EN = "The Rill Pond", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi20"] = { coordX = 6632, coordZ = 5007, DE = "Todrin-Anwesen", EN = "Todrin Estate", type = "POI.OTHER" },
                        ["z00000013CAF21BE3poi21"] = { coordX = 7290, coordZ = 5420, DE = "Denegars Stand", EN = "Denegar's Stand", type = "POI.PORTAL" },
                        ["z00000013CAF21BE3poi22"] = { coordX = 6145, coordZ = 5175, DE = "Meridian", EN = "Meridian", type = "POI.PORTAL" },
                        ["z00000013CAF21BE3poi23"] = { coordX = 6230, coordZ = 4390, DE = "Arche der Auserwählten", EN = "Ark of the Ascended", type = "POI.PORTAL" },
                    },
  z6BA3E574E9564149 = { ["z6BA3E574E9564149poi1"] = { coordX = 6145, coordZ = 5175, DE = "Meridian", EN = "Meridian", type = "POI.PORTAL" },
                        ["z6BA3E574E9564149poi2"] = { coordX = 6140, coordZ = 5185, DE = "Zum Kontinent der Sturmlegion teleportieren", EN = "Teleport to Storm Legion", type = "POI.PORTALWORLD" },
                        ["z6BA3E574E9564149poi3"] = { coordX = 6080, coordZ = 5190, DE = "Meridian", EN = "Meridian", type = "POI.QUESTHUB" },
  },  
  z585230E5F68EA919 = { ["z585230E5F68EA919poi1"] = { coordX = 4001, coordZ = 5609, DE = "Das Endtal", EN = "The Last Valley", type = "POI.OTHER" },
                        ["z585230E5F68EA919poi2"] = { coordX = 4116, coordZ = 5316, DE = "Passage der Alten", EN = "Passage of the Ancients", type = "POI.OTHER" },
                        ["z585230E5F68EA919poi3"] = { coordX = 4486, coordZ = 5267, DE = "Titanenbrunnen", EN = "Titan's Well", type = "POI.OTHER" },
                        ["z585230E5F68EA919poi4"] = { coordX = 4654, coordZ = 5133, DE = "Fergos-Lager", EN = "Camp Fergos", type = "POI.QUESTHUB" },
                        ["z585230E5F68EA919poi5"] = { coordX = 4809, coordZ = 5380, DE = "Tiefschlag-Ausgrabung", EN = "Deepstrike Excavation", type = "POI.DUNGEON" },
                        ["z585230E5F68EA919poi6"] = { coordX = 4917, coordZ = 5008, DE = "Granitsturz", EN = "Granite Falls", type = "POI.QUESTHUB" },
                        ["z585230E5F68EA919poi7"] = { coordX = 5089, coordZ = 4759, DE = "Die Egge", EN = "The Harrow", type = "POI.CAVE" },
                        ["z585230E5F68EA919poi8"] = { coordX = 5193, coordZ = 5305, DE = "Grausknochen-Grat", EN = "Dreadbone Shelf", type = "POI.OTHER" },
                        ["z585230E5F68EA919poi9"] = { coordX = 5471, coordZ = 4998, DE = "Titanenruh", EN = "Titan's Rest", type = "POI.OTHER" },
                        ["z585230E5F68EA919poi10"] = { coordX = 5712, coordZ = 5096, DE = "Lager Klüngel", EN = "Coterie Camp", type = "POI.QUESTHUB" },
                        ["z585230E5F68EA919poi11"] = { coordX = 5684, coordZ = 4749, DE = "Lager im Bruchsteinbecken", EN = "Quarrystone Base Camp", type = "POI.QUESTHUB" },
                        ["z585230E5F68EA919poi12"] = { coordX = 5030, coordZ = 5050, DE = "Granitsturz", EN = "Granite Falls", type = "POI.PORTAL" },
                        ["z585230E5F68EA919poi13"] = { coordX = 4460, coordZ = 4975, DE = "Sonnrastbrücke", EN = "Sunrest Bridge", type = "POI.PORTAL" },
                        ["z585230E5F68EA919poi14"] = { coordX = 5695, coordZ = 5125, DE = "Lager Klüngel", EN = "Coterie Camp", type = "POI.PORTAL" },
  },
  
  z019595DB11E70F58 = { ["z019595DB11E70F58poi1"] = { coordX = 4592, coordZ = 4392, DE = "Wundwald-Lift, Basis", EN = "Scarwood Lift Base", type = "POI.QUESTHUB" },
                        ["z019595DB11E70F58poi2"] = { coordX = 4293, coordZ = 4301, DE = "Schlachtenfels", EN = "Frayworn Rock", type = "POI.CAVE" },
                        ["z019595DB11E70F58poi3"] = { coordX = 4704, coordZ = 4200, DE = "Eisenwurzelschacht", EN = "Ironroot Draw", type = "POI.OTHER" },
                        ["z019595DB11E70F58poi4"] = { coordX = 4648, coordZ = 3891, DE = "Donnerwerkjoch", EN = "Thunderwork Ridge", type = "POI.CAVE" },
                        ["z019595DB11E70F58poi5"] = { coordX = 4346, coordZ = 3921, DE = "Felslift", EN = "Rocklift", type = "POI.QUESTHUB" },
                        ["z019595DB11E70F58poi6"] = { coordX = 4473, coordZ = 3555, DE = "Felsgrat", EN = "Rock Ridge", type = "POI.OTHER" },
                        ["z019595DB11E70F58poi7"] = { coordX = 4795, coordZ = 3470, DE = "Dunkelfeuerhain", EN = "Darkfire  Grove", type = "POI.OTHER" },
                        ["z019595DB11E70F58poi8"] = { coordX = 4050, coordZ = 3418, DE = "Dämonentreppe", EN = "Demon Steps", type = "POI.OTHER" },
                        ["z019595DB11E70F58poi9"] = { coordX = 3986, coordZ = 3280, DE = "Steinkrone", EN = "Stonecrest", type = "POI.OTHER" },
                        ["z019595DB11E70F58poi10"] = { coordX = 3817, coordZ = 3243, DE = "Hainheber", EN = "Grove Lift", type = "POI.QUESTHUB" },
                        ["z019595DB11E70F58poi11"] = { coordX = 3860, coordZ = 3043, DE = "Purpurbach", EN = "Crimson Wash", type = "POI.QUESTHUB" },
                        ["z019595DB11E70F58poi12"] = { coordX = 3707, coordZ = 2691, DE = "Die Ekelkaskade", EN = "The Foul Cascade", type = "POI.DUNGEON" },
                        ["z019595DB11E70F58poi13"] = { coordX = 4620, coordZ = 4365, DE = "Wundwald-Lift, Basis", EN = "Scarwood Lift Base", type = "POI.PORTAL" },
                        ["z019595DB11E70F58poi14"] = { coordX = 4480, coordZ = 3715, DE = "Süd-Felsgrat", EN = "Rock Ridge South", type = "POI.PORTAL" },
                        ["z019595DB11E70F58poi15"] = { coordX = 3875, coordZ = 3105, DE = "Purpurbach", EN = "Crimson Wash", type = "POI.PORTAL" },
  },
  
  z000000142C649218 = { ["z000000142C649218poi1"] = { coordX = 3906, coordZ = 4498, DE = "Letzte Hoffnung", EN = "Last Hope", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi2"] = { coordX = 3700, coordZ = 4400, DE = "Perspice", EN = "Perspice", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi3"] = { coordX = 3328, coordZ = 4462, DE = "Trollpesthöhle", EN = "Trollblight Cavern", type = "POI.CAVE" },
                        ["z000000142C649218poi4"] = { coordX = 3298, coordZ = 4309, DE = "Königsbreche", EN = "King's Breach", type = "POI.DUNGEON" },
                        ["z000000142C649218poi5"] = { coordX = 3522, coordZ = 4112, DE = "Granitwache", EN = "Granite Watch", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi6"] = { coordX = 3780, coordZ = 4086, DE = "Holzfällers Rast", EN = "Logger's Rest", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi7"] = { coordX = 4060, coordZ = 4071, DE = "Wundwaldgrat", EN = "Scarwood Ridge", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi8"] = { coordX = 4177, coordZ = 4115, DE = "Wundwalf-Lift, Bergstation", EN = "Scarwood Lift Summit", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi9"] = { coordX = 2853, coordZ = 4358, DE = "Herrscherhalle", EN = "Lord's Hall", type = "POI.OTHER" },
                        ["z000000142C649218poi10"] = { coordX = 3103, coordZ = 4062, DE = "Heldentrutz", EN = "Heroes' Stand", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi11"] = { coordX = 2967, coordZ = 3960, DE = "Alte Wache", EN = "Auld Warden", type = "POI.OTHER" },
                        ["z000000142C649218poi12"] = { coordX = 3165, coordZ = 3868, DE = "Kains Kommandoposten", EN = "Kain's Command", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi13"] = { coordX = 3595, coordZ = 3795, DE = "Haus der Hainhüter", EN = "Grove Keepers' House", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi14"] = { coordX = 3514, coordZ = 3717, DE = "Carwins Schrein", EN = "Carwin's Shrine", type = "POI.OTHER" },
                        ["z000000142C649218poi15"] = { coordX = 3810, coordZ = 3691, DE = "Scharfklingen-Barrikade", EN = "Keenblade Barricade", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi16"] = { coordX = 3628, coordZ = 3500, DE = "Vigilienlager", EN = "Vigil Camp", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi17"] = { coordX = 3339, coordZ = 3561, DE = "Portagelager", EN = "Portage Camp", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi18"] = { coordX = 3232, coordZ = 3270, DE = "Knochenberster-Bastion", EN = "Shatterbone Hold", type = "POI.CAVE" },
                        ["z000000142C649218poi19"] = { coordX = 3072, coordZ = 3303, DE = "Elendsgrube", EN = "Blighted Pit", type = "POI.CAVE" },
                        ["z000000142C649218poi20"] = { coordX = 2612, coordZ = 3576, DE = "Der Turm der Weisen", EN = "The Sagespire", type = "POI.QUESTHUB" },
                        ["z000000142C649218poi21"] = { coordX = 3665, coordZ = 4390, DE = "Perspice", EN = "Perspice", type = "POI.PORTAL" },
                        ["z000000142C649218poi22"] = { coordX = 3135, coordZ = 3850, DE = "Kains Kommandoposten", EN = "Kain's Command", type = "POI.PORTAL" },
  },
  
  z0000001A4AF8CD7A = { ["z0000001A4AF8CD7Apoi1"] = { coordX = 2564, coordZ = 3014, DE = "Phönixhöhe", EN = "Phoenix Rise", type = "POI.QUESTHUB" },
                        ["z0000001A4AF8CD7Apoi2"] = { coordX = 2497, coordZ = 2817, DE = "Belmont", EN = "Belmont", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi3"] = { coordX = 2303, coordZ = 3016, DE = "Bruchtal", EN = "Broken Vale", type = "POI.QUESTHUB" },
                        ["z0000001A4AF8CD7Apoi4"] = { coordX = 2307, coordZ = 2776, DE = "DornstrauchKlippe", EN = "Briarcliff", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi5"] = { coordX = 2130, coordZ = 2905, DE = "Hügelkrone", EN = "Hillcrest", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi6"] = { coordX = 1998, coordZ = 2950, DE = "Wolfsbann", EN = "Wolfsbane", type = "POI.QUESTHUB" },
                        ["z0000001A4AF8CD7Apoi7"] = { coordX = 1766, coordZ = 3032, DE = "Ruston", EN = "Ruston", type = "POI.QUESTHUB" },
                        ["z0000001A4AF8CD7Apoi8"] = { coordX = 1694, coordZ = 3203, DE = "Hügelberg", EN = "Hillcrest", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi9"] = { coordX = 1593, coordZ = 3356, DE = "Bluthain", EN = "Blood Grove", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi10"] = { coordX = 2110, coordZ = 2741, DE = "Grenzwald", EN = "Edgewood", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi11"] = { coordX = 1855, coordZ = 2626, DE = "Auge des Regulos", EN = "Eye of Regulos", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi12"] = { coordX = 1560, coordZ = 2660, DE = "Zarephs Wiederkehr", EN = "Zareph's Return", type = "POI.QUESTHUB" },
                        ["z0000001A4AF8CD7Apoi13"] = { coordX = 1141, coordZ = 2699, DE = "Ewige Zitadelle", EN = "Endless Citadel", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi14"] = { coordX = 760, coordZ = 2700, DE = "Grünschuppes Pesthauch", EN = "Greenscale's Blight", type = "POI.DUNGEON" },
                        ["z0000001A4AF8CD7Apoi15"] = { coordX = 1380, coordZ = 2475, DE = "Königstor", EN = "Kingsgate", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi16"] = { coordX = 1750, coordZ = 2343, DE = "Thalin Tor", EN = "Thalin Tor", type = "POI.QUESTHUB" }, 
                        ["z0000001A4AF8CD7Apoi17"] = { coordX = 1686, coordZ = 2152, DE = "Wirre Senke", EN = "Twisted Hollow", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi18"] = { coordX = 1822, coordZ = 1988, DE = "Caer Thalos", EN = "Caer Thalos", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi19"] = { coordX = 2070, coordZ = 2290, DE = "Ravenna", EN = "Ravenna", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi20"] = { coordX = 2245, coordZ = 2220, DE = "Burlingham", EN = "Burlingham", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi21"] = { coordX = 2480, coordZ = 2420, DE = "Ritterhöhe", EN = "Crusador's Advance", type = "POI.QUESTHUB" },
                        ["z0000001A4AF8CD7Apoi22"] = { coordX = 2270, coordZ = 2500, DE = "Wachtschlucht", EN = "Warden's Descent", type = "POI.QUESTHUB" },
                        ["z0000001A4AF8CD7Apoi23"] = { coordX = 1890, coordZ = 3080, DE = "Kronhügel", EN = "Crown Hill", type = "POI.OTHER" },
                        ["z0000001A4AF8CD7Apoi24"] = { coordX = 2065, coordZ = 2495, DE = "Prüfung der Schildwache", EN = "Trial of the Sentinel", type = "POI.QUESTHUB" },
                        ["z0000001A4AF8CD7Apoi25"] = { coordX = 2640, coordZ = 3055, DE = "Phönixhöhe", EN = "Phoenix Rise", type = "POI.PORTAL" },
                        ["z0000001A4AF8CD7Apoi26"] = { coordX = 1640, coordZ = 2640, DE = "Zarephs Wiederkehr", EN = "Zareph's Return", type = "POI.PORTAL" },
  },
  
  z00000016EB9ECBA5 = { ["z00000016EB9ECBA5poi1"] = { coordX = 2970, coordZ = 2385, DE = "Versteck des Verbannten", EN = "Exile's Den", type = "POI.QUESTHUB" }, 
                        ["z00000016EB9ECBA5poi2"] = { coordX = 2985, coordZ = 2355, DE = "Versteck des Verbannten", EN = "Exile's Den", type = "POI.PORTAL" },
                        ["z00000016EB9ECBA5poi3"] = { coordX = 2900, coordZ = 2055, DE = "Strahlenwacht", EN = "Radiant Guard", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi4"] = { coordX = 2885, coordZ = 1775, DE = "Abgründige Kluft", EN = "Abyssal Precipice", type = "POI.DUNGEON" },
                        ["z00000016EB9ECBA5poi5"] = { coordX = 3130, coordZ = 2080, DE = "Würgwasser", EN = "Choke Water", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi6"] = { coordX = 3445, coordZ = 2340, DE = "Eiswachtgrad", EN = "Icewatch Ridge", type = "POI.CAVE" },
                        ["z00000016EB9ECBA5poi7"] = { coordX = 3420, coordZ = 1980, DE = "Eidbundpass", EN = "Oathbound Pass", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi8"] = { coordX = 3240, coordZ = 1780, DE = "Rotgold-Claim", EN = "Red Gold Claim", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi9"] = { coordX = 3725, coordZ = 1800, DE = "Weißfall", EN = "Whitefall", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi10"] = { coordX = 3745, coordZ = 1740, DE = "Weißfall-Taverne", EN = "Whitefall Tavern", type = "POI.PORTAL" },
                        ["z00000016EB9ECBA5poi11"] = { coordX = 3655, coordZ = 1585, DE = "Verteidigerposten", EN = "Defender's Stand", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi12"] = { coordX = 3600, coordZ = 1440, DE = "Heulende Höhlen", EN = "Howling Caves", type = "POI.CAVE" },
                        ["z00000016EB9ECBA5poi13"] = { coordX = 4315, coordZ = 2215, DE = "Weißfall-Lift", EN = "Whitefall Lift", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi14"] = { coordX = 4275, coordZ = 1860, DE = "Eisbrecherlager", EN = "Breaker's Camp", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi15"] = { coordX = 4390, coordZ = 1800, DE = "Crucias Tempel", EN = "Crucia's Temple", type = "POI.OTHER" },
                        ["z00000016EB9ECBA5poi16"] = { coordX = 4155, coordZ = 1415, DE = "Pilgerkreuzweg", EN = "Pilgrin's Crossing", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi17"] = { coordX = 4305, coordZ = 1255, DE = "Thedeors Schild", EN = "Thedeor's Shield", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi18"] = { coordX = 4390, coordZ = 1205, DE = "Wolkenhöhlen", EN = "Cloudbourne Caverns", type = "POI.CAVE" },
                        ["z00000016EB9ECBA5poi19"] = { coordX = 4580, coordZ = 1585, DE = "Altar der Arbeit", EN = "The Chancel of Labors", type = "POI.QUESTHUB" },
                        ["z00000016EB9ECBA5poi20"] = { coordX = 4605, coordZ = 1660, DE = "Altar der Arbeit", EN = "The Chancel of Labors", type = "POI.PORTAL" },
                        ["z00000016EB9ECBA5poi21"] = { coordX = 4840, coordZ = 1675, DE = "Kristalltiefen", EN = "Crystal Depths", type = "POI.CAVE" },
                        ["z00000016EB9ECBA5poi22"] = { coordX = 4185, coordZ = 1470, DE = "Pilgerkreuzweg", EN = "Pilgrin's Crossing", type = "POI.PORTAL"},
                        ["z00000016EB9ECBA5poi23"] = { coordX = 4320, coordZ = 2210, DE = "Weißfall-Lift", EN = "Whitefall Lift", type = "POI.PORTAL"},
                        ["z00000016EB9ECBA5poi24"] = { coordX = 4630, coordZ = 1550, DE = "Exodus der Sturmkönigin", EN = "Exodus of the Storm Queen", type = "POI.DUNGEON"},
  },
  
  z0000001B2BB9E10E = { ["z0000001B2BB9E10Epoi1"] = { coordX = 4215, coordZ = 2900, DE = "Tiefwaldhütte", EN = "Deepwood Cottage", type = "POI.OTHER" },
                        ["z0000001B2BB9E10Epoi2"] = { coordX = 4320, coordZ = 2320, DE = "Holzfällerheber", EN = "Loggerman's Lift", type = "POI.QUESTHUB" },
                        ["z0000001B2BB9E10Epoi3"] = { coordX = 4610, coordZ = 2745, DE = "Zährenbach", EN = "Tearfall Run", type = "POI.QUESTHUB" },
                        ["z0000001B2BB9E10Epoi4"] = { coordX = 4630, coordZ = 2740, DE = "Zährenbach", EN = "Tearfall Run", type = "POI.PORTAL" },
                        ["z0000001B2BB9E10Epoi5"] = { coordX = 4610, coordZ = 2405, DE = "Festung Schattensturz", EN = "Shadefallen Keep", type = "POI.OTHER" },
                        ["z0000001B2BB9E10Epoi6"] = { coordX = 4770, coordZ = 2535, DE = "Zährenbach-Katakomben", EN = "Tearfall Catacombs", type = "POI.CAVE" },
                        ["z0000001B2BB9E10Epoi7"] = { coordX = 4895, coordZ = 2430, DE = "Finstere Tiefen", EN = "Darkening Deeps", type = "POI.DUNGEON" },
                        ["z0000001B2BB9E10Epoi8"] = { coordX = 4975, coordZ = 2710, DE = "Stehende Steine", EN = "Standing Stones", type = "POI.OTHER" },
                        ["z0000001B2BB9E10Epoi9"] = { coordX = 5125, coordZ = 2660, DE = "Dunkelfelshöhlen", EN = "Darkrock Caverns", type = "POI.CAVE" },
                        ["z0000001B2BB9E10Epoi10"] = { coordX = 5460, coordZ = 2845, DE = "Düsterer Ausblick", EN = "Solemn Outlook", type = "POI.OTHER" },
                        ["z0000001B2BB9E10Epoi11"] = { coordX = 5190, coordZ = 3125, DE = "Dämmerscheid", EN = "Gloamwood Pines", type = "POI.QUESTHUB" },
                        ["z0000001B2BB9E10Epoi12"] = { coordX = 5685, coordZ = 3420, DE = "Seidennetz-Außenposten", EN = "Silkweb Outpost", type = "POI.QUESTHUB" },
                        ["z0000001B2BB9E10Epoi13"] = { coordX = 5810, coordZ = 3590, DE = "Bau der Brutmutter", EN = "Broodmother's Lair", type = "POI.CAVE" },
                        ["z0000001B2BB9E10Epoi14"] = { coordX = 5140, coordZ = 2400, DE = "Finstere Tiefen", EN = "Darkening Deeps", type = "POI.PORTAL" },
                        ["z0000001B2BB9E10Epoi15"] = { coordX = 5395, coordZ = 2710, DE = "Knorzwaldposten", EN = "Gnarlwood Post", type = "POI.QUESTHUB" },
                        ["z0000001B2BB9E10Epoi16"] = { coordX = 5135, coordZ = 3220, DE = "Dämmerscheid", EN = "Gloamwood Pines", type = "POI.PORTAL" },
  },
  
  z0000001804F56C61 = { ["z0000001804F56C61poi1"] = { coordX = 5460, coordZ = 2230, DE = "Mondschattenberge", EN = "Moonshade Highlands", type = "POI.PORTAL" },
                        ["z0000001804F56C61poi2"] = { coordX = 5490, coordZ = 2180, DE = "Mondschattenberge", EN = "Timbervell", type = "POI.QUESTHUB" },
                        ["z0000001804F56C61poi3"] = { coordX = 6100, coordZ = 2030, DE = "Seherweisen-Lager", EN = "Seersage Camp", type = "POI.QUESTHUB" },
                        ["z0000001804F56C61poi4"] = { coordX = 6190, coordZ = 1890, DE = "Flinkschattenhügel", EN = "Shade Swift Tors", type = "POI.OTHER" },
                        ["z0000001804F56C61poi5"] = { coordX = 6380, coordZ = 1870, DE = "Steinmetzwache", EN = "Stonemason's Watch", type = "POI.QUESTHUB" },
                        ["z0000001804F56C61poi6"] = { coordX = 6305, coordZ = 1595, DE = "Kahlschlägerlager", EN = "Reclaimer's Hold", type = "POI.QUESTHUB" },
                        ["z0000001804F56C61poi7"] = { coordX = 6330, coordZ = 1555, DE = "Kahlschlägerlager", EN = "Reclaimer's Hold", type = "POI.PORTAL" },
                        ["z0000001804F56C61poi8"] = { coordX = 6125, coordZ = 1400, DE = "Der Steinschlüssel", EN = "The Stone Key", type = "POI.OTHER" },
                        ["z0000001804F56C61poi9"] = { coordX = 6230, coordZ = 1355, DE = "Runental", EN = "Runic Descent", type = "POI.DUNGEON" },
                        ["z0000001804F56C61poi10"] = { coordX = 6460, coordZ = 1175, DE = "Festung Hammerhall", EN = "Hammerknell Fortress", type = "POI.OTHER" },
                        ["z0000001804F56C61poi11"] = { coordX = 6825, coordZ = 1790, DE = "Hammerfürst-Posten", EN = "Hammerlord Post", type = "POI.QUESTHUB" },
                        ["z0000001804F56C61poi12"] = { coordX = 7285, coordZ = 2080, DE = "Dreienquell", EN = "Three Springs", type = "POI.QUESTHUB" },                        
                        ["z0000001804F56C61poi13"] = { coordX = 7410, coordZ = 1480, DE = "Runen-Athenäum", EN = "Runic Arthenaeum", type = "POI.PORTAL" },
                        ["z0000001804F56C61poi14"] = { coordX = 7335, coordZ = 2095, DE = "Dreienquell", EN = "Three Springs", type = "POI.PORTAL"},
						["z0000001804F56C61poi15"] = { coordX = 7547, coordZ = 1885, DE = "Verwitterte Klippen", EN = "Timeworn Cliffs", type = "POI.PORTAL"},
  },
  
  z0000000CB7B53FD7 = { ["z0000000CB7B53FD7poi1"] = { coordX = 7190, coordZ = 3035, DE = "Sanctumwacht", EN = "Sanctum Watch", type = "POI.QUESTHUB" },
                        ["z0000000CB7B53FD7poi2"] = { coordX = 7385, coordZ = 3050, DE = "Sanctum", EN = "Sanctum", type = "POI.QUESTHUB" },
                        ["z0000000CB7B53FD7poi3"] = { coordX = 7455, coordZ = 3060, DE = "Zum Kontinent der Sturmlegion teleportieren", EN = "", type = "POI.PORTALWORLD" },
                        ["z0000000CB7B53FD7poi4"] = { coordX = 6965, coordZ = 3280, DE = "Silberne Landung", EN = "Silver Landing", type = "POI.QUESTHUB" },
                        ["z0000000CB7B53FD7poi5"] = { coordX = 6700, coordZ = 2725, DE = "Reich der Feen", EN = "Realm of the Fae", type = "POI.DUNGEON" },
                        ["z0000000CB7B53FD7poi6"] = { coordX = 6545, coordZ = 2815, DE = "Hochalm-Ausblick", EN = "Highglades Lookout", type = "POI.QUESTHUB" },
                        ["z0000000CB7B53FD7poi7"] = { coordX = 5880, coordZ = 2605, DE = "Schlingenstrauchgrube", EN = "Snarebrush Pit", type = "POI.CAVE" },
                        ["z0000000CB7B53FD7poi8"] = { coordX = 5725, coordZ = 2840, DE = "Statue des alten Manns", EN = "Old Man Statue", type = "POI.OTHER" },
                        ["z0000000CB7B53FD7poi9"] = { coordX = 5940, coordZ = 3040, DE = "Quecksilber-Akademie", EN = "Quicksilver College", type = "POI.QUESTHUB" },
                        ["z0000000CB7B53FD7poi10"] = { coordX = 6050, coordZ = 3050, DE = "Silberfeld", EN = "Argent Glade", type = "POI.QUESTHUB" },
                        ["z0000000CB7B53FD7poi11"] = { coordX = 6185, coordZ = 3115, DE = "Jahreszeitenhöhle", EN = "Cave of Seasons", type = "POI.CAVE" },
                        ["z0000000CB7B53FD7poi12"] = { coordX = 6360, coordZ = 3125, DE = "Wachhöhle", EN = "Overwatch Cavern", type = "POI.CAVE" },
                        ["z0000000CB7B53FD7poi13"] = { coordX = 6450, coordZ = 3210, DE = "Kelgnaws Höhle", EN = "Kelgnaw's Den", type = "POI.CAVE" },
                        ["z0000000CB7B53FD7poi14"] = { coordX = 6490, coordZ = 3305, DE = "Sumpfhaus", EN = "Marsh House", type = "POI.QUESTHUB" },
                        ["z0000000CB7B53FD7poi15"] = { coordX = 6200, coordZ = 3600, DE = "Rudis Wagen", EN = "Rudi's Wagon", type = "POI.QUESTHUB" },
                        ["z0000000CB7B53FD7poi16"] = { coordX = 6240, coordZ = 3880, DE = "Göttlicher Anlegeplatz", EN = "Divine Landing", type = "POI.QUESTHUB" },
                        ["z0000000CB7B53FD7poi17"] = { coordX = 6600, coordZ = 2795, DE = "Hochalm-Ausblick", EN = "Highglades Lookout", type = "POI.PORTAL"},
                        ["z0000000CB7B53FD7poi18"] = { coordX = 6225, coordZ = 3855, DE = "Göttlicher Anlegeplatz", EN = "Divine Landing", type = "POI.PORTAL"},
                        ["z0000000CB7B53FD7poi19"] = { coordX = 6030, coordZ = 3125, DE = "Silberfeld", EN = "Argent Glade", type = "POI.PORTAL"},
  },
  
  z76C88A5A51A38D90 = { ["z76C88A5A51A38D90poi1"] = { coordX = 12340, coordZ = 3040, DE = "Talos Landung", EN = "Talos Landing", type = "POI.PORTAL" },
                        ["z76C88A5A51A38D90poi2"] = { coordX = 12440, coordZ = 3035, DE = "Talos Landung", EN = "Talos Landing", type = "POI.QUESTHUB" },
                        ["z76C88A5A51A38D90poi3"] = { coordX = 12885, coordZ = 2845, DE = "Quellenebenen", EN = "Wellspring Flats", type = "POI.PORTAL" },
                        ["z76C88A5A51A38D90poi4"] = { coordX = 13410, coordZ = 2725, DE = "Fernhall", EN = "Farhall", type = "POI.QUESTHUB" },
                        ["z76C88A5A51A38D90poi5"] = { coordX = 13280, coordZ = 2810, DE = "Fernhall", EN = "Farhall", type = "POI.CAVE" },
                        ["z76C88A5A51A38D90poi6"] = { coordX = 13295, coordZ = 2885, DE = "Fernhall", EN = "Farhall", type = "POI.PORTAL" },
                        ["z76C88A5A51A38D90poi7"] = { coordX = 13355, coordZ = 2930, DE = "Fernhall", EN = "Farhall", type = "POI.CAVE" },
                        ["z76C88A5A51A38D90poi8"] = { coordX = 13540, coordZ = 2900, DE = "Fernhall", EN = "Farhall", type = "POI.CAVE" },
                        ["z76C88A5A51A38D90poi9"] = { coordX = 13735, coordZ = 2960, DE = "Splitterfurt", EN = "Splintered Shallows", type = "POI.PORTAL" },
                        ["z76C88A5A51A38D90poi10"] = { coordX = 13695, coordZ = 3360, DE = "Glutrand", EN = "Searing Brink", type = "POI.CAVE" },
                        ["z76C88A5A51A38D90poi11"] = { coordX = 13620, coordZ = 3735, DE = "Glutrand", EN = "Searing Brink", type = "POI.CAVE" },
                        ["z76C88A5A51A38D90poi12"] = { coordX = 14115, coordZ = 3625, DE = "Hermesstab-Anhöhe", EN = "Caduceus Rise", type = "POI.DUNGEON" },
                        ["z76C88A5A51A38D90poi13"] = { coordX = 13905, coordZ = 4175, DE = "Obsidian-Küste", EN = "Obsidian Shore", type = "POI.PORTAL" },
                        ["z76C88A5A51A38D90poi14"] = { coordX = 13535, coordZ = 4105, DE = "Atia", EN = "Atia", type = "POI.PORTAL" },
                        ["z76C88A5A51A38D90poi15"] = { coordX = 13435, coordZ = 4160, DE = "Atia", EN = "Atia", type = "POI.QUESTHUB" },
                        ["z76C88A5A51A38D90poi16"] = { coordX = 13010, coordZ = 4135, DE = "Üppige Wildnis", EN = "Abundant Wilds", type = "POI.PORTAL" },
                        ["z76C88A5A51A38D90poi17"] = { coordX = 12490, coordZ = 4005, DE = "Bastion Zarnost", EN = "Fort Zarnost", type = "POI.QUESTHUB" },
                        ["z76C88A5A51A38D90poi18"] = { coordX = 13035, coordZ = 3490, DE = "Glutwacht", EN = "Ember Watch", type = "POI.PORTAL" },
                        ["z76C88A5A51A38D90poi19"] = { coordX = 13035, coordZ = 3450, DE = "Glutwacht", EN = "Ember Watch", type = "POI.QUESTHUB" },
  },
  
  z487C9102D2EA79BE = { ["z487C9102D2EA79BEpoi1"] = { coordX = 7385, coordZ = 3050, DE = "Sanctum", EN = "Sanctum", type = "POI.QUESTHUB" },
                        ["z487C9102D2EA79BEpoi2"] = { coordX = 7455, coordZ = 3060, DE = "Zum Kontinent der Sturmlegion teleportieren", EN = "Teleport to Storm Legion", type = "POI.PORTALWORLD" },
                        ["z487C9102D2EA79BEpoi3"] = { coordX = 7460, coordZ = 3050, DE = "Sanctum", EN = "Sanctum", type = "POI.PORTAL" }, 
  },
  
  z10D7E74AB6D7B293 = { ["z10D7E74AB6D7B293poi1"] = { coordX = 2950, coordZ = 4060, DE = "Azcu'azg-Oase", EN = "Azcu'azg Oasis", type = "POI.PORTAL" },
                        ["z10D7E74AB6D7B293poi2"] = { coordX = 2775, coordZ = 4330, DE = "Az'Zgez-Nest", EN = "Hive Az'Zgex", type = "POI.OTHER" },
                        ["z10D7E74AB6D7B293poi3"] = { coordX = 2785, coordZ = 4555, DE = "Venific-Stätte", EN = "Venific Locus", type = "POI.OTHER" },
                        ["z10D7E74AB6D7B293poi4"] = { coordX = 2570, coordZ = 5145, DE = "Zg'Kaa-Nest", EN = "Hive Zg'Kaa", type = "POI.OTHER" },
                        ["z10D7E74AB6D7B293poi5"] = { coordX = 3010, coordZ = 4900, DE = "Tempel der Verlassenen", EN = "Temple of the Abandoned", type = "POI.OTHER" },
                        ["z10D7E74AB6D7B293poi6"] = { coordX = 3110, coordZ = 5600, DE = "Solstice-Turm", EN = "Solstice Tower", type = "POI.QUESTHUB" },
                        ["z10D7E74AB6D7B293poi7"] = { coordX = 3195, coordZ = 5515, DE = "Solstice-Turm", EN = "Solstice Tower", type = "POI.PORTAL" },
                        ["z10D7E74AB6D7B293poi8"] = { coordX = 3775, coordZ = 5495, DE = "Grausame Wildnis", EN = "Realm of Twisted Dreams", type = "POI.DUNGEON" },
                        ["z10D7E74AB6D7B293poi9"] = { coordX = 3875, coordZ = 5500, DE = "Hailol", EN = "Hailol", type = "POI.QUESTHUB" },
                        ["z10D7E74AB6D7B293poi10"] = { coordX = 3955, coordZ = 5585, DE = "Hailol", EN = "Hailol", type = "POI.PORTAL" },
                        ["z10D7E74AB6D7B293poi11"] = { coordX = 4205, coordZ = 5460, DE = "Haimad", EN = "Haimad", type = "POI.OTHER" },
                        ["z10D7E74AB6D7B293poi12"] = { coordX = 4350, coordZ = 4705, DE = "Grünschuppes Krater", EN = "Greenscale's Crater", type = "POI.OTHER" },
                        ["z10D7E74AB6D7B293poi13"] = { coordX = 4090, coordZ = 4635, DE = "Achyati-Dorf", EN = "Achyati Village", type = "POI.QUESTHUB" },
                        ["z10D7E74AB6D7B293poi14"] = { coordX = 4145, coordZ = 4560, DE = "Achyati-Dorf", EN = "Achyati Village", type = "POI.PORTAL" },
                        ["z10D7E74AB6D7B293poi15"] = { coordX = 3540, coordZ = 3800, DE = "Nest Kaaz'Gfuu", EN = "Hive Kaaz'Gfuu", type = "POI.OTHER" },
  },
  
  z2F1E4708BEC6A608 = { ["z2F1E4708BEC6A608poi1"] = { coordX = 2960, coordZ = 6755, DE = "K'roms Festung", EN = "K'Rom's Fortressa", type = "POI.PORTAL" }, 
                        ["z2F1E4708BEC6A608poi2"] = { coordX = 3585, coordZ = 8160, DE = "Nurjak Vostra", EN = "Nurjak Vostra", type = "POI.PORTAL" },
                        ["z2F1E4708BEC6A608poi3"] = { coordX = 4865, coordZ = 7350, DE = "Baumeisterdamm", EN = "Builder's Causeway", type = "POI.PORTAL" },
  },
  
  z4D8820D7EF52685C = { ["z4D8820D7EF52685Cpoi1"] = { coordX = 4690, coordZ = 8520, DE = "Die Akademie", EN = "The Academy", type = "POI.PORTAL" }, 
                        ["z4D8820D7EF52685Cpoi2"] = { coordX = 5505, coordZ = 8265, DE = "Das Arsenal", EN = "The Armory", type = "POI.PORTAL" },
                        ["z4D8820D7EF52685Cpoi3"] = { coordX = 5840, coordZ = 8675, DE = "Empyreum-Kern", EN = "Empyrean Core", type = "POI.DUNGEON" },
                        ["z4D8820D7EF52685Cpoi4"] = { coordX = 5870, coordZ = 8720, DE = "Der Turm der Morgenröte", EN = "Tower of Dawn", type = "POI.PORTAL" },
                        ["z4D8820D7EF52685Cpoi5"] = { coordX = 6780, coordZ = 8060, DE = "Hinterland von Arakhosia", EN = "Arakhosian Hinterlands", type = "POI.PORTAL" },
                        ["z4D8820D7EF52685Cpoi6"] = { coordX = 6230, coordZ = 7890, DE = "Golemgießerei", EN = "Golem Foundry", type = "POI.DUNGEON" },
  },
  
  z563CB77E4A32233F = { ["z563CB77E4A32233Fpoi1"] = { coordX = 4600, coordZ = 9990, DE = "Tempel der Thontic", EN = "Temple of Thontic", type = "POI.OTHER" },
                        ["z563CB77E4A32233Fpoi2"] = { coordX = 5130, coordZ = 9615, DE = "Soros Anwesen", EN = "Soros Estate", type = "POI.PORTAL" },
                        ["z563CB77E4A32233Fpoi3"] = { coordX = 5340, coordZ = 9665, DE = "Soros Anwesen", EN = "Soros Estate", type = "POI.OTHER" },
                        ["z563CB77E4A32233Fpoi4"] = { coordX = 5310, coordZ = 10225, DE = "Auditorium Carnos", EN = "Auditorium Carnos", type = "POI.OTHER" },
                        ["z563CB77E4A32233Fpoi5"] = { coordX = 5985, coordZ = 10575, DE = "Cassana-Anwesen", EN = "Cassana Estate", type = "POI.OTHER" },
                        ["z563CB77E4A32233Fpoi6"] = { coordX = 5930, coordZ = 10055, DE = "Cassana-Anwesen", EN = "Cassana Estate", type = "POI.PORTAL" },
                        ["z563CB77E4A32233Fpoi7"] = { coordX = 6290, coordZ = 9830, DE = "Hexendickicht", EN = "Witch's Thicket", type = "POI.OTHER" },
                        ["z563CB77E4A32233Fpoi8"] = { coordX = 5655, coordZ = 9430, DE = "Turnis-Bunker", EN = "Turnis River Bunker", type = "POI.PORTAL" },
                        ["z563CB77E4A32233Fpoi9"] = { coordX = 5640, coordZ = 9400, DE = "Turnis-Bunker", EN = "Turnis River Bunker", type = "POI.QUESTHUB" },
  },
  
  z754553DD46F46371 = { ["z754553DD46F46371poi1"] = { coordX = 7080, coordZ = 8625, DE = "Verlassener Bunker", EN = "Abandoned Bunker", type = "POI.CAVE" }, 
                        ["z754553DD46F46371poi2"] = { coordX = 7085, coordZ = 8815, DE = "Öffentliche Bücherhalle", EN = "Citizen's Library", type = "POI.PORTAL" },
                        ["z754553DD46F46371poi3"] = { coordX = 7135, coordZ = 9160, DE = "Kriechschlucht", EN = "Crawling Gorge", type = "POI.OTHER" },
                        ["z754553DD46F46371poi4"] = { coordX = 7000, coordZ = 9250, DE = "Expiditionslager", EN = "Expedition Camp", type = "POI.QUESTHUB" },
                        ["z754553DD46F46371poi5"] = { coordX = 6600, coordZ = 9370, DE = "Zum Tobenden Karthaner", EN = "The Raging Karthan Inn", type = "POI.OTHER" },
                        ["z754553DD46F46371poi6"] = { coordX = 6715, coordZ = 9960, DE = "Vaud-Turm", EN = "Vaud Tower", type = "POI.QUESTHUB" },
                        ["z754553DD46F46371poi7"] = { coordX = 6700, coordZ = 10030, DE = "Vaud-Turm", EN = "Vaud Tower", type = "POI.PORTAL" },
                        ["z754553DD46F46371poi8"] = { coordX = 7005, coordZ = 10170, DE = "Miran-Tor", EN = "Miran Gate", type = "POI.QUESTHUB" },
                        ["z754553DD46F46371poi9"] = { coordX = 7065, coordZ = 10150, DE = "Miran-Tor", EN = "Miran Gate", type = "POI.PORTAL" },
                        ["z754553DD46F46371poi10"] = { coordX = 7070, coordZ = 10420, DE = "Mirans Passage", EN = "Miran's Passage", type = "POI.OTHER" },
  },
  
  z48530386ED2EA5AD = { ["z48530386ED2EA5ADpoi1"] = { coordX = 7550, coordZ = 9690, DE = "Avendrus-Anwesen", EN = "Avendrus Estate", type = "POI.OTHER" },
                        ["z48530386ED2EA5ADpoi2"] = { coordX = 7945, coordZ = 9425, DE = "Villa Orphela", EN = "Villa Orphela", type = "POI.OTHER" },
                        ["z48530386ED2EA5ADpoi3"] = { coordX = 8690, coordZ = 9430, DE = "Moorschlucht-Bunker", EN = "Fen Gorge Bunker", type = "POI.CAVE" },
                        ["z48530386ED2EA5ADpoi4"] = { coordX = 8560, coordZ = 9040, DE = "Arkella-Anwesen", EN = "Arkella Estate", type = "POI.OTHER" },
                        ["z48530386ED2EA5ADpoi5"] = { coordX = 8060, coordZ = 8800, DE = "Südwallbunker", EN = "Southwall Bunker", type = "POI.PORTAL" },
                        ["z48530386ED2EA5ADpoi6"] = { coordX = 8060, coordZ = 8735, DE = "Südwallbunker", EN = "Southwall Bunker", type = "POI.QUESTHUB" },
                        ["z48530386ED2EA5ADpoi7"] = { coordX = 7665, coordZ = 8400, DE = "Reservoir", EN = "Reservoir", type = "POI.OTHER" },
                        ["z48530386ED2EA5ADpoi8"] = { coordX = 8230, coordZ = 8245, DE = "West-Allmende", EN = "Western Commons", type = "POI.OTHER" },
                        ["z48530386ED2EA5ADpoi9"] = { coordX = 8820, coordZ = 8530, DE = "West-Allmende", EN = "Western Commons", type = "POI.PORTAL" },
                        ["z48530386ED2EA5ADpoi10"] = { coordX = 8820, coordZ = 8095, DE = "Strozza-Anwesen", EN = "Strozza Estate", type = "POI.OTHER" },
                        ["z48530386ED2EA5ADpoi11"] = { coordX = 8785, coordZ = 7700, DE = "Strozza-Anwesen", EN = "Strozza Estate", type = "POI.PORTAL" },
                        ["z48530386ED2EA5ADpoi12"] = { coordX = 7835, coordZ = 7875, DE = "Auroborus-Wald", EN = "Auroborus Woods", type = "POI.PORTAL" },
                        ["z48530386ED2EA5ADpoi13"] = { coordX = 7820, coordZ = 7815, DE = "Bärenhain-Bunker", EN = "Ursin Grove Bunker", type = "POI.QUESTHUB" },
  },
  
  z698CB7B72B3D69E9 = { ["z698CB7B72B3D69E9poi1"] = { coordX = 8450, coordZ = 11905, DE = "Tulan-Leuchtturm", EN = "Tulan Lighthouse", type = "POI.OTHER" }, 
                        ["z698CB7B72B3D69E9poi2"] = { coordX = 8215, coordZ = 11820, DE = "Tulan", EN = "Tulan", type = "POI.PORTAL" },
                        ["z698CB7B72B3D69E9poi3"] = { coordX = 8205, coordZ = 11795, DE = "Tulan", EN = "Tulan", type = "POI.QUESTHUB" },
                        ["z698CB7B72B3D69E9poi4"] = { coordX = 7825, coordZ = 12300, DE = "Kelrath-Basis", EN = "Kelrath Base", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi5"] = { coordX = 6940, coordZ = 12105, DE = "Dämonenstätten", EN = "Daemon Loci", type = "POI.PORTAL" },
                        ["z698CB7B72B3D69E9poi6"] = { coordX = 6945, coordZ = 12105, DE = "Skeptiker-Forschungslager", EN = "Defiant Research Camp", type = "POI.QUESTHUB" },
                        ["z698CB7B72B3D69E9poi7"] = { coordX = 6930, coordZ = 12015, DE = "Wächter-Mission", EN = "Guardian Mission", type = "POI.QUESTHUB" },
                        ["z698CB7B72B3D69E9poi8"] = { coordX = 7500, coordZ = 11770, DE = "Mephitis-Quellbrunnen", EN = "Mephitis Sourcewell", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi9"] = { coordX = 7380, coordZ = 11560, DE = "Malluma-Fischloch", EN = "Malluma Fishing Hole", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi10"] = { coordX = 7760, coordZ = 11485, DE = "Mephitis-Basis", EN = "Mephitis Base", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi11"] = { coordX = 7890, coordZ = 11345, DE = "Sumpflingdorf", EN = "Bogling Village", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi12"] = { coordX = 8175, coordZ = 10920, DE = "Agrippa-Eingreiftruppe", EN = "Agrippa Strikeforce", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi13"] = { coordX = 8330, coordZ = 10680, DE = "Kantstein-Quellbrunnen", EN = "Edgestone Sourcewell", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi14"] = { coordX = 8555, coordZ = 10575, DE = "Kantstein-Luftbasis", EN = "Edgestone Airbase", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi15"] = { coordX = 8280, coordZ = 11330, DE = "Flammenfürsten-Schmiede", EN = "Flamesired Forge", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi16"] = { coordX = 8040, coordZ = 10375, DE = "Tarnes Sitzstange", EN = "Tarne's Perch", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi17"] = { coordX = 7585, coordZ = 11095, DE = "Sanco-Außenposten", EN = "Sanco Outpost", type = "POI.QUESTHUB" },
                        ["z698CB7B72B3D69E9poi18"] = { coordX = 7560, coordZ = 11085, DE = "Sanco-Außenposten", EN = "Sanco Outpost", type = "POI.PORTAL" },
                        ["z698CB7B72B3D69E9poi19"] = { coordX = 7380, coordZ = 10900, DE = "Klippenhaken-Quellbrunnen", EN = "Cliffside Sourcewell", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi20"] = { coordX = 7330, coordZ = 10660, DE = "Skeptiker-Expidition", EN = "Defiant Expedition", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi21"] = { coordX = 7080, coordZ = 10425, DE = "Mirans Passage", EN = "Miran's Passage", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi22"] = { coordX = 6790, coordZ = 10500, DE = "Vauds Tunnel", EN = "Vaud's Tunnel", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi23"] = { coordX = 7040, coordZ = 10620, DE = "Wächter-Expidition", EN = "Guardian Expedition", type = "POI.OTHER" },
                        ["z698CB7B72B3D69E9poi24"] = { coordX = 6980, coordZ = 11370, DE = "Tayvias Lager", EN = "Tayvia's Campsite", type = "POI.QUESTHUB" },
                        ["z698CB7B72B3D69E9poi25"] = { coordX = 6700, coordZ = 11205, DE = "Hiberna-Basis", EN = "Hiberna Base", type = "POI.OTHER" },
  },
  
  z11173F9D259DAADE = { ["z11173F9D259DAADEpoi1"] = { coordX = 12685, coordZ = 11620, DE = "Sturmbuchtkanäle", EN = "Tempest Bay Canals", type = "POI.PORTAL" },
                        ["z11173F9D259DAADEpoi2"] = { coordX = 12970, coordZ = 11590, DE = "Sturmbucht-Platz", EN = "Tempest Bay Plaza", type = "POI.PORTAL" },
                        ["z11173F9D259DAADEpoi3"] = { coordX = 12765, coordZ = 11735, DE = "Sturmbrecher-Protokoll", EN = "Storm Breaker Protocol", type = "POI.DUNGEON" },
  },
  
  z2F9C9E1FF91F9293 = { ["z2F9C9E1FF91F9293poi1"] = { coordX = 15365, coordZ = 8255, DE = "Himmelbruch-Lager", EN = "Camp Skyburst", type = "POI.PORTAL" },
                        ["z2F9C9E1FF91F9293poi2"] = { coordX = 14695, coordZ = 8305, DE = "Himmelbruch-Lager", EN = "Camp Skyburst", type = "POI.OTHER" },
                        ["z2F9C9E1FF91F9293poi3"] = { coordX = 15340, coordZ = 7880, DE = "Bastion Antapo", EN = "Fort Antapo", type = "POI.OTHER" },
                        ["z2F9C9E1FF91F9293poi4"] = { coordX = 15755, coordZ = 8340, DE = "Das Ende der Welt", EN = "World's End", type = "POI.OTHER" },
                        ["z2F9C9E1FF91F9293poi5"] = { coordX = 16080, coordZ = 7945, DE = "Bastion Brevo", EN = "Fort Brevo", type = "POI.OTHER" },
                        ["z2F9C9E1FF91F9293poi6"] = { coordX = 16925, coordZ = 7490, DE = "Tor der Unendlichkeit", EN = "The Infinity Gate", type = "POI.DUNGEON" },
                        ["z2F9C9E1FF91F9293poi7"] = { coordX = 17250, coordZ = 7605, DE = "Ebenenbrecher-Bastion", EN = "Planebreaker Bastion", type = "POI.DUNGEON" },
                        ["z2F9C9E1FF91F9293poi8"] = { coordX = 17165, coordZ = 7590, DE = "Tor der Unendlichkeit", EN = "The Infinity Gate", type = "POI.OTHER" },
                        ["z2F9C9E1FF91F9293poi9"] = { coordX = 16845, coordZ = 7280, DE = "Unendlichkeits-Aufbewahrungseinrichtung", EN = "Infinity Holding Facility", type = "POI.OTHER" },
                        ["z2F9C9E1FF91F9293poi10"] = { coordX = 17130, coordZ = 7045, DE = "Das Tor der Unendlichkeit", EN = "The Infinity Gate", type = "POI.PORTAL" },
                        ["z2F9C9E1FF91F9293poi11"] = { coordX = 16160, coordZ = 6355, DE = "Schwebende Rachsucht", EN = "Vengeful Sky", type = "POI.PORTAL" },
                        ["z2F9C9E1FF91F9293poi12"] = { coordX = 16500, coordZ = 5965, DE = "Schwebende Rachsucht", EN = "Vengeful Sky", type = "POI.OTHER" },
                        ["z2F9C9E1FF91F9293poi13"] = { coordX = 16155, coordZ = 7325, DE = "Statisches Tal", EN = "Static Vale", type = "POI.OTHER" },
                        ["z2F9C9E1FF91F9293poi14"] = { coordX = 15715, coordZ = 7175, DE = "Zerzala", EN = "Zerzala", type = "POI.QUESTHUB" },
                        ["z2F9C9E1FF91F9293poi15"] = { coordX = 15655, coordZ = 7095, DE = "Zerzala", EN = "Zerzala", type = "POI.PORTAL" },
                        ["z2F9C9E1FF91F9293poi16"] = { coordX = 15425, coordZ = 7190, DE = "Konservatorium von Arcanum", EN = "Arcanum Conservatory", type = "POI.OTHER" },
                        ["z2F9C9E1FF91F9293poi17"] = { coordX = 15385, coordZ = 6770, DE = "Schlotterklippe", EN = "Shivered Blufss", type = "POI.OTHER" },
  },
  
  z39095BA75AD7DC03 = { ["z39095BA75AD7DC03poi1"] = { coordX = 14280, coordZ = 5990, DE = "Arlans Herausforderung", EN = "Arlan's Challenge", type = "POI.PORTAL" },
                        ["z39095BA75AD7DC03poi2"] = { coordX = 15305, coordZ = 6250, DE = "Angoro-Abgrund", EN = "Brink of Angoro", type = "POI.OTHER" },
                        ["z39095BA75AD7DC03poi3"] = { coordX = 15225, coordZ = 5550, DE = "Zitadelle der Gestalter", EN = "Shapers Citadel", type = "POI.OTHER" },
                        ["z39095BA75AD7DC03poi4"] = { coordX = 15250, coordZ = 5135, DE = "Fleischarchiv", EN = "Archive of Flesh", type = "POI.DUNGEON" },
                        ["z39095BA75AD7DC03poi5"] = { coordX = 14415, coordZ = 5500, DE = "Die Nordruinen", EN = "The Northern Ruins", type = "POI.OTHER" },
                        ["z39095BA75AD7DC03poi6"] = { coordX = 13840, coordZ = 5045, DE = "Höhle des Kwell", EN = "Den of Kwell", type = "POI.CAVE" },
                        ["z39095BA75AD7DC03poi7"] = { coordX = 12830, coordZ = 5110, DE = "Fleischwald", EN = "Forest of Flesh", type = "POI.OTHER" },
                        ["z39095BA75AD7DC03poi8"] = { coordX = 12255, coordZ = 5225, DE = "Höhle des Lezul", EN = "Den  of Lezul", type = "POI.CAVE" },
                        ["z39095BA75AD7DC03poi9"] = { coordX = 13155, coordZ = 5570, DE = "Landungslager", EN = "Camp Landfall", type = "POI.QUESTHUB" },
                        ["z39095BA75AD7DC03poi10"] = { coordX = 13170, coordZ = 5565, DE = "Landungslager", EN = "Camp Landfall", type = "POI.PORTAL" },
                        ["z39095BA75AD7DC03poi11"] = { coordX = 14200, coordZ = 6055, DE = "Arlans Herausforderung", EN = "Arlan's Challenge", type = "POI.QUESTHUB" },
                        ["z39095BA75AD7DC03poi12"] = { coordX = 13950, coordZ = 6900, DE = "Zyklonlager", EN = "Camp Cyclone", type = "POI.QUESTHUB" },
                        ["z39095BA75AD7DC03poi13"] = { coordX = 13905, coordZ = 6930, DE = "Zyklonlager", EN = "Camp Cyclone", type = "POI.PORTAL" },
                        ["z39095BA75AD7DC03poi14"] = { coordX = 14445, coordZ = 7395, DE = "Sturmfestung", EN = "Stormhold", type = "POI.OTHER" },
                        ["z39095BA75AD7DC03poi15"] = { coordX = 14350, coordZ = 7405, DE = "Turm der Zerschmetterten", EN = "Tower of the Shattered", type = "POI.DUNGEON" },
                        ["z39095BA75AD7DC03poi16"] = { coordX = 14305, coordZ = 7345, DE = "Froststurm", EN = "Frozen Tempest", type = "POI.DUNGEON" },
                        ["z39095BA75AD7DC03poi17"] = { coordX = 12985, coordZ = 7495, DE = "Schwarze Gestade", EN = "Black Strand", type = "POI.OTHER" },
                        ["z39095BA75AD7DC03poi18"] = { coordX = 12980, coordZ = 6485, DE = "Senviva-Anwesen", EN = "Senviva Estate", type = "POI.OTHER" },
                        ["z39095BA75AD7DC03poi19"] = { coordX = 13525, coordZ = 6385, DE = "Totenpass", EN = "Dead Pass", type = "POI.OTHER" },
                        ["z39095BA75AD7DC03poi20"] = { coordX = 15235, coordZ = 5490, DE = "Ewige Sonnenfinsternis", EN = "Endless Eclipse", type = "POI.DUNGEON" },
						            ["z39095BA75AD7DC03poi21"] = { coordX = 13201, coordZ = 7410, DE = "Schwarze Gestade", EN = "Black Strand", type = "POI.PORTAL" },
  },
  
  z59124F7DD7F15825 = { ["z59124F7DD7F15825poi1"] = { coordX = 11625, coordZ = 6080, DE = "Das Eitermoor", EN = "The Pus Swamp", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi2"] = { coordX = 11460, coordZ = 5530, DE = "Das Eitermoor", EN = "The Pus Swamp", type = "POI.PORTAL" },
                        ["z59124F7DD7F15825poi3"] = { coordX = 11460, coordZ = 5200, DE = "Ialas Punkt", EN = "Iala's Point", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi4"] = { coordX = 11145, coordZ = 5200, DE = "Krallenlager", EN = "Camp Talon", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi5"] = { coordX = 10950, coordZ = 5465, DE = "Tür des Todes", EN = "Death's Door", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi6"] = { coordX = 10155, coordZ = 4515, DE = "Der Endlose Ansturm", EN = "The Eternal Assault", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi7"] = { coordX = 9145, coordZ = 4410, DE = "Cydreis Rast", EN = "Cydrel's Rest", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi8"] = { coordX = 8775, coordZ = 4540, DE = "Ruinen-Passage", EN = "Ruinous Passage", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi9"] = { coordX = 8860, coordZ = 4245, DE = "Düsterlauf-Wrack", EN = "Darkrun Wreckage", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi10"] = { coordX = 8920, coordZ = 4230, DE = "Düsterlauf-Wrack", EN = "Darkrun Wreckage", type = "POI.PORTAL" },
                        ["z59124F7DD7F15825poi11"] = { coordX = 9365, coordZ = 3890, DE = "Tal der Knochen", EN = "Valley of Bones", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi12"] = { coordX = 10335, coordZ = 3805, DE = "Bergrücken", EN = "Spinecrest", type = "POI.QUESTHUB" },
                        ["z59124F7DD7F15825poi13"] = { coordX = 9740, coordZ = 4125, DE = "Der Schlund", EN = "The Crawl", type = "POI.PORTAL" },
                        ["z59124F7DD7F15825poi14"] = { coordX = 9730, coordZ = 4145, DE = "Der Schlund", EN = "The Crawl", type = "POI.QUESTHUB" },
                        ["z59124F7DD7F15825poi15"] = { coordX = 10650, coordZ = 3645, DE = "Friedhof der Ungetüme", EN = "Behemoth Graveyard", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi16"] = { coordX = 11660, coordZ = 3820, DE = "Faulige Ebenen", EN = "Fetid Plains", type = "POI.OTHER" },
                        ["z59124F7DD7F15825poi17"] = { coordX = 10915, coordZ = 4845, DE = "Nekropolis", EN = "Necropolis", type = "POI.QUESTHUB" },
                        ["z59124F7DD7F15825poi18"] = { coordX = 10910, coordZ = 4915, DE = "Nekropolis", EN = "Necropolis", type = "POI.PORTAL" },
                        ["z59124F7DD7F15825poi19"] = { coordX = 10820, coordZ = 4080, DE = "Die Höhle", EN = "The Hollow", type = "POI.QUESTHUB" },
                        ["z59124F7DD7F15825poi20"] = { coordX = 10850, coordZ = 4045, DE = "Die Höhle", EN = "The Hollow", type = "POI.PORTAL" },
                        ["z59124F7DD7F15825poi21"] = { coordX = 11890, coordZ = 4150, DE = "Unheilige Knochenschmiede", EN = "Unhallowed Boneforge", type = "POI.DUNGEON" },
  },
  
  z1C938C07F41C83CC = { ["z1C938C07F41C83CCpoi1"] = { coordX = 8155, coordZ = 4770, DE = "Bastion Mazamar", EN = "Fort Mazamar", type = "POI.QUESTHUB" },
                        ["z1C938C07F41C83CCpoi2"] = { coordX = 8115, coordZ = 4795, DE = "Bastion Mazamar", EN = "Fort Mazamar", type = "POI.PORTAL" },
                        ["z1C938C07F41C83CCpoi3"] = { coordX = 8190, coordZ = 4830, DE = "Mazamar Quellbrunnen", EN = "Mazamar Sourcewell", type = "POI.OTHER" },
                        ["z1C938C07F41C83CCpoi4"] = { coordX = 8025, coordZ = 5220, DE = "Unendlichkeitsfragment", EN = "Infinity Fragment", type = "POI.OTHER" },
                        ["z1C938C07F41C83CCpoi5"] = { coordX = 7835, coordZ = 5385, DE = "Moriyas Unterschlupf", EN = "Moriya's Safehouse", type = "POI.QUESTHUB" },
                        ["z1C938C07F41C83CCpoi6"] = { coordX = 7620, coordZ = 5500, DE = "Getrennter Quellbrunnen", EN = "Sundred Sourcewell", type = "POI.OTHER" },
                        ["z1C938C07F41C83CCpoi7"] = { coordX = 7860, coordZ = 5705, DE = "Bastion Pluvo", EN = "Fort Pluvo", type = "POI.OTHER" },
                        ["z1C938C07F41C83CCpoi8"] = { coordX = 8190, coordZ = 5863, DE = "Skeptiker-Brückenkopf", EN = "Defiant's Beachhead", type = "POI.QUESTHUB" },
                        ["z1C938C07F41C83CCpoi9"] = { coordX = 8185, coordZ = 5930, DE = "Rosthafen", EN = "Ferric Harbor", type = "POI.PORTAL" },
                        ["z1C938C07F41C83CCpoi10"] = { coordX = 7835, coordZ = 6110, DE = "Wächter-Landestelle", EN = "Guradians Landing", type = "POI.QUESTHUB" },
                        ["z1C938C07F41C83CCpoi11"] = { coordX = 7255, coordZ = 5485, DE = "Tuldio-Zuflucht", EN = "Tuldio Retreat", type = "POI.QUESTHUB" },
                        ["z1C938C07F41C83CCpoi12"] = { coordX = 7200, coordZ = 5545, DE = "Tuldio-Zuflucht", EN = "Tuldio Retreat", type = "POI.PORTAL" },
                        ["z1C938C07F41C83CCpoi13"] = { coordX = 7090, coordZ = 5530, DE = "Tempel der Sonne", EN = "Temple of the Sun", type = "POI.OTHER" },
                        ["z1C938C07F41C83CCpoi14"] = { coordX = 7320, coordZ = 5005, DE = "Crucias Landung", EN = "Crucia's Landfall", type = "POI.OTHER" },
                        ["z1C938C07F41C83CCpoi15"] = { coordX = 7680, coordZ = 4900, DE = "Aurentine-Quellbrunnen", EN = "Aurentine Sourcewell", type = "POI.OTHER" },
                        ["z1C938C07F41C83CCpoi16"] = { coordX = 7880, coordZ = 4745, DE = "Nebeltal-Anwesen", EN = "Mistvale Manor", type = "POI.OTHER" },
                        ["z1C938C07F41C83CCpoi17"] = { coordX = 7920, coordZ = 4875, DE = "Dolcega-Heißquellen", EN = "Dolcega Hotsprings", type = "POI.OTHER" },
                        ["z1C938C07F41C83CCpoi18"] = { coordX = 7680, coordZ = 4365, DE = "Unwetterspitze", EN = "Storm Peak", type = "POI.OTHER" },
                        ["z1C938C07F41C83CCpoi19"] = { coordX = 8305, coordZ = 5440, DE = "Tammark-Leuchtturm", EN = "Tammark Lighthouse", type = "POI.OTHER" },
  },
  
  z0000012D6EEBB377 = {["z0000012D6EEBB377poi1"] = { coordX = 1620, coordZ = 6440, DE = "Leuchtender Übergang", EN = "Luminous Passage", type = "POI.PORTAL" }, 
                        ["z0000012D6EEBB377poi2"] = { coordX = 3050, coordZ = 7060, DE = "Atragarianische Quelle", EN = "Atragarian Well", type = "POI.QUESTHUB" },
                        ["z0000012D6EEBB377poi3"] = { coordX = 3060, coordZ = 7020, DE = "Atragarianische Quelle", EN = "Atragarian Well", type = "POI.PORTAL" },
                        ["z0000012D6EEBB377poi4"] = { coordX = 3960, coordZ = 7745, DE = "Tempel von Ranri", EN = "Temple of Ranri", type = "POI.QUESTHUB" },
                        ["z0000012D6EEBB377poi5"] = { coordX = 3975, coordZ = 7865, DE = "Tempel von Ranri", EN = "Temple of Ranri", type = "POI.PORTAL" },
                        ["z0000012D6EEBB377poi6"] = { coordX = 3940, coordZ = 6640, DE = "Ghar-Station", EN = "Ghar Station Mem", type = "POI.PORTAL" },
                        ["z0000012D6EEBB377poi7"] = { coordX = 3835, coordZ = 6560, DE = "Ghar-Station", EN = "Ghar Station Mem", type = "POI.QUESTHUB" },
                        ["z0000012D6EEBB377poi8"] = { coordX = 3225, coordZ = 6175, DE = "Gyel-Festung", EN = "Gyel Fortress", type = "POI.DUNGEON" },
                        ["z0000012D6EEBB377poi9"] = { coordX = 3235, coordZ = 5695, DE = "Gyel-Festung", EN = "Gyel Fortress", type = "POI.OTHER" },
                        ["z0000012D6EEBB377poi10"] = { coordX = 2915, coordZ = 5960, DE = "Gyel-Festung", EN = "Gyel Fortress", type = "POI.PORTAL" },
  },
  
  z0000012F14279B5A = { ["z0000012F14279B5Apoi1"] = { coordX = 3705, coordZ = 4110, DE = "Ghar-Station Tau", EN = "Ghar Station Tau", type = "POI.PORTAL" },
                        ["z0000012F14279B5Apoi2"] = { coordX = 3610, coordZ = 3975, DE = "Ghar-Station Tau", EN = "Ghar Station Tau", type = "POI.QUESTHUB" },
                        ["z0000012F14279B5Apoi3"] = { coordX = 4950, coordZ = 3850, DE = "Tarken-Anhöhe", EN = "Tarken Ascent", type = "POI.PORTAL" },
                        ["z0000012F14279B5Apoi4"] = { coordX = 6525, coordZ = 4145, DE = "Scuddrahafen", EN = "Port Scuddra", type = "POI.PORTAL" },
                        ["z0000012F14279B5Apoi5"] = { coordX = 6695, coordZ = 4170, DE = "Scuddrahafen", EN = "Port Scuddra", type = "POI.QUESTHUB" },
                        ["z0000012F14279B5Apoi6"] = { coordX = 6150, coordZ = 3335, DE = "Sickerbecken", EN = "Seeping Basin", type = "POI.PORTAL" },
                        ["z0000012F14279B5Apoi7"] = { coordX = 4730, coordZ = 2780, DE = "Octus-Kloster", EN = "Octus Monastery", type = "POI.PORTAL" },
                        ["z0000012F14279B5Apoi8"] = { coordX = 4705, coordZ = 2680, DE = "Octus-Kloster", EN = "Octus Monastery", type = "POI.QUESTHUB" },
                        ["z0000012F14279B5Apoi9"] = { coordX = 4680, coordZ = 2430, DE = "Gletscherschlund", EN = "Glacial Maw", type = "POI.DUNGEON" },
                        ["z0000012F14279B5Apoi10"] = { coordX = 4685, coordZ = 1585, DE = "Sharax", EN = "Mount Sharax", type = "POI.OTHER" },
                        ["z0000012F14279B5Apoi11"] = { coordX = 5420, coordZ = 2190, DE = "Sharax", EN = "Mount Sharax", type = "POI.PORTAL" },
  },
  
  z0000012E087E78E1 = { ["z0000012E087E78E1poi1"] = { coordX = 4870, coordZ = 4975, DE = "Zwillingstäuschungen", EN = "Gemini Bluffs", type = "POI.QUESTHUB" }, 
                        ["z0000012E087E78E1poi2"] = { coordX = 4795, coordZ = 5095, DE = "Zwillingstäuschungen", EN = "Gemini Bluffs", type = "POI.PORTAL" }, 
                        ["z0000012E087E78E1poi3"] = { coordX = 5160, coordZ = 4920, DE = "Zitadelle des Irrsinns", EN = "Citadel of Insanity", type = "POI.DUNGEON" },
                        ["z0000012E087E78E1poi4"] = { coordX = 5420, coordZ = 5170, DE = "Platz des Kummers", EN = "Tribulation Square", type = "POI.PORTAL" },
                        ["z0000012E087E78E1poi5"] = { coordX = 6025, coordZ = 5360, DE = "Bezirk des Zeuxis", EN = "Zeuxis District", type = "POI.PORTAL" },
                        ["z0000012E087E78E1poi6"] = { coordX = 5745, coordZ = 5635, DE = "Margle-Palast", EN = "Margle Palace", type = "POI.PORTAL" },
                        ["z0000012E087E78E1poi7"] = { coordX = 5430, coordZ = 5940, DE = "Verlorener Knoten", EN = "Lost Knot", type = "POI.PORTAL" },
                        ["z0000012E087E78E1poi8"] = { coordX = 5470, coordZ = 6355, DE = "Ghar-Station Rosh", EN = "Ghar Station Rosh", type = "POI.PORTAL" },
                        ["z0000012E087E78E1poi9"] = { coordX = 5650, coordZ = 6415, DE = "Ghar-Station Rosh", EN = "Ghar Station Rosh", type = "POI.QUESTHUB" },
                        ["z0000012E087E78E1poi10"] = { coordX = 6260, coordZ = 6615, DE = "Schattenspross", EN = "Shadow Scion", type = "POI.PORTAL" },
                        ["z0000012E087E78E1poi11"] = { coordX = 6565, coordZ = 7055, DE = "Freistatt von Phydrena", EN = "Sanctuary of Phydrena", type = "POI.OTHER" },
                        ["z0000012E087E78E1poi12"] = { coordX = 6830, coordZ = 6595, DE = "Schattenspross", EN = "Shadow Scion", type = "POI.OTHER" },
                        ["z0000012E087E78E1poi13"] = { coordX = 6660, coordZ = 6055, DE = "Nadirplatz", EN = "Nadir Plaza", type = "POI.OTHER" },
                        ["z0000012E087E78E1poi14"] = { coordX = 5790, coordZ = 5755, DE = "Margle-Palast", EN = "Margle Palace", type = "POI.QUESTHUB" },
                       },
                       
  z196650F5AA524928 = { ["z196650F5AA524928poi1"] = { coordX = 6095, coordZ = 9115, DE = "Tyrannenthron", EN = "Tyrant's Throne", type = "POI.PORTAL" }},
  
  z0000001CE3FE8B2C = { ["z0000001CE3FE8B2Cpoi1"] = { coordX = 8054, coordZ = 5633, DE = "Alliance Camp", EN = "Alliance Camp", type = "POI.PORTAL" },
						["z0000001CE3FE8B2Cpoi2"] = { coordX = 9255, coordZ = 4904, DE = "Woe", EN = "Woe", type = "POI.PORTAL" },
						["z0000001CE3FE8B2Cpoi3"] = { coordX = 11746, coordZ = 5584, DE = "Jad", EN = "Jad", type = "POI.PORTAL" },
						["z0000001CE3FE8B2Cpoi4"] = { coordX = 9336, coordZ = 6006, DE = "Pilgrom Planes", EN = "Pilgrom Planes", type = "POI.PORTAL" },
						["z0000001CE3FE8B2Cpoi5"] = { coordX = 10414, coordZ = 5915, DE = "Shal Korva", EN = "Shal Korva", type = "POI.PORTAL" },
						["z0000001CE3FE8B2Cpoi6"] = { coordX = 9722, coordZ = 7319, DE = "Khort", EN = "Khort", type = "POI.PORTAL" },
						["z0000001CE3FE8B2Cpoi7"] = { coordX = 11386, coordZ = 7016, DE = "Sky Fishery", EN = "Sky Fishery", type = "POI.PORTAL" },
						["z0000001CE3FE8B2Cpoi8"] = { coordX = 10293, coordZ = 5928, DE = "Rhaza`De Canyons", EN = "Rhaza`De Canyons", type = "POI.DUNGEON" },
						["z0000001CE3FE8B2Cpoi9"] = { coordX = 9730, coordZ = 7223, DE = "Yesugei", EN = "Yesugei", type = "QUEST.START" }}


  
}

---------- local function block ---------

local function _fctZoneEvent (_, info)

  for unitId, zoneId in pairs (info) do _zoneData[unitId] = zoneId end
  
  EnKai.eventHandlers["EnKai.map"]["zone"](info)

end

local function _fctZoneCheckUnit (_, info, raiseEvent)

  local eventData = {}
  local data = InspectUnitDetail(info)
  
  for unitId, details in pairs (data) do
    if _zoneData[unitId] == nil or _zoneData[unitId] ~= details.zone then
      _zoneData[unitId] = details.zone
      eventData[unitId] = details.zone
    end
  end
  
  if raiseEvent ~= false then EnKai.eventHandlers["EnKai.map"]["zone"](eventData) end  

end

---------- addon internal function block ---------

function internal.checkShard()

	local debugId  
    if nkDebug then debugId = nkDebug.traceStart (InspectAddonCurrent(), "EnKai internal.checkShard") end

  -- local now = oFuncs.oInspectTimeFrame()
  -- if updateTime == nil or now - updateTime > 1 then
    -- updateTime = now

    local player = InspectUnitDetail("player")
    if player.zone == nil then return end
    
    local zone = InspectZoneDetail(player.zone)
    if zone.name == nil then return end
    
    local consoleList = InspectConsoleList()
    if consoleList == nil then return end
    
    local consoleDetails = InspectConsoleDetail(consoleList)
    if consoleDetails == nil then return end
    
    for id, consoleData in pairs(consoleDetails) do
      if consoleData.channel then
        for name, _ in pairs(consoleData.channel) do
          if name == zone.name then
            if _shardName ~= InspectShard().name then
              _shardName = InspectShard().name
              EnKai.eventHandlers["EnKai.map"]["shard"](_shardName)
            end
            return
          elseif (name:sub(1, zone.name:len()+1) == zone.name.."@") then
            if _shardName ~= name:sub(zone.name:len()+2) then
              _shardName = name:sub(zone.name:len()+2)
              EnKai.eventHandlers["EnKai.map"]["shard"](_shardName)
            end
            return
          end
        end -- for consoleData.channel
      end -- if consoleData.channel
    end -- for consoleDetails
  --end

  if nkDebug then nkDebug.traceEnd (InspectAddonCurrent(), "EnKai internal.checkShard", debugId) end	
  
end

---------- library public function block ---------

function EnKai.map.calcZoneList()

  EnKaiSetup.zoneList = {}
  
  for world, zones in pairs(_zoneMapping) do
    for idx = 1, #zones, 1 do
      local detail = InspectZoneDetail(zones[idx])
      EnKaiSetup.zoneList[zones[idx]] = { world = world, zone = detail.name, type = detail.type }
    end
  end

end

function EnKai.map.zoneInit(flag)

  if flag == true and _zoneEvents == false then
    _zoneData = {}
    
    _shardName = InspectShard().name
  
    Command.Event.Attach(Event.Unit.Detail.Zone, _fctZoneEvent, "EnKai.Zone.Unit.Detail.Zone")
    Command.Event.Attach(Event.Unit.Availability.Full, _fctZoneCheckUnit, "EnKai.Zone.Unit.Availability.Full")
    
    _fctZoneCheckUnit (_, InspectUnitList(), false)
  elseif flag == false and _zoneEvents == true then
    Command.Event.Detach(Event.Unit.Detail.Zone, nil, "EnKai.Zone.Unit.Detail.Zone")
    Command.Event.Detach(Event.Unit.Availability.Full, nil, "EnKai.Zone.Unit.Availability.Full")
  end
  
  _zoneEvents = flag
  
  if flag == true then internal.mapEvent.add (_, InspectMapList()) end

end

function EnKai.map.getZoneByUnit (unitID)
	
	return _zoneData[unitID]
	
end

function EnKai.map.getZoneWorld (zoneID)

  for world, list in pairs (_zoneMapping) do
    if EnKai.tools.table.isMember(list, zoneID) == true then return world end 
  end  
  
  return nil
  
end

function EnKai.map.GetZonePOI (zoneID)
  
  local poiList = _zoneMapPOI[zoneID]
  
  if poiList ~= nil then
  
    for k, v in pairs(poiList) do
      poiList[k].id = k
      poiList[k].title = v[EnKai.tools.lang.getLanguageShort ()]
    end
  end
  
  return poiList  
  
end

function EnKai.map.GetZoneByName (name)

  for zoneId, details in pairs(_zoneList) do
    if details[EnKai.tools.lang.getLanguageShort()] == name then
      return zoneId, details
    end
  end

  return nil, nil

end

function EnKai.map.GetZoneDetails (zoneID)

	return _zoneList[zoneID]

end
