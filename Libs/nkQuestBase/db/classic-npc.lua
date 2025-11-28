local addonInfo, privateVars = ...

---------- init namespace ---------

local _internal		= privateVars.internal

---------- init local variables ---------

---------- init variables ---------

---------- local function block ---------

if privateVars.npcLoader == nil then privateVars.npcLoader = {} end

privateVars.npcLoader["classic"] =
function() _internal.loadNPCs({
UFFF00E4A2A415299={DE='Evander Tollis', FR='Evander Tollis', EN='Evander Tollis', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFFFE4E3477C261BE={DE='Gloria Lucia', FR='Gloria Lucia', EN='Gloria Lucia', scene={DE='Turnis-Bunker', FR='Abri de la Rivière Turnis', EN='Turnis River Bunker'}, lvl=57}
,UFF56069340106EE0={DE='Porticulum-Meister', FR='Maître de porticulum', EN='Porticulum Master', scene={DE='Rosthafen', FR='Port Ferrique', EN='Ferric Harbor'}, lvl=50}
,UFFEEDA0337EAE505={DE='General Batua', FR='Général Batua', EN='General Batua', scene={DE='Bärenhain-Bunker', FR='Abri du Bosquet d\'Ursin', EN='Ursin Grove Bunker'}, lvl=60}
,UFFEE27AA601CCE7B={DE='Martin Strozza', FR='Martin Strozza', EN='Martin Strozza', scene={DE='Südwallbunker', FR='Abri de la Muraille sud', EN='Southwall Bunker'}, lvl=52}
,UFFEE19BE0999A17A={DE='Wachhauptmann Barish', FR='Capitaine de la garde Barish', EN='Guard Captain Barish', scene={DE='Das Arsenal', FR='Armurerie', EN='The Armory'}, lvl=59}
,UFF4B181F3EAFA331={DE='Durn Vatt', FR='Durn Vatt', EN='Durn Vatt', scene={DE='Öffentliche Bücherhalle', FR='Bibliothèque des Citoyens', EN='Citizen\'s Library'}, lvl=52}
,UFFED64A920D8D6D3={DE='Prinz Casimar', FR='Prince Casimar', EN='Prince Casimar', scene={DE='Bärenhain-Bunker', FR='Abri du Bosquet d\'Ursin', EN='Ursin Grove Bunker'}, lvl=60}
,UFF4050D61CF212E5={DE='Borrin Gammult', FR='Borrin Gammult', EN='Borrin Gammult', scene={DE='Tuldio-Zuflucht', FR='Retraite de Tuldio', EN='Tuldio Retreat'}, lvl=52}
,UFF3899782D162331={DE='Christof Ferriero', FR='Christof Ferriero', EN='Christof Ferriero', scene={DE='Das Arsenal', FR='Armurerie', EN='The Armory'}, lvl=58}
,UFFEB18A009F6E2ED={DE='Annalisa Stuzzi', FR='Annalisa Stuzzi', EN='Annalisa Stuzzi', scene={DE='Turnis-Bunker', FR='Abri de la Rivière Turnis', EN='Turnis River Bunker'}, lvl=57}
,UFFEABD063185CEEA={DE='Dame Tajlora Aurentis', FR='Dame Tajlora Aurentis', EN='Dame Tajlora Aurentis', scene={DE='Dämonenstätten', FR='Territoires des Démons', EN='Daemon Loci'}, lvl=52}
,UFF2898F80B469049={DE='Vigla Noktomezo', FR='Vigla Noktomezo', EN='Vigla Noktomezo', scene={DE='Arlans Herausforderung', FR='Défi d\'Arlan', EN='Arlan\'s Challenge'}, lvl=58}
,UFFE9C24449BD1149={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Düsterlauf-Wrack', FR='Décombres de Sombrecours', EN='Darkrun Wreckage'}, lvl=53}
,UFFFDB2EA6BAF6897={DE='Salvarola', FR='Salvarola', EN='Salvarola', scene={DE='Expeditionslager', FR='Camp expéditionnaire', EN='Expedition Camp'}, lvl=52, x=6995.919843629, y=1093.8399755508, z=9297.2097921912}
,UFF12B65119D789BC={DE='Urson Kavalerion', FR='Urson Kavalerion', EN='Urson Kavalerion', scene={DE='Die Kanäle', FR='Les Canaux', EN='The Canals'}, lvl=60, x=12670.1397168, y=861.34998074733, z=11649.699739609}
,UFFE65B8B029D003B={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Cydrels Rast', FR='Refuge de Cydrel', EN='Cydrel\'s Rest'}, lvl=53}
,UFEF77790461E2E9E={DE='Quaria', FR='Quaria', EN='Quaria', scene={DE='Zitadelle der Gestalter', FR='Citadelle des Nécrosculpteurs', EN='Shapers Citadel'}, lvl=59}
,UFEF3F66B3A98BAB6={DE='Dame Mari Batici', FR='Dame Mari Batici', EN='Dame Mari Batici', scene={DE='Sanco-Außenposten', FR='Avant-poste de Sanco', EN='Sanco Outpost'}, lvl=50, x=7583.0298305061, y=1101.7999753729, z=11095.349752}
,UFFE50A7F4D73579A={DE='Raff Irinbon', FR='Raff Irinbon', EN='Raff Irinbon', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFEED948148AAA2ED={DE='Stavel Rosso', FR='Stavel Rosso', EN='Stavel Rosso', scene={DE='Tuldio-Zuflucht', FR='Retraite de Tuldio', EN='Tuldio Retreat'}, lvl=52}
,UFEE861F62E20608D={DE='Elsan Riaro', FR='Elsa Riaro', EN='Elsa Riaro', scene={DE='Bastion Mazamar', FR='Fort Mazamar', EN='Fort Mazamar'}, lvl=51}
,UFEE19B8E347ABC91={DE='Pechvogel', FR='Chuck le guignard', EN='Bad Luck Chuck', scene={DE='Kantstein-Grat', FR='Crête Dentelée', EN='Edgestone Ridge'}, lvl=51}
,UFED843D41053B04D={DE='Jacksen Tornone', FR='Jacksen Tornone', EN='Jacksen Tornone', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=58}
,UFED843D307658D7C={DE='Fredricka Rollins', FR='Fredricka Rollins', EN='Fredricka Rollins', scene={DE='Königliche Gärten', FR='Jardins Royaux', EN='Royal Gardens'}, lvl=58}
,UFED4108B3938D0B7={DE='Lyra Jauntara', FR='Lyra Jauntara', EN='Lyra Jauntara', scene={DE='Südwallbunker', FR='Abri de la Muraille sud', EN='Southwall Bunker'}, lvl=52}
,UFECEF3C516C6B23A={DE='Ciklono Korvon', FR='Ciklono Korvon', EN='Ciklono Korvon', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60, x=12924.499711115, y=902.29997983202, z=11599.489740731}
,UFEC009416D58158F={DE='Dame Veira Connal', FR='Dame Veira Connal', EN='Dame Veira Connal', scene={DE='Silberhöhen', FR='Monts Solides', EN='Sterling Hills'}, lvl=9, x=6209.7698612008, y=820.94998165034, z=3581.6799199432}
,UFEBE60774A363B91={DE='Derr Alwic', FR='Derr Alwic', EN='Derr Alwic', scene={DE='Miran-Tor', FR='Porte de Miran', EN='Miran Gate'}, lvl=54, x=7017.2798431516, y=1132.3899746891, z=10176.39977254}
,UFFDFD5445289BD8C={DE='Michael Stuzzi', FR='Michael Stuzzi', EN='Michael Stuzzi', scene={DE='Cassana-Lagerhaus', FR='Réserve de Cassana', EN='Storehouse Cassana'}, lvl=57}
,UFFDFA7B3217C600C={DE='Bradrin Grubber', FR='Bradrin Grubber', EN='Bradrin Grubber', scene={DE='Menagerie', FR='Ménagerie', EN='Menagerie'}, lvl=58}
,UFEBA6FBE1F2826A8={DE='Dame Tajlora Aurentis', FR='Dame Tajlora Aurentis', EN='Dame Tajlora Aurentis', scene={DE='Dämonenstätten', FR='Territoires des Démons', EN='Daemon Loci'}, lvl=52}
,UFFFC81B75D4651FF={DE='Prinzessin Isabella', FR='Princesse Isabella', EN='Princess Isabella', scene={DE='Reservoir', FR='Réservoir', EN='Reservoir'}, lvl=52}
,UFFDBBA7E273F1B62={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', scene={DE='Klippental', FR='Vallon Abrupt', EN='Cliffside Vale'}, lvl=60, x=7573.099830728, y=1100.8899753932, z=11058.479752824}
,UFE8FBC586B0E8252={DE='Kusujo Tohi', FR='Kusujo Tohi', EN='Kusujo Tohi', scene={DE='Friedhof der Ungetüme', FR='Cimetière des Béhémoths', EN='Behemoth Graveyard'}, lvl=55}
,UFE89328A5F93C6B5={DE='Prepo Detolo', FR='Prepo Detolo', EN='Prepo Detolo', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=55}
,UFE8018211B24FDD6={DE='Äbtissin Katia', FR='Abbesse Katia', EN='Abbess Katia', scene={DE='Tulan', FR='Tuliane', EN='Tulan'}, lvl=60, x=8353.3198132887, y=880.16998032667, z=11924.379733469}
,UFFD729AF2D11C8C1={DE='Prinz Casimar', FR='Prince Casimar', EN='Prince Casimar', scene={DE='Der Turm der Morgenröte', FR='Tour de l\'Aube', EN='Tower of Dawn'}, lvl=60}
,UFE5A9A11186439A0={DE='Nescio Heredi', FR='Nescio Heredi', EN='Nescio Heredi', scene={DE='Sturmfestung', FR='Bastion-Tempête', EN='Stormhold'}, lvl=58}
,UFFD5552C53B6C5F2={DE='Argon Gianin', FR='Argon Gianin', EN='Argon Gianin', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFE55409902C71B85={DE='Fin Quartus', FR='Fin Quartus', EN='Fin Quartus', scene={DE='Menagerie', FR='Ménagerie', EN='Menagerie'}, lvl=59}
,UFFD515FD1C582C43={DE='Belarus', FR='Belarus', EN='Belarus', scene={DE='Aquädukt', FR='Aqueduc', EN='Aqueduct'}, lvl=52}
,UFE49276C658F9747={DE='Hauptmann Connor Gilliosa', FR='Capitaine Connor Gilliosa', EN='Captain Connor Gilliosa', scene={DE='Bastion Mazamar', FR='Fort Mazamar', EN='Fort Mazamar'}, lvl=51}
,UFFD34A0D27D28AF3={DE='Marschall Eichenherz', FR='Maréchal Cœurdechêne', EN='Marshal Oakheart', scene={DE='Vaud-Turm', FR='Tour Vaud', EN='Vaud Tower'}, lvl=60, x=6715.1198499054, y=1113.5499751102, z=9978.5197769627}
,UFE38E92276C01C20={DE='Dame Tajlora Aurentis', FR='Dame Tajlora Aurentis', EN='Dame Tajlora Aurentis', scene={DE='Tulan', FR='Tuliane', EN='Tulan'}, lvl=52, x=8185.759817034, y=871.35998052359, z=11809.649736034}
,UFFD240CF58F4A832={DE='Hauptmann Shane Hawkins', FR='Capitaine Shane Hawkins', EN='Captain Shane Hawkins', scene={DE='Aquädukt', FR='Aqueduc', EN='Aqueduct'}, lvl=53}
,UFE339BC10EAD87C7={DE='Zerelia Hejme', FR='Zerelia Hejme', EN='Zerelia Hejme', scene={DE='Wachtkap', FR='Pointe du Garde', EN='Warden\'s Point'}, lvl=52, x=6269.2598598711, y=839.46998123638, z=4547.7398983501}
,UFE31C7F07AD98009={DE='Euklid Klara', FR='Euclid Klara', EN='Euclid Klara', scene={DE='Die Nordruinen', FR='Ruines du Nord', EN='The Northern Ruins'}, lvl=55}
,UFE31C7EF69E3DD38={DE='Euklid Klara', FR='Euclid Klara', EN='Euclid Klara', scene={DE='Fleischwald', FR='Sarracenia', EN='Forest of Flesh'}, lvl=55}
,UFE31C7EE58B51A2B={DE='Euklid Klara', FR='Euclid Klara', EN='Euclid Klara', scene={DE='Angoro-Abgrund', FR='Corniche de Phobos', EN='Brink of Angoro'}, lvl=55}
,UFE31C7ED485F57DA={DE='Euklid Klara', FR='Euclid Klara', EN='Euclid Klara', scene={DE='Schwarze Gestade', FR='Grève Noire', EN='Black Strand'}, lvl=55}
,UFE31C7EC3F66ACD4={DE='Euklid Klara', FR='Euclid Klara', EN='Euclid Klara', scene={DE='Ruinen-Passage', FR='Passage de la Désolation', EN='Ruinous Passage'}, lvl=55}
,UFE31C7EB2E08E9C7={DE='Euklid Klara', FR='Euclid Klara', EN='Euclid Klara', scene={DE='Das Eitermoor', FR='Mare de Sanie', EN='The Pus Swamp'}, lvl=55}
,UFE31C7EA1DD226F6={DE='Euklid Klara', FR='Euclid Klara', EN='Euclid Klara', scene={DE='Faulige Ebenen', FR='Plaines Fétides', EN='Fetid Plains'}, lvl=55}
,UFE31C7E90CE463E1={DE='Euklid Klara', FR='Euclid Klara', EN='Euclid Klara', scene={DE='Der Endlose Ansturm', FR='Assaut Sans Fin', EN='The Eternal Assault'}, lvl=55}
,UFE31C7E8638FB890={DE='Euklid Klara', FR='Euclid Klara', EN='Euclid Klara', scene={DE='Friedhof der Ungetüme', FR='Cimetière des Béhémoths', EN='Behemoth Graveyard'}, lvl=55}
,UFFD17583781E6344={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=55}
,UFE27FFBA7480804D={DE='Dame Uragano', FR='Dame Uragano', EN='Dame Uragano', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60, x=13100.629707178, y=906.44997973926, z=11518.589742539}
,UFFFB1D6C740DCA76={DE='Diago Arkella', FR='Diago Arkella', EN='Diago Arkella', scene={DE='Moorschlucht-Bunker', FR='Abri des Gorges du Marécage', EN='Fen Gorge Bunker'}, lvl=55}
,UFFCE074969CF9EA5={DE='Evander Tollis', FR='Evander Tollis', EN='Evander Tollis', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFFCDA002042C39C8={DE='Bul Rokkad', FR='Bul Rokkad', EN='Bul Rokkad', scene={DE='Die Höhle', FR='Enclave', EN='The Hollow'}, lvl=55}
,UFE03A12977A46EBF={DE='Yevina Heredi', FR='Yevina Heredi', EN='Yevina Heredi', scene={DE='Arlans Herausforderung', FR='Défi d\'Arlan', EN='Arlan\'s Challenge'}, lvl=58}
,UFFCCA4C24B75011C={DE='Prinz Casimar', FR='Prince Casimar', EN='Prince Casimar', scene={DE='Der Thronsaal', FR='Salle du trône', EN='Throne Room'}, lvl=60}
,UFFCC50230AEFDE2F={DE='Nuetta', FR='Nuetta', EN='Nuetta', scene={DE='Moorschlucht-Bunker', FR='Abri des Gorges du Marécage', EN='Fen Gorge Bunker'}, lvl=55}
,UFDFA7F9F343754DB={DE='Kulpa', FR='Kulpa', EN='Kulpa', scene={DE='Sumpf-Konvoi', FR='Convoi Embourbé', EN='Mired Convoy'}, lvl=56}
,UFDDFAFA40C7AA40D={DE='Soldat Torval', FR='Soldat Torval', EN='Private Torval', scene={DE='Ruinen-Passage', FR='Passage de la Désolation', EN='Ruinous Passage'}, lvl=53}
,UFDDC57381CED8E5E={DE='Viido Stuzzi', FR='Viido Stuzzi', EN='Viido Stuzzi', scene={DE='Arlans Herausforderung', FR='Défi d\'Arlan', EN='Arlan\'s Challenge'}, lvl=58}
,UFDB6A6B529EDBFD6={DE='Prinz Casimar', FR='Prince Casimar', EN='Prince Casimar', scene={DE='Pfad der Prinzen', FR='Voie des Princes', EN='Path of Princes'}, lvl=60}
,UFDAE9958430B7180={DE='Milton Gammut', FR='Milton Gammut', EN='Milton Gammut', scene={DE='Tal der Knochen', FR='Vallée de la Mort', EN='Valley of Bones'}, lvl=53}
,UFFC4455F608BB579={DE='Meisterin Inyra', FR='Maîtresse Inyra', EN='Mistress Inyra', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFDA93B691168B97B={DE='Rafaga Direkti', FR='Rafaga Direkti', EN='Rafaga Direkti', scene={DE='Tuldio-Zuflucht', FR='Retraite de Tuldio', EN='Tuldio Retreat'}, lvl=50}
,UFFF9F58C52AC593B={DE='Nuetta', FR='Nuetta', EN='Nuetta', scene={DE='Moorschlucht-Bunker', FR='Abri des Gorges du Marécage', EN='Fen Gorge Bunker'}, lvl=55}
,UFDA2F89E2AD10F68={DE='Viando Kuiri', FR='Viando Kuiri', EN='Viando Kuiri', scene={DE='Landungslager', FR='Camp du Débarquement', EN='Camp Landfall'}, lvl=57}
,UFD9357F4131C3CB1={DE='Gartyn Hejme', FR='Gartyn Hejme', EN='Gartyn Hejme', lvl=52, x=309.78999307565, y=1064.6899762023, z=298.85999331996}
,UFD8C2A746362E5E2={DE='Nug-Händler', FR='Marchand nug', EN='Nug Trader', scene={DE='Faulige Ebenen', FR='Plaines Fétides', EN='Fetid Plains'}, lvl=55}
,UFFC062F85985B105={DE='Nuetta', FR='Nuetta', EN='Nuetta', scene={DE='Moorschlucht-Bunker', FR='Abri des Gorges du Marécage', EN='Fen Gorge Bunker'}, lvl=55}
,UFD8333DF620FDBFA={DE='Goja Patima', FR='Goja Patima', EN='Goja Patima', scene={DE='Friedhof der Ungetüme', FR='Cimetière des Béhémoths', EN='Behemoth Graveyard'}, lvl=55}
,UFFBEFBD376671E16={DE='Läufer Koldan', FR='Coureur Koldan', EN='Runner Koldan', scene={DE='Strozza-Anwesen', FR='Domaine de Strozza', EN='Strozza Estate'}, lvl=52}
,UFFBEE4A75A41CA8E={DE='Bellia Florell', FR='Bellia Florell', EN='Bellia Florell', scene={DE='Moorschlucht-Bunker', FR='Abri des Gorges du Marécage', EN='Fen Gorge Bunker'}, lvl=55}
,UFD690A5F3B1A597C={DE='Späherin Tayvia Dorno', FR='Éclaireuse Tayvia Dorno', EN='Scout Tayvia Dorno', scene={DE='Tulan', FR='Tuliane', EN='Tulan'}, lvl=50, x=6971.6998441704, y=1064.839976199, z=11370.91974584}
,UFD6753C03532A59F={DE='Grinson Stoe', FR='Grinson Stoe', EN='Grinson Stoe', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60, x=316.49999292567, y=1145.0299744066, z=154.59999654442}
,UFD6526674CFB89F7={DE='Königin Miela Aurentis', FR='Reine Miela Aurentis', EN='Queen Miela Aurentis', scene={DE='Rosthafen', FR='Port Ferrique', EN='Ferric Harbor'}, lvl=50}
,UFFF9526349775008={DE='Aeranna Okkorg', FR='Aeranna Okkorg', EN='Aeranna Okkorg', scene={DE='Die Höhle', FR='Enclave', EN='The Hollow'}, lvl=55}
,UFD5887520167DBBF={DE='Sebia Rawyn', FR='Sebia Rawyn', EN='Sebia Rawyn', scene={DE='Miran-Tor', FR='Porte de Miran', EN='Miran Gate'}, lvl=54, x=7016.3898431715, y=1132.8899746779, z=10163.699772824}
,UFD581746050B1986={DE='Serena Vesque', FR='Serena Vesque', EN='Serena Vesque', scene={DE='Bärenhain-Bunker', FR='Abri du Bosquet d\'Ursin', EN='Ursin Grove Bunker'}, lvl=52}
,UFFBBFEA438EFA23C={DE='Tryyna Hejme', FR='Tryyna Hejme', EN='Tryyna Hejme', lvl=52, x=7389.1198348403, y=871.80998051353, z=3031.349932244}
,UFFBBFEA32FB1FF2F={DE='Perzin Hejme', FR='Perzin Hejme', EN='Perzin Hejme', lvl=52, x=6073.979864236, y=918.57997946814, z=5239.4198828898}
,UFFBB7E455B97324F={DE='Natan Weeze', FR='Natan Weeze', EN='Natan Weeze', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFD2D7FC50943AD68={DE='Ruht Onan', FR='Ruht Onan', EN='Ruht Onan', scene={DE='Öffentliche Bücherhalle', FR='Bibliothèque des Citoyens', EN='Citizen\'s Library'}, lvl=52}
,UFFB71FA0641023C1={DE='Der Einsiedler', FR='L\'Ermite', EN='The Hermit', scene={DE='Strozza-Anwesen', FR='Domaine de Strozza', EN='Strozza Estate'}, lvl=55}
,UFD22B267779B9FAE={DE='Toia Hejme', FR='Toia Hejme', EN='Toia Hejme', scene={DE='Blutige Küsten', FR='Rivages Sanguins', EN='Sanguine Shores'}, lvl=52, x=6102.1098636072, y=817.39998172969, z=3218.5199280605}
,UFD22223303767452={DE='Sonla Kenka', FR='Sonla Kenka', EN='Sonla Kenka', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=55}
,UFFB5F20A2B242DE3={DE='Pyrhus Zan', FR='Pyrhus Zan', EN='Pyrhus Zan', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFCFFBF1E0CEBE509={DE='Torwächter Athomo', FR='Garde-barrière Athomo', EN='Gatekeeper Athomo', lvl=50}
,UFFB300AB48C77268={DE='Serrik Tavalon', FR='Serrik Tavalon', EN='Serrik Tavalon', scene={DE='Bärenhain-Bunker', FR='Abri du Bosquet d\'Ursin', EN='Ursin Grove Bunker'}, lvl=55, x=12683.369716505, y=855.16998088546, z=11608.999740519}
,UFFB300AA3FE94F1A={DE='Purla Ilira', FR='Purla Ilira', EN='Purla Ilira', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=52, x=12674.16971671, y=861.81998073682, z=11667.309739215}
,UFFB1FF6625FD043F={DE='Salvarola', FR='Salvarola', EN='Salvarola', scene={DE='Aquädukt', FR='Aqueduc', EN='Aqueduct'}, lvl=60}
,UFCDCFEA61042FA78={DE='Ralok Denn', FR='Ralok Denn', EN='Ralok Denn', scene={DE='Vaud-Turm', FR='Tour Vaud', EN='Vaud Tower'}, lvl=54, x=6720.8298497777, y=1113.6599751078, z=9993.6597766243}
,UFCD2DA32011A8B3C={DE='Großer Joe', FR='Joe le Gros', EN='Big Joe', scene={DE='Aurentine-Palast', FR='Palais Aurentin', EN='Aurentine Palace'}, lvl=52}
,UFFAEA81774E58CDF={DE='Flauschie 2: Das Flauschen', FR='Duveteux 2 : Pelage abondant', EN='Fluffy 2: The Fluffening', lvl=1}
,UFCCE9CDB50E48FE6={DE='Gebundener Animus', FR='Esprit lié', EN='Bound Spirit', scene={DE='Schwarze Gestade', FR='Grève Noire', EN='Black Strand'}, lvl=59}
,UFCC356ED6312CB48={DE='Penala Dura', FR='Penala Dura', EN='Penala Dura', scene={DE='Friedhof der Ungetüme', FR='Cimetière des Béhémoths', EN='Behemoth Graveyard'}, lvl=54}
,UFFACC8C8621E2E40={DE='Geist des Priesters', FR='Fantôme du prêtre', EN='Priest\'s Ghost', scene={DE='Tempel des Thontic', FR='Temple de Santic', EN='Temple of Thontic'}, lvl=57}
,UFCBD5D3B381D1513={DE='Teril Bajoris', FR='Teril Bajoris', EN='Teril Bajoris', scene={DE='Vaud-Turm', FR='Tour Vaud', EN='Vaud Tower'}, lvl=54, x=6715.4798498973, y=1113.55997511, z=9984.3997768313}
,UFFABF00C4369E8C6={DE='Belarus', FR='Belarus', EN='Belarus', scene={DE='Aquädukt', FR='Aqueduc', EN='Aqueduct'}, lvl=52}
,UFCB3AD77472B7FCD={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Zitadelle der Gestalter', FR='Citadelle des Nécrosculpteurs', EN='Shapers Citadel'}, lvl=59}
,UFCB3AD7636F2B4FF={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Zitadelle der Gestalter', FR='Citadelle des Nécrosculpteurs', EN='Shapers Citadel'}, lvl=59}
,UFCB3AD7414AECE99={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Höhle des Kwell', FR='Antre de Kwell', EN='Den of Kwell'}, lvl=59}
,UFCB3AD7304700B88={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Höhle des Kwell', FR='Antre de Kwell', EN='Den of Kwell'}, lvl=59}
,UFCB3AD727B1A40BB={DE='Der Aufseher', FR='Superviseur', EN='The Overseer', scene={DE='Arlans Herausforderung', FR='Défi d\'Arlan', EN='Arlan\'s Challenge'}, lvl=58}
,UFFAB6CB82492A51B={DE='Xevrol Om', FR='Xevrol Om', EN='Xevrol Om', scene={DE='Der Schlund', FR='Agonie', EN='The Crawl'}, lvl=55}
,UFFAB364816CA0EF2={DE='Prinzessin Isabella', FR='Princesse Isabella', EN='Princess Isabella', scene={DE='Südwallbunker', FR='Abri de la Muraille sud', EN='Southwall Bunker'}, lvl=60}
,UFCAF9754250BA952={DE='Batos Sonis', FR='Batos Sonis', EN='Batos Sonis', scene={DE='Die Kanäle', FR='Les Canaux', EN='The Canals'}, lvl=60, x=12838.739713032, y=863.48998069949, z=11668.779739182}
,UFCA3905E3E864A28={DE='Dervo', FR='Dervo', EN='Dervo', scene={DE='Sumpf-Konvoi', FR='Convoi Embourbé', EN='Mired Convoy'}, lvl=56}
,UFC9B84A577A44801={DE='Prinzessin Isabella', FR='Princesse Isabella', EN='Princess Isabella', scene={DE='Der Thronsaal', FR='Salle du trône', EN='Throne Room'}, lvl=60}
,UFC9947C40FA12375={DE='Keller Vann', FR='Keller Vann', EN='Keller Vann', scene={DE='Königskorridor', FR='Passage du Roi', EN='King\'s Corridor'}, lvl=53, x=6602.9799804688, y=1044.6300048828, z=9379.919921875}
,UFFA88B7C7AB4AA96={DE='Prinzessin Isabella', FR='Princesse Isabella', EN='Princess Isabella', scene={DE='Tore der Glückseligkeit', FR='Portes d\'Alcyon', EN='Halcyon Gates'}, lvl=60}
,UFC94686A03D26F38={DE='Vip', FR='Vip', EN='Vip', scene={DE='Faulige Ebenen', FR='Plaines Fétides', EN='Fetid Plains'}, lvl=55}
,UFFA85A904A03166B={DE='Prinzessin Isabella', FR='Princesse Isabella', EN='Princess Isabella', scene={DE='Der Turm der Morgenröte', FR='Tour de l\'Aube', EN='Tower of Dawn'}, lvl=60}
,UFC8361D6681D60E7={DE='Felisa Pozzo', FR='Felisa Pozzo', EN='Felisa Pozzo', scene={DE='Bärenhain-Bunker', FR='Abri du Bosquet d\'Ursin', EN='Ursin Grove Bunker'}, lvl=52}
,UFC7C475B62903DE5={DE='Königin Miela Aurentis', FR='Reine Miela Aurentis', EN='Queen Miela Aurentis', scene={DE='Tuldio-Zuflucht', FR='Retraite de Tuldio', EN='Tuldio Retreat'}, lvl=52}
,UFC66D49B1E47549B={DE='Budro Velgin', FR='Budro Velgin', EN='Budro Velgin', scene={DE='Menagerie', FR='Ménagerie', EN='Menagerie'}, lvl=59}
,UFFA185E427A50A1A={DE='Prinz Casimar', FR='Prince Casimar', EN='Prince Casimar', scene={DE='Pfad der Prinzen', FR='Voie des Princes', EN='Path of Princes'}, lvl=60}
,UFC3622EF1A7E3A7A={DE='Sophia Procter', FR='Sophia Procter', EN='Sophia Procter', scene={DE='Ruinen-Passage', FR='Passage de la Désolation', EN='Ruinous Passage'}, lvl=53}
,UFC2B5D961EBF54FF={DE='Amisto Mallumo', FR='Amisto Mallumo', EN='Amisto Mallumo', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=55}
,UFC2B2FE328973345={DE='Nezifila Alodiada', FR='Nezifila Alodiada', EN='Nezifila Alodiada', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=55}
,UFC2706AE61666A47={DE='Söldnerin Margaret', FR='Mercenaire Margaret', EN='Mercenary Margaret', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60, x=12996.809709499, y=887.30998016708, z=11715.299738143}
,UFC242E7C67E8A718={DE='Lia Marconi', FR='Lia Marconi', EN='Lia Marconi', scene={DE='Südwallbunker', FR='Abri de la Muraille sud', EN='Southwall Bunker'}, lvl=52}
,UFF9CBF045F74E0DC={DE='Belarus', FR='Belarus', EN='Belarus', scene={DE='Südwallbunker', FR='Abri de la Muraille sud', EN='Southwall Bunker'}, lvl=55}
,UFC1F58F70DF7681F={DE='Porticulum-Meister', FR='Maître de porticulum', EN='Porticulum Master', scene={DE='Rosthafen', FR='Port Ferrique', EN='Ferric Harbor'}, lvl=50}
,UFF9C3C8B1FA41129={DE='Prinzessin Isabella', FR='Princesse Isabella', EN='Princess Isabella', scene={DE='Das Arsenal', FR='Armurerie', EN='The Armory'}, lvl=60, x=6227.8298607972, y=1149.0099743176, z=7781.2998260744}
,UFC17DEFD3DADFC72={DE='Ansora Demors', FR='Ansora Demors', EN='Ansora Demors', scene={DE='Tulan', FR='Tuliane', EN='Tulan'}, lvl=50, x=8238.6798158512, y=870.83998053521, z=11773.539736841}
,UFBFD4D16209CCCA6={DE='Na Ru', FR='Na Ru', EN='Na Ru', scene={DE='Faulige Ebenen', FR='Plaines Fétides', EN='Fetid Plains'}, lvl=55}
,UFF9949CC06D46207={DE='Bertrand Dimroot', FR='Bertrand Pâle Racine', EN='Bertrand Dimroot', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFFFEF38D665A5A37={DE='Der Aufseher', FR='Superviseur', EN='The Overseer', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=55}
,UFBCBACF11C81994E={DE='Leutnant Moriya Brei', FR='Lieutenant Moriya Brei', EN='Lieutenant Moriya Brei', scene={DE='Cirkbo-Ebenen', FR='Plaines de Cirkbo', EN='Cirkbo Plains'}, lvl=50}
,UFBC7FF6A35662B7E={DE='Eiswacht-Späherin', FR='Éclaireur de Balise de l\'Œil-glacé', EN='Icewatch Scout', lvl=60, x=6105.3998635337, y=924.35997933894, z=5410.9198790565}
,UFBBF9D9D359284BC={DE='Äbtissin Katia', FR='Abbesse Katia', EN='Abbess Katia', scene={DE='Dämonenstätten', FR='Territoires des Démons', EN='Daemon Loci'}, lvl=60}
,UFF92C72819FB62E5={DE='Sonya Corrin', FR='Sonya Corrin', EN='Sonya Corrin', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFBBBC052251BB970={DE='Marissa Tarn', FR='Marissa Tarn', EN='Marissa Tarn', scene={DE='Tal der Knochen', FR='Vallée de la Mort', EN='Valley of Bones'}, lvl=53}
,UFBB73D2C11C10628={DE='Korvin Anders', FR='Korvin Anders', EN='Korvin Anders', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60, x=13129.739706527, y=906.44997973926, z=11509.229742749}
,UFF91E53A28E03FA3={DE='Meister Gert', FR='Maître Gert', EN='Master Gert', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFBB0AC335633C4B7={DE='Ezael', FR='Ezael', EN='Ezael', scene={DE='Faulige Ebenen', FR='Plaines Fétides', EN='Fetid Plains'}, lvl=55}
,UFBA918FC17BA314B={DE='Söldnerin Butler', FR='Mercenaire Butler', EN='Mercenary Butler', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60, x=12977.319709934, y=887.30998016708, z=11705.849738354}
,UFF90D5B155FFEA13={DE='Hauptmann Shane Hawkins', FR='Capitaine Shane Hawkins', EN='Captain Shane Hawkins', scene={DE='Öffentliche Bücherhalle', FR='Bibliothèque des Citoyens', EN='Citizen\'s Library'}, lvl=52}
,UFF90D04C09ABE324={DE='Sukra Radorb', FR='Sukra Radorb', EN='Sukra Radorb', scene={DE='Die Höhle', FR='Enclave', EN='The Hollow'}, lvl=55}
,UFBA36B517C1ECDBA={DE='Jim der Große Hemdlose', FR='Grand Jim Torse-nu', EN='Big Shirtless Jim', scene={DE='Mephitis-Sumpf', FR='Marais de Méphite', EN='Mephitis Bog'}, lvl=52, x=8238.1598158628, y=870.86998053454, z=11830.209735574}
,UFBA051FD413E7528={DE='Prototyp EW-205', FR='Prototype EW-205', EN='EW-205 Prototype', scene={DE='Cassana-Anwesen', FR='Domaine de Cassana', EN='Cassana Estate'}, lvl=56}
,UFB9E341D5B3D5E11={DE='Skartor Anders', FR='Skartor Anders', EN='Skartor Anders', scene={DE='Tuldio-Zuflucht', FR='Retraite de Tuldio', EN='Tuldio Retreat'}, lvl=50}
,UFB90BCEB75BE8E93={DE='Marta Tulla', FR='Marta Tulla', EN='Marta Tulla', scene={DE='Tal der Knochen', FR='Vallée de la Mort', EN='Valley of Bones'}, lvl=53}
,UFF8E758746DD069A={DE='Ausbilder Ristan', FR='Instructeur Ristan', EN='Instructor Ristan', scene={DE='Moorschlucht-Bunker', FR='Abri des Gorges du Marécage', EN='Fen Gorge Bunker'}, lvl=50}
,UFF8D05886AF6A913={DE='Hauptmann Shane Hawkins', FR='Capitaine Shane Hawkins', EN='Captain Shane Hawkins', scene={DE='Bärenhain-Bunker', FR='Abri du Bosquet d\'Ursin', EN='Ursin Grove Bunker'}, lvl=52}
,UFF8CC23A3FA5985A={DE='Bruder Vance', FR='Frère Vance', EN='Brother Vance', scene={DE='Turnis-Bunker', FR='Abri de la Rivière Turnis', EN='Turnis River Bunker'}, lvl=57}
,UFB7E6F3F19180FDF={DE='Samuel Cuperno', FR='Samuel Cuperno', EN='Samuel Cuperno', scene={DE='Villa Orphela', FR='Villa Orphela', EN='Villa Orphela'}, lvl=54}
,UFB7E6F3D7FF581F9={DE='Tamoya Xula', FR='Tamoya Xula', EN='Tamoya Xula', scene={DE='Avendrus-Anwesen', FR='Domaine d\'Avendrus', EN='Avendrus Estate'}, lvl=55}
,UFB7E6F3C6E9FDEE8={DE='Tedwin Paseli', FR='Tedwin Paseli', EN='Tedwin Paseli', scene={DE='Auroborus-Wald', FR='Bois de l\'Ouroboros', EN='Auroborus Woods'}, lvl=55}
,UFB7E6F3B5DA11B9B={DE='Raphael Espestino', FR='Raphaël Espestino', EN='Raphael Espestino', scene={DE='Arkella-Anwesen', FR='Domaine d\'Arkella', EN='Arkella Estate'}, lvl=55}
,UFB6BE81B15763EE0={DE='Prototyp AW-2301', FR='Prototype AW-2301', EN='AW-2301 Prototype', scene={DE='West-Allmende', FR='Terres Occidentales', EN='Western Commons'}, lvl=54}
,UFF89B5D55F81AC1F={DE='Belarus', FR='Belarus', EN='Belarus', scene={DE='Reservoir', FR='Réservoir', EN='Reservoir'}, lvl=52}
,UFB58C28D67B12B15={DE='Königin Miela Aurentis', FR='Reine Miela Aurentis', EN='Queen Miela Aurentis', scene={DE='Rosthafen', FR='Port Ferrique', EN='Ferric Harbor'}, lvl=50}
,UFF8796090E4D3DEB={DE='Diago Arkella', FR='Diago Arkella', EN='Diago Arkella', scene={DE='Moorschlucht-Bunker', FR='Abri des Gorges du Marécage', EN='Fen Gorge Bunker'}, lvl=55}
,UFB4386CD198F90D7={DE='Zali Fio', FR='Zali Fio', EN='Zali Fio', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=55}
,UFB3BDA0929F681C2={DE='Jibella Ayle', FR='Jibella Ayle', EN='Jibella Ayle', scene={DE='Königskorridor', FR='Passage du Roi', EN='King\'s Corridor'}, lvl=53, x=6600.33984375, y=1044.6300048828, z=9391.740234375}
,UFB398E753CF79DA0={DE='Gorna Nilla', FR='Gorna Nilla', EN='Gorna Nilla', scene={DE='Fleischwald', FR='Sarracenia', EN='Forest of Flesh'}, lvl=57}
,UFF8599FD174263CB={DE='Hauptmann Shane Hawkins', FR='Capitaine Shane Hawkins', EN='Captain Shane Hawkins', scene={DE='Reservoir', FR='Réservoir', EN='Reservoir'}, lvl=52}
,UFB36ECDF2E7D1370={DE='Kaz Umiel', FR='Kaz Umiel', EN='Kaz Umiel', scene={DE='Miran-Tor', FR='Porte de Miran', EN='Miran Gate'}, lvl=54, x=7026.1298429538, y=1131.859974701, z=10193.349772161}
,UFF8556A54C509C84={DE='Prinzessin Isabella', FR='Princesse Isabella', EN='Princess Isabella', scene={DE='Der Thronsaal', FR='Salle du trône', EN='Throne Room'}, lvl=60}
,UFB2286B81767E3D0={DE='Marschall Eichenherz', FR='Maréchal Cœurdechêne', EN='Marshal Oakheart', scene={DE='Klippental', FR='Vallon Abrupt', EN='Cliffside Vale'}, lvl=60, x=7591.5698303152, y=1100.8899753932, z=11074.30975247}
,UFB21AEAC03393B89={DE='Seren Thiell', FR='Seren Thiell', EN='Seren Thiell', scene={DE='Vaud-Turm', FR='Tour Vaud', EN='Vaud Tower'}, lvl=54, x=6710.2198500149, y=1114.5199750885, z=9991.7997766659}
,UFB1F1CBF27864371={DE='Nokta Malhela', FR='Nokta Malhela', EN='Nokta Malhela', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=55}
,UFB1CE1A85F4EA13C={DE='Dame Tajlora Aurentis', FR='Dame Tajlora Aurentis', EN='Dame Tajlora Aurentis', scene={DE='Dämonenstätten', FR='Territoires des Démons', EN='Daemon Loci'}, lvl=52, x=6950.4298446458, y=1028.4699770119, z=12098.559729576}
,UFB1B571D744782FF={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Landungslager', FR='Camp du Débarquement', EN='Camp Landfall'}, lvl=55}
,UFF825EC7712884B6={DE='Jerald Torril', FR='Jerald Torril', EN='Jerald Torril', scene={DE='Cassana-Lagerhaus', FR='Réserve de Cassana', EN='Storehouse Cassana'}, lvl=57}
,UFB07EC18350E1355={DE='Vulana Senviva', FR='Vulana Senviva', EN='Vulana Senviva', scene={DE='Totenpass', FR='Col des Déchus', EN='Dead Pass'}, lvl=58}
,UFF801CFC4496C28B={DE='Stephan Martins', FR='Stephan Martins', EN='Stephan Martins', scene={DE='Turnis-Bunker', FR='Abri de la Rivière Turnis', EN='Turnis River Bunker'}, lvl=57}
,UFAED75C50468FD82={DE='Lisa Milling', FR='Lisa Milling', EN='Lisa Milling', lvl=57}
,UFAEA1635535CE5EB={DE='Stalvat Markane', FR='Stalvat Markane', EN='Stalvat Markane', scene={DE='Bärenhain-Bunker', FR='Abri du Bosquet d\'Ursin', EN='Ursin Grove Bunker'}, lvl=52}
,UFFF2F67D105BEAF0={DE='Sergeant Orabel', FR='Sergent Orabel', EN='Sergeant Orabel', scene={DE='Ruinen-Passage', FR='Passage de la Désolation', EN='Ruinous Passage'}, lvl=53}
,UFF7BE51A75607D59={DE='Meister Orenzo', FR='Maître Orenzo', EN='Master Orenzo', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFAD588640A835595={DE='Späherin Neya Tibolt', FR='Éclaireuse Neya Tibolt', EN='Scout Neya Tibolt', scene={DE='Rosthafen', FR='Port Ferrique', EN='Ferric Harbor'}, lvl=50}
,UFF7B1E2F5EA3D9C4={DE='Enwar Zinkol', FR='Enwar Zinkol', EN='Enwar Zinkol', scene={DE='Strozza-Anwesen', FR='Domaine de Strozza', EN='Strozza Estate'}, lvl=52}
,UFACBE03905E48A7F={DE='General Batua', FR='Général Batua', EN='General Batua', scene={DE='Solstice-Turm', FR='Tour du Solstice', EN='Solstice Tower'}, lvl=60}
,UFF7A1B94358CADF4={DE='Elena Strozza', FR='Elena Strozza', EN='Elena Strozza', scene={DE='Bärenhain-Bunker', FR='Abri du Bosquet d\'Ursin', EN='Ursin Grove Bunker'}, lvl=52}
,UFAC4691D0C101D3D={DE='Fortan Certe', FR='Fortan Certe', EN='Fortan Certe', scene={DE='Die Kanäle', FR='Les Canaux', EN='The Canals'}, lvl=60}
,UFAB716BB7D7782D7={DE='Königin Miela Aurentis', FR='Reine Miela Aurentis', EN='Queen Miela Aurentis', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60}
,UFAB00E467C9F25CE={DE='Stelita Feldol', FR='Stelita Feldol', EN='Stelita Feldol', scene={DE='Der Schlund', FR='Agonie', EN='The Crawl'}, lvl=55}
,UFA987DC05F80A9B7={DE='Na Ru', FR='Na Ru', EN='Na Ru', scene={DE='Faulige Ebenen', FR='Plaines Fétides', EN='Fetid Plains'}, lvl=55}
,UFA972B6602E782EB={DE='Hadri', FR='Hadri', EN='Hadri', scene={DE='Faulige Ebenen', FR='Plaines Fétides', EN='Fetid Plains'}, lvl=55}
,UFA8AE6F71A8CD346={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Arlans Herausforderung', FR='Défi d\'Arlan', EN='Arlan\'s Challenge'}, lvl=58}
,UFA85F347318CE3F6={DE='Bruder Emanuel', FR='Frère Emmanuel', EN='Brother Emanuel', scene={DE='Tempel des Thontic', FR='Temple de Santic', EN='Temple of Thontic'}, lvl=56}
,UFF733C94368E4714={DE='Sandra Torril', FR='Sandra Torril', EN='Sandra Torril', scene={DE='Turnis-Bunker', FR='Abri de la Rivière Turnis', EN='Turnis River Bunker'}, lvl=57}
,UFA7DA40E0638556E={DE='Davil Andriki', FR='Davil Andriki', EN='Davil Andriki', scene={DE='Hexendickicht', FR='Fourré de la Sorcière', EN='Witch\'s Thicket'}, lvl=56}
,UFF71FDDA6DA9FC12={DE='Portan Aromer', FR='Portan Aromer', EN='Portan Aromer', scene={DE='Der Schlund', FR='Agonie', EN='The Crawl'}, lvl=55}
,UFF71A89E426183CC={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', scene={DE='Miran-Tor', FR='Porte de Miran', EN='Miran Gate'}, lvl=60, x=7026.0698429551, y=1132.3799746893, z=10186.049772324}
,UFA6AC7426C4FC5A7={DE='Destris De\'Ator', FR='Destris De\'Ator', EN='Destris De\'Ator', scene={DE='Klippental', FR='Vallon Abrupt', EN='Cliffside Vale'}, lvl=52}
,UFF70FA22063511BC={DE='Nuetta', FR='Nuetta', EN='Nuetta', scene={DE='Moorschlucht-Bunker', FR='Abri des Gorges du Marécage', EN='Fen Gorge Bunker'}, lvl=55}
,UFA66786A75CB83CE={DE='Hauptmann Connor Gilliosa', FR='Capitaine Connor Gilliosa', EN='Captain Connor Gilliosa', scene={DE='Rosthafen', FR='Port Ferrique', EN='Ferric Harbor'}, lvl=50}
,UFA6089E018F47FB1={DE='Sylver Valis', FR='Sylver Valis', EN='Sylver Valis', scene={DE='Dämonenstätten', FR='Territoires des Démons', EN='Daemon Loci'}, lvl=60}
,UFF6F4F1B4C61C27E={DE='Barta Wren', FR='Barta Wren', EN='Barta Wren', scene={DE='Fleischwald', FR='Sarracenia', EN='Forest of Flesh'}, lvl=57}
,UFA57CE6414103A78={DE='Polvo Rojn', FR='Polvo Rojn', EN='Polvo Rojn', scene={DE='Die Kanäle', FR='Les Canaux', EN='The Canals'}, lvl=60, x=12830.829713209, y=863.48998069949, z=11692.14973866}
,UFA542A5D3F86B6A8={DE='Una Forgiso', FR='Una Forgiso', EN='Una Forgiso', scene={DE='Friedhof der Ungetüme', FR='Cimetière des Béhémoths', EN='Behemoth Graveyard'}, lvl=55}
,UFA4D83F40C43E471={DE='Ponn Zee', FR='Ponn Zee', EN='Ponn Zee', scene={DE='Die Kanäle', FR='Les Canaux', EN='The Canals'}, lvl=60, x=12788.499714155, y=848.0099810455, z=11499.069742976}
,UFA38C3F87031556F={DE='Anya Vesque', FR='Anya Vesque', EN='Anya Vesque', scene={DE='Südwallbunker', FR='Abri de la Muraille sud', EN='Southwall Bunker'}, lvl=52}
,UFA2FDB9C7E261AFF={DE='Purkora Itta', FR='Purkora Itta', EN='Purkora Itta', scene={DE='Die Höhle', FR='Enclave', EN='The Hollow'}, lvl=55}
,UFA26D6032C9C7B95={DE='Sergeant Kando Malacida', FR='Sergent Kando Malacida', EN='Sergeant Kando Malacida', scene={DE='Bastion Mazamar', FR='Fort Mazamar', EN='Fort Mazamar'}, lvl=51}
,UFA268F257EB16725={DE='Klerulo Malnova', FR='Klerulo Malnova', EN='Klerulo Malnova', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=55}
,UFA246C264F9C6727={DE='General Batua', FR='Général Batua', EN='General Batua', scene={DE='Pfad der Prinzen', FR='Voie des Princes', EN='Path of Princes'}, lvl=60}
,UFF69C9A616A3E348={DE='Itoi Rinu', FR='Itoi Rinu', EN='Itoi Rinu', scene={DE='Arlans Herausforderung', FR='Défi d\'Arlan', EN='Arlan\'s Challenge'}, lvl=58, x=12925.669711089, y=908.06997970305, z=11517.779742558}
,UFA203EB90824656E={DE='Ekrana Fajron', FR='Ekrana Fajron', EN='Ekrana Fajron', scene={DE='Die Kanäle', FR='Les Canaux', EN='The Canals'}, lvl=60, x=12835.969713094, y=863.48998069949, z=11665.659739252}
,UFF67E64726149154={DE='Meister Canto', FR='Maître Canto', EN='Master Canto', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,UFA0E05111393200C={DE='Partoprenok Tino', FR='Partoprenok Tino', EN='Partoprenok Tino', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=55}
,UFA0B127B44F0E185={DE='Sylver Valis', FR='Sylver Valis', EN='Sylver Valis', scene={DE='Tulan', FR='Tuliane', EN='Tulan'}, lvl=52, x=8297.2798145413, y=880.17998032644, z=11805.659736123}
,U3BB7E6906AC2D10D={DE='Tigram Leisetritt', FR='Tigram Pas-feutrés', EN='Tigram Stillstep', scene={DE='Phönixhöhe', FR='Butte du Phénix', EN='Phoenix Rise'}, lvl=46}
,U3BEF89FC1E1B73D5={DE='Juntar Kreb', FR='Juntar Kreb', EN='Juntar Kreb', scene={DE='Holzflor', FR='Voilebois', EN='Timberveil'}, lvl=37, x=5505.0598769523, y=975.56997819431, z=2161.4499516878}
,U060A5E042D679DFB={DE='Hazeed', FR='Hazeed', EN='Hazeed', scene={DE='Der Flachhof', FR='La Cour-plate', EN='The Flatyard'}, lvl=47}
,U3C7C83EB69D776E5={DE='Nambus Parm', FR='Nambus Parm', EN='Nambus Parm', scene={DE='Felsgrat', FR='Crêteroc', EN='Rock Ridge'}, lvl=27, x=4535.1398986317, y=918.38997947238, z=3479.3799222298}
,U009B4B723EFF0BF3={DE='Ama Ree', FR='Ama Ree', EN='Ama Ree', lvl=50}
,U3CB781DC5E44EB40={DE='Kira Thanos', FR='Kira Thanos', EN='Kira Thanos', scene={DE='Lager Klüngel', FR='Camp de la Coterie', EN='Coterie Camp'}, lvl=25, x=5739.6098717097, y=1092.0999755897, z=5136.5798851885}
,U06153F5255E74A35={DE='Leutnant Garnn', FR='Lieutenant Garnn', EN='Lieutenant Garnn', scene={DE='Kahlschlägerlager', FR='Emprise du Récupérateur', EN='Reclaimer\'s Hold'}, lvl=40, x=6306.2998590432, y=908.87997968495, z=1617.1699638534}
,U009BBB8963E65E55={DE='Matvei Rostya', FR='Matvei Rostya', EN='Matvei Rostya', scene={DE='Granitwache', FR='Guet de Granite', EN='Granite Watch'}, lvl=32}
,U3CE11C504F628364={DE='Rudelmeister Jormen', FR='Maître-fourrier Jormen', EN='Packmaster Jormen', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7655.2198288925, y=915.32997954078, z=6400.5998569354}
,U3CF13DFD7CFD980A={DE='Ral Teralar', FR='Ral Teralar', EN='Ral Teralar', scene={DE='Zährenbach', FR='Ruisseau de Chutelarme', EN='Tearfall Creek'}, lvl=26, x=4839.219891835, y=1058.7799763344, z=2749.9599385336}
,U3CF3A7B1170C3C5E={DE='Nina Velins', FR='Nina Velins', EN='Nina Velins', scene={DE='Frostfälle', FR='Chutes de givre', EN='Frost Falls'}, lvl=30, x=4287.2499041725, y=1231.3399724774, z=1866.2499582861}
,U3CF4E0C44505EE4C={DE='Onkel Stan', FR='Oncle Stan', EN='Uncle Stan', lvl=55, x=12669.229716821, y=855.20998088457, z=11548.229741877}
,U061A986647F75203={DE='Archivar Aristoi', FR='Archiviste Aristoi', EN='Archivist Aristoi', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=32, x=4552.7798982374, y=1236.1499723699, z=1614.1399639212}
,U3D11142E6E778EDA={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Höhle des Kwell', FR='Antre de Kwell', EN='Den of Kwell'}, lvl=59}
,U3D323D4652EB72E1={DE='Cyril Kalmar', FR='Cyril Kalmar', EN='Cyril Kalmar', lvl=52}
,U3D3F68511E42B1DB={DE='Finius Feuchtstein', FR='Finius Wetstone', EN='Finius Wetstone', lvl=40}
,U3D424CAC5CCABAD5={DE='Geistführer', FR='Guide spirituel', EN='Spirit Guide', scene={DE='Wachfeste', FR='Donjon de Surplomb', EN='Overwatch Keep'}, lvl=16, x=6556.0498534609, y=908.3499796968, z=3075.7399312519}
,U3D4B36A47F02D96B={DE='Greg "Langdolch" Skart', FR='Greg "Dirk" Skart', EN='Greg "Dirk" Skart', scene={DE='Thedeors Zirkel', FR='Cercle de Thedeor', EN='Thedeor\'s Circle'}, lvl=52}
,U3D76CA345A649778={DE='Toren', FR='Toren', EN='Toren', scene={DE='Kahlschlägerlager', FR='Emprise du Récupérateur', EN='Reclaimer\'s Hold'}, lvl=40, x=6343.8198582046, y=903.88997979648, z=1657.1699629594}
,U3D7800613B6F7A11={DE='Afanas Inna', FR='Afanas Inna', EN='Afanas Inna', scene={DE='Trollpesthöhlen', FR='Cavernes des Craspecs', EN='Trollblight Caverns'}, lvl=34}
,U0626A6596712A85D={DE='Stratege Iakale', FR='Stratège Iakale', EN='Stratego Iakale', lvl=50}
,U0626A65A704B52A2={DE='Hauptmann Toria', FR='Capitaine Toria', EN='Captain Toria', lvl=50}
,U3D8EA30F468E8E08={DE='Gherressa', FR='Gherressa', EN='Gherressa', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=50}
,U3DB7F3801020C9BC={DE='Farrah Husin', FR='Farrah Husin', EN='Farrah Husin', scene={DE='Wurmfluchspitze', FR='Aiguille de Plaie-de-wyrm', EN='Wyrmbane Spire'}, lvl=50, x=6119.3198632225, y=981.64997805841, z=7284.4098371807}
,U3DBFA6113B3531C1={DE='Shyla Sternfeuer', FR='Shyla du Foyer Étoilé', EN='Shyla Starhearth', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7515.6298320126, y=888.66998013668, z=3052.199931778}
,U3DC0D8D055FFFD9E={DE='Trinian Nillor', FR='Trinian Nillor', EN='Trinian Nillor', scene={DE='Arche der Auserwählten', FR='Arche des Élus', EN='Ark of the Ascended'}, lvl=8, x=6195.9898615088, y=831.11998142302, z=4293.9999040216}
,U3DC18E696D3524EA={DE='Solena Rikoshi', FR='Solena Rikoshi', EN='Solena Rikoshi', scene={DE='Skeptikerschneise', FR='Approche des Renégats', EN='Defiant\'s Approach'}, lvl=14}
,U3DCEE26A37993435={DE='Kemtok Nessain', FR='Kemtok Nessain', EN='Kemtok Nessain', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=35, x=7639.2898292486, y=914.61997955665, z=6317.9998587817}
,U3E0CBE6E2914EF66={DE='Kira Thanos', FR='Kira Thanos', EN='Kira Thanos', scene={DE='Lothams Schlag', FR='Bosquet de Lotham', EN='Lotham\'s Strike'}, lvl=35}
,U0635F28440B115F8={DE='Sardon Kenrad', FR='Sardon Kenrad', EN='Sardon Kenrad', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=50, x=5134.899885226, y=946.62997884117, z=3124.6599301584}
,U3E1F70977DD4573F={DE='Milica Orlovic', FR='Milica Orlovic', EN='Milica Orlovic', scene={DE='Ruston', FR='Ruston', EN='Ruston'}, lvl=50}
,U3E2C0E2A4DAD25C2={DE='Soldatin Kyeta', FR='Soldat Kyeta', EN='Private Kyeta', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=28, x=3845.1199140549, y=990.43997786194, z=3129.999930039}
,U3E4494A7285DDD7A={DE='Murin Remor', FR='Murin Remor', EN='Murin Remor', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=20, x=7505.0498322491, y=863.40998070128, z=2980.6399333775}
,U3E45ACF3784C81D1={DE='Alyona Dunya', FR='Alyona Dunya', EN='Alyona Dunya', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3656.6899182666, y=1097.6799754649, z=4453.1599004641}
,U3E6E10FD0D7EC34A={DE='Pavel Apostol', FR='Pavel Apostol', EN='Pavel Apostol', scene={DE='Der Turm der Weisen', FR='L\'Aiguille du Sage', EN='The Sagespire'}, lvl=34, x=2583.8299422469, y=1180.9099736046, z=3554.0599205606}
,U3E711DB449B32853={DE='Anwar Ghalib', FR='Anwar Ghalib', EN='Anwar Ghalib', scene={DE='Windzorn-Außenposten', FR='Poste du Vent fou', EN='Windfury Post'}, lvl=48}
,U3E8DD51207475AD8={DE='Soldat Bure', FR='Soldat Bure', EN='Private Bure', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3153.7699295077, y=1095.1499755215, z=3889.1699130703}
,U3E940301414306CD={DE='Rex Cantor', FR='Rex Cantor', EN='Rex Cantor', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=50, x=6611.6798522174, y=884.38998023234, z=7160.6898399461}
,U3EE11CF83E449A3D={DE='Gydur', FR='Gydur', EN='Gydur', lvl=50}
,U3F29CA067B3A3780={DE='Weghüter Thimm', FR='Garde-voie Thimm', EN='Waykeeper Thimm', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26}
,U3F3670735C79C82B={DE='Glenda', FR='Glenda', EN='Glenda', lvl=50}
,U0652AAB57EF7EC80={DE='Wach-Kommandant Malik', FR='Chef-observateur Malik', EN='Watch-Commander Malik', scene={DE='Eiswacht-Außenposten', FR='Avant-poste d\'Œil-glacé', EN='Icewatch Outpost'}, lvl=35, x=2978.8999334164, y=1233.0999724381, z=2393.639946498}
,U3F5F09A119C7378D={DE='Dogen DeGhoulash', FR='Dogen DeGhoulash', EN='Dogen DeGhoulash', lvl=50}
,U3F63811B10807C40={DE='Botin der Vigilie', FR='Messagère des Veilleurs', EN='Messenger of the Vigil', scene={DE='Göttlicher Anlegeplatz', FR='Débarcadère Divin', EN='Divine Landing'}, lvl=52, x=6071.2898642961, y=820.40998166241, z=3961.9399114437}
,U0656CD6458F83481={DE='Dario Ahn', FR='Dario Ahn', EN='Dario Ahn', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=50}
,U3F6A6AF80F471FAF={DE='Murbo Malm', FR='Murbo Malm', EN='Murbo Malm', scene={DE='Quecksilber-Akademie', FR='Académie de Vif-Argent', EN='Quicksilver College'}, lvl=10, x=5981.4798663035, y=812.12998184748, z=3059.0499316249}
,U065850CD1BF367F3={DE='Ranh Burreck', FR='Ranh Burreck', EN='Ranh Burreck', scene={DE='Narbenhaut-Ödnis', FR='Désert de Peau-balafrée', EN='Scarhide Waste'}, lvl=31, x=3290.7699264456, y=1095.7299755085, z=3821.5699145813}
,U3F82C25E0145A6FF={DE='Bruder Jebiah', FR='Frère Jebiah', EN='Brother Jebiah', scene={DE='Glimmlicht', FR='Faible lueur', EN='Glimmering Light'}, lvl=50}
,U3FD8423364C88F64={DE='Hauptmann Beloray', FR='Capitaine Beloray', EN='Captain Beloray', lvl=50}
,U3FD95106370FE5DA={DE='Ignacia Bulwart', FR='Ignacia Bulwart', EN='Ignacia Bulwart', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=52, x=6006.8898657355, y=920.91997941583, z=5153.6698848065}
,U3FE765E7713A6925={DE='Alaric', FR='Alaric', EN='Alaric', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=52, x=7514.7798320316, y=865.5299806539, z=2967.9799336605}
,U4020765C3EE2EB6E={DE='Kira Thanos', FR='Kira Thanos', EN='Kira Thanos', scene={DE='Bitterbecken', FR='Bassin Caustique', EN='Acrid Basin'}, lvl=40}
,U403A29C278834BF1={DE='Stratege Iakale', FR='Stratège Iakale', EN='Stratego Iakale', lvl=50, x=6192.2898615915, y=919.66997944377, z=5154.1998847947}
,U40432DDB0972F094={DE='Anthousa Mona', FR='Anthousa Mona', EN='Anthousa Mona', scene={DE='Endlicht', FR='Dernière Lueur', EN='Lastlight'}, lvl=5, x=605.35998646915, y=38.049999149516, z=998.83997767419}
,U405DD71F6B20B3C0={DE='Zerin Golek', FR='Zerin Golek', EN='Zerin Golek', scene={DE='Der Turm der Weisen', FR='L\'Aiguille du Sage', EN='The Sagespire'}, lvl=34, x=2601.4699418526, y=1180.9099736046, z=3557.259920489}
,U4074BEBD27C396FB={DE='Miz Stillwasser', FR='Miz Eaucalme', EN='Miz Stillwater', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=26, x=3872.7999134362, y=972.1299782712, z=3086.9899310004}
,U407BC83649D650DB={DE='Ben Kwally', FR='Ben Kwally', EN='Ben Kwally', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7607.4498299602, y=915.35997954011, z=6406.6198568009}
,U408162D54CE922BF={DE='Rion Stantor', FR='Rion Stantor', EN='Rion Stantor', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U40BE367D3C3E8C15={DE='Ramel', FR='Ramel', EN='Ramel', scene={DE='Talos-Landung', FR='Appontement de Talos', EN='Talos Landing'}, lvl=50, x=12243.369726339, y=820.84998165257, z=3135.6199299134}
,U40C8CD8A3929067D={DE='Berater Kyl\'radi', FR='Conseiller Kyl\'radi', EN='Advisor Kyl\'radi', scene={DE='Heulendes Plateau', FR='Plateau Mugissant', EN='Howling Plateau'}, lvl=30, x=3612.7299192492, y=1105.0599753, z=3505.0399216563}
,U4108F9E76DECDCF2={DE='Janelyn', FR='Janelyn', EN='Janelyn', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=50, x=6737.7598493993, y=891.42998007499, z=7070.4798419625}
,U411A5A54415B1E32={DE='Gesandter Drakin', FR='Légat Drakin', EN='Legate Drakin', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52, x=6171.689862052, y=920.92997941561, z=5150.469884878}
,U06830C9F1C556301={DE='Bartholomew Cleary', FR='Bartholomew Cleary', EN='Bartholomew Cleary', scene={DE='Bruchsteinbecken-Basislager', FR='Camp de Pierre de Taille', EN='Quarrystone Base Camp'}, lvl=20, x=5691.4998727851, y=961.99997849762, z=4760.4898935948}
,U4129F8785BE5246E={DE='Thomas Penthas', FR='Thomas Penthas', EN='Thomas Penthas', scene={DE='Hammerfürst-Posten', FR='Poste de Fiefmarteau', EN='Hammerlord Post'}, lvl=39}
,U4146049C3EA6E2D7={DE='Douhgar "Der Kurze" Saveli', FR='Douhgar "Shorty" Saveli', EN='Douhgar "Shorty" Saveli', scene={DE='Narbenhaut-Ödnis', FR='Désert de Peau-balafrée', EN='Scarhide Waste'}, lvl=31, x=3290.4299264532, y=1095.6599755101, z=3826.2699144762}
,U4150B00132161DB0={DE='Optio Hagan', FR='Optio Hagan', EN='Optio Hagan', lvl=18, x=6434.4798561782, y=840.63998121023, z=4667.6598956697}
,U415A7B30449AC4AE={DE='Loura Lazshii', FR='Loura Lazshii', EN='Loura Lazshii', scene={DE='Seherweisen-Lager', FR='Camp de Sage-voyant', EN='Seersage Camp'}, lvl=38, x=6096.0898637418, y=915.66997953318, z=2024.6999547444}
,U068B93E466090425={DE='Schutzherr Nerval', FR='Seigneur-protecteur Nerval', EN='Lord-Protector Nerval', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=60, x=4614.3498968612, y=1235.8699723762, z=1542.7399655171}
,U418E620838DAD25E={DE='Horace Pinkston', FR='Horace Pinkston', EN='Horace Pinkston', scene={DE='Nomadenofen', FR='Fournaise du Nomade', EN='Nomad\'s Furnace'}, lvl=44, x=7017.2998431511, y=886.09998019412, z=7075.2198418565}
,U4190E6496B6E61AE={DE='Schreiber Regula', FR='Scribe Regula', EN='Scribe Regula', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=35, x=4587.4799804688, y=1227.6999511719, z=1574.8499755859}
,U41A8878221FCB60A={DE='Armer Tom', FR='Pauvre Tom', EN='Poor Tom', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=50, x=7545.6598313414, y=866.55998063087, z=3066.3799314611}
,U41D11980631D00CF={DE='Marschall Kain', FR='Maréchal Kain', EN='Marshal Kain', scene={DE='Tapferkeitsfeste', FR='Bastion des Braves', EN='Valor Hold'}, lvl=5, x=1030.569976965, y=838.2299812641, z=1044.1399766617}
,U41EEB7B07171B147={DE='Zenturio Ustfer', FR='Centurion Ustfer', EN='Centurion Ustfer', lvl=50}
,U41EEB7B101AE7454={DE='Legionär Ashurd', FR='Légionnaire Ashurd', EN='Legionnaire Ashurd', lvl=50}
,U0698ECB90349A02F={DE='Rorf', FR='Rorf', EN='Rorf', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7630.5798294432, y=915.32997954078, z=6414.579856623}
,U42118238412846EB={DE='Cherenbora Mongke', FR='Cherenbora Mongke', EN='Cherenbora Mongke', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52, x=6096.0098637436, y=919.46997944824, z=5170.3298844341}
,U069D056332FE7E35={DE='Mann ohne Gesicht', FR='Homme sans visage', EN='Faceless Man', scene={DE='Abgründige Kluft', FR='Précipice abyssal', EN='Abyssal Precipice'}, lvl=50}
,U4237BDD312C60156={DE='Zarudasy der Förster', FR='Zarudasy le forestier', EN='Zarudasy the Forester', lvl=50}
,U42398A605A2E4004={DE='Radav der Weise', FR='Radav le Sage', EN='Radav the Wise', scene={DE='Wundwaldgrat', FR='Crête des Bois Meurtris', EN='Scarwood Ridge'}, lvl=31, x=4065.6299091261, y=1079.5299758706, z=4075.4899089057}
,U426EA11770CEAC0C={DE='Sylver Valis', FR='Sylver Valis', EN='Sylver Valis', scene={DE='Atia', FR='Atia', EN='Atia'}, lvl=52}
,U427BD0C313C93913={DE='Senka Zikovia', FR='Senka Zikovia', EN='Senka Zikovia', scene={DE='Ruston', FR='Ruston', EN='Ruston'}, lvl=50}
,U42B1E60C62336A6A={DE='Maris Telluria', FR='Maris Telluria', EN='Maris Telluria', scene={DE='Sanctumwacht', FR='Guet de Sanctum', EN='Sanctum Watch'}, lvl=14, x=7190.7298392747, y=871.71998051554, z=3033.6399321929}
,U42C7381931A56807={DE='Felicia Tassletip', FR='Félicia Pampille', EN='Felicia Tassletip', scene={DE='Skeptikerschneise', FR='Approche des Renégats', EN='Defiant\'s Approach'}, lvl=50}
,U42CB8995164ACFD9={DE='Ganqa Altan', FR='Ganqa Altan', EN='Ganqa Altan', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U42DDA3115ECCB6E0={DE='Soldat Narren', FR='Soldat Narren', EN='Private Narren', scene={DE='Felsgrat', FR='Crêteroc', EN='Rock Ridge'}, lvl=28, x=4274.3599044606, y=953.69997868314, z=3453.5399228074}
,U42E38FCC4877B01D={DE='Periman Hochring', FR='Periman Hautanneau', EN='Periman Highring', scene={DE='Prüfung der Schildwache', FR='Épreuve de la Sentinelle', EN='Trial of the Sentinel'}, lvl=50}
,U42FD769B1788DF03={DE='Moira Hochhalm', FR='Moira Highstem', EN='Moira Highstem', scene={DE='Witwenthron', FR='Perchoir de la Veuve', EN='Widow\'s Perch'}, lvl=45}
,U434C01A72134CA21={DE='Vol Spiridon', FR='Vol Spiridon', EN='Vol Spiridon', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3132.4299299847, y=1095.0899755228, z=3887.4899131078}
,U434F66DC53850DEC={DE='Jaan Hammhir', FR='Jaan Hammhir', EN='Jaan Hammhir', scene={DE='Holzflor', FR='Voilebois', EN='Timberveil'}, lvl=37, x=5453.4198781066, y=978.81997812167, z=2236.8999500014}
,U437840A70B01EB33={DE='Korporälin Riasa', FR='Caporal Riasa', EN='Corporal Riasa', lvl=50}
,U438ADA765EE987FE={DE='Außenposten-Quartiermeister', FR='Intendant de l\'avant-poste', EN='Outpost Quartermaster', lvl=50}
,U43AEFDB254BF1C59={DE='Aposidis Draxxus', FR='Aposidis Draxxus', EN='Aposidis Draxxus', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U43AEFDB36595C6AE={DE='Demetrias', FR='Demetrias', EN='Demetrias', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U43AEFDB476C389BF={DE='Epiphila', FR='Epiphila', EN='Epiphila', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U43AEFDB507384C8C={DE='Hephus the Ranger', FR='Hephus the Ranger', EN='Hephus the Ranger', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U43AEFDB61016779D={DE='Ignatios', FR='Ignatios', EN='Ignatios', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U43B277B91BE577F6={DE='Buck Burgess', FR='Buck Burgess', EN='Buck Burgess', lvl=18}
,U43D18D2D629E80CF={DE='Gylin Ahoris', FR='Gylin Ahoris', EN='Gylin Ahoris', scene={DE='Güldenes Gestade', FR='Grève d\'Or', EN='Gilded Strand'}, lvl=52}
,U43FE35DE475FD951={DE='Brigadier Andan', FR='Brigadier Andan', EN='Brigadier Andan', lvl=50}
,U443660404B2D5EC0={DE='Darel Ranes', FR='Darel Ranes', EN='Darel Ranes', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7646.4598290883, y=915.09997954592, z=6265.1898599621}
,U4438BC786530AE96={DE='Fayne Doran', FR='Fayne Doran', EN='Fayne Doran', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=50}
,U448A3E3B5AC6BE58={DE='Kardinal Visc', FR='Cardinal Visc', EN='Cardinal Visc', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7474.1898329388, y=894.55998000503, z=3095.0299308207}
,U44ACEE966312699D={DE='Rhonna', FR='Rhonna', EN='Rhonna', lvl=50}
,U44EF930A0C124F49={DE='Jayne', FR='Jayne', EN='Jayne', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=26, x=3872.6999134384, y=972.24997826852, z=3089.0699309539}
,U451793B13DE1F508={DE='Mila Kresimera', FR='Mila Kresimera', EN='Mila Kresimera', scene={DE='Hainheber', FR='Ascenseur du Bosquet', EN='Grove Lift'}, lvl=31}
,U06E8C6257D88DFA9={DE='Goorn', FR='Goorn', EN='Goorn', scene={DE='Titanenbrunnen', FR='Puits du Titan', EN='Titan\'s Well'}, lvl=25}
,U4519D5DA194DDBA2={DE='Henrich Ignard', FR='Henrich Ignard', EN='Henrich Ignard', scene={DE='Bastion Zarnost', FR='Fort Zarnost', EN='Fort Zarnost'}, lvl=52}
,U45387825713F2A78={DE='Der Aufseher', FR='Superviseur', EN='The Overseer', scene={DE='Fleischwald', FR='Sarracenia', EN='Forest of Flesh'}, lvl=58}
,U4572B24C7E5CEFC8={DE='Aterina Ramind', FR='Aterina Ramind', EN='Aterina Ramind', scene={DE='Splitterfurt', FR='Hauts-fonds Défigurés', EN='Splintered Shallows'}, lvl=52}
,U45BB6F9E1FAB4F76={DE='Waschen', FR='Wash', EN='Wash', scene={DE='Wundwald-Lift, Basis', FR='Pied de l\'Ascenseur des Bois Meurtris', EN='Scarwood Lift Base'}, lvl=26}
,U45CE2FBC52176E8A={DE='Jon Tom', FR='Jon Tom', EN='Jon Tom', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7695.8098279852, y=917.97997948155, z=6363.799857758}
,U06FD356418AE0807={DE='Marschall Keme', FR='Maréchal Keme', EN='Marshal Keme', scene={DE='Thedeors Zirkel', FR='Cercle de Thedeor', EN='Thedeor\'s Circle'}, lvl=52, x=7417.0598342158, y=863.5299806986, z=2906.7299350295}
,U45F390072BACFE58={DE='Solomon Dewey', FR='Solomon Dewey', EN='Solomon Dewey', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U4629949B27C9E80B={DE='Donny Aspleyn', FR='Donny Aspleyn', EN='Donny Aspleyn', lvl=50}
,U0704928302B8A0D9={DE='Julius Reb', FR='Julius Reb', EN='Julius Reb', lvl=50}
,U466463C94A309AA9={DE='Nahra Adell', FR='Nahra Adell', EN='Nahra Adell', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U466E16C81F1529C7={DE='Kiera', FR='Kiera', EN='Kiera', scene={DE='Kap Feendunst', FR='Pointe de Brumefée', EN='Faemist Point'}, lvl=60}
,U466F8E012F1FF1FB={DE='Ayaneen Shijah', FR='Ayaneen Shijah', EN='Ayaneen Shijah', scene={DE='Übungshof', FR='La Cour d\'Entraînement', EN='The Training Yard'}, lvl=50}
,U070BF6B27DB597FD={DE='Zaharri Swald', FR='Zaharri Swald', EN='Zaharri Swald', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U467D43DC0C2F1020={DE='Melly', FR='Melly', EN='Melly', scene={DE='Gaunergrat', FR='Crête de la Crosse', EN='Crook Ridge'}, lvl=52, x=6046.2598648556, y=935.35997909307, z=5355.1798803024}
,U469DD67376CD9722={DE='Verteidiger Dulvain', FR='Observateur Dulvain', EN='Watcher Dulvain', scene={DE='Wolkenhöhlen', FR='Cavernes Nuageuses', EN='Cloudbourne Caverns'}, lvl=34, x=4304.4899037872, y=1306.6499707941, z=1260.5399718247}
,U46BC8A7C1781278F={DE='Loras Tivan', FR='Loras Tivan', EN='Loras Tivan', scene={DE='Wachfeste', FR='Donjon de Surplomb', EN='Overwatch Keep'}, lvl=19, x=6262.2298600283, y=838.31998126209, z=3242.8099275175}
,U46C8598E00BCB137={DE='Kaspar Massi', FR='Kaspar Massi', EN='Kaspar Massi', scene={DE='Scharfklingenmühle', FR='Moulin de Vivelame', EN='Keenblade Mill'}, lvl=32, x=3767.0499157999, y=1095.169975521, z=4088.5699086133}
,U46FB2498154B5861={DE='Ragheb Fenuk', FR='Ragheb Fenuk', EN='Ragheb Fenuk', scene={DE='Khaliti-Zuflucht', FR='Refuge Khaliti', EN='Khaliti Refuge'}, lvl=49}
,U47135C2812B17E1F={DE='Hauptmann Envris', FR='Capitaine Envris', EN='Captain Envris', lvl=50, x=7435.7798337974, y=904.39997978508, z=3052.6099317688}
,U4723881D6AB67A20={DE='Sandy Remor', FR='Sandy Remor', EN='Sandy Remor', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=20, x=7503.21983229, y=863.40998070128, z=2975.7799334861}
,U472B59C935DCD4EB={DE='Gartek Tharn', FR='Gartek Tharn', EN='Gartek Tharn', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U47557C1C42370DFE={DE='Pelan Bravilin', FR='Pelan Bravilin', EN='Pelan Bravilin', scene={DE='Frosttal', FR='Vallée gelée', EN='Frozen Valley'}, lvl=30, x=4161.7999069765, y=1303.3999708667, z=1416.2899683435}
,U47647B0A316D68F2={DE='Sir Piotr Siennicki', FR='Sire Piotr Siennicki', EN='Sir Piotr Siennicki', scene={DE='Heldentrutz', FR='Bosquet des Héros', EN='Heroes\' Stand'}, lvl=33, x=3091.2299309056, y=1092.9299755711, z=4085.719908677}
,U47736FF375C439FD={DE='Lotham Dunkelmond', FR='Lotham Sombrelune', EN='Lotham Darkmoon', scene={DE='Lothams Schlag', FR='Bosquet de Lotham', EN='Lotham\'s Strike'}, lvl=35}
,U0727600C7E984437={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', scene={DE='Spaltrachenweiher', FR='Mares de la Gueule-fendue', EN='Splitmouth Ponds'}, lvl=43}
,U478CB1E254434C70={DE='Ianna Todrin', FR='Ianna Todrin', EN='Ianna Todrin', scene={DE='Wolfsbann', FR='Aconit', EN='Wolfsbane'}, lvl=50}
,U478E3D1D4A32E8E8={DE='Iaza Amere', FR='Iaza Amere', EN='Iaza Amere', scene={DE='Landungslager', FR='Camp du Débarquement', EN='Camp Landfall'}, lvl=57}
,U4794F3B35F2929AD={DE='Trena', FR='Trena', EN='Trena', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=20, x=6033.0998651497, y=920.92997941561, z=5203.799883686}
,U47A47312420F9218={DE='Sellora Kithan', FR='Sellora Kithan', EN='Sellora Kithan', scene={DE='Skeptikerschneise', FR='Approche des Renégats', EN='Defiant\'s Approach'}, lvl=50}
,U47BD217C65EF1F72={DE='Rygel', FR='Rygel', EN='Rygel', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=50, x=13061.429708054, y=819.54998168163, z=3499.1099217888}
,U47C6AF8C521CBDA2={DE='Null Aximander', FR='Null Aximander', EN='Null Aximander', scene={DE='Räuberklippe', FR='Falaise du Brigand', EN='Brigand\'s Bluff'}, lvl=44, x=8672.5398061536, y=983.14997802489, z=6457.9698556531}
,U47DFC5EC5568437B={DE='Alvric Kastion', FR='Alvric Kastion', EN='Alvric Kastion', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U47E0EEA1788EC6D7={DE='Casimir Kovitch', FR='Lasimir Kovitch', EN='Casimir Kovitch', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1552.7899652924, y=1072.6499760244, z=2634.9299411047}
,U47E6ACF968A12097={DE='Hauptmann Ledisko', FR='Capitaine Ledisko', EN='Captain Ledisko', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3157.8499294166, y=1095.0099755246, z=3867.4199135564}
,U47EEE9D70040576A={DE='Marschall Kain', FR='Maréchal Kain', EN='Marshal Kain', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=34, x=3719.8599168546, y=1197.4499732349, z=1908.1199573502}
,U4821459649A2139A={DE='Pizko', FR='Pizko', EN='Pizko', scene={DE='Tristmoor', FR='Marécage de la Désolation', EN='Forlorn Fen'}, lvl=52}
,U483A34A870FC8715={DE='Dame Sigga', FR='Dame Sigga', EN='Dame Sigga', scene={DE='Königliches Refugium', FR='Retraite du Roi', EN='King\'s Retreat'}, lvl=14, x=6271.9998598099, y=839.4199812375, z=4525.5598988459}
,U48457AE1548200C4={DE='Rittermarschall Tremaine', FR='Maréchal Tremaine', EN='Knight Marshal Tremaine', scene={DE='Denegars Stand', FR='Bastion de Denegar', EN='Denegar\'s Stand'}, lvl=19, x=7260.3598377183, y=876.01998041943, z=5426.8098787013}
,U4894E3A46834C06B={DE='Dame Amika Sembi', FR='Dame Amika Sembi', EN='Dame Amika Sembi', scene={DE='Tulan', FR='Tuliane', EN='Tulan'}, lvl=50, x=8248.9398156218, y=871.52998051979, z=11803.969736161}
,U49000B691355FAAC={DE='Haruka Anan', FR='Haruka Anan', EN='Haruka Anan', scene={DE='Wurmfluchspitze', FR='Aiguille de Plaie-de-wyrm', EN='Wyrmbane Spire'}, lvl=50, x=6100.1298636515, y=979.20997811295, z=7302.8698367681}
,U491CCE5231538A95={DE='Kapitän Deltai', FR='Capitaine Deltai', EN='Captain Deltai', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7636.7098293062, y=927.84997926094, z=6197.0198614858}
,U4935B1C32420881C={DE='Natalija Pavlica', FR='Natalija Pavlica', EN='Natalija Pavlica', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1582.829964621, y=1070.0199760832, z=2650.2299407627}
,U496393E70F549560={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Höhle des Kwell', FR='Antre de Kwell', EN='Den of Kwell'}, lvl=59}
,U496C763154D59C56={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Höhle des Kwell', FR='Antre de Kwell', EN='Den of Kwell'}, lvl=59}
,U49723365186B3B1B={DE='Kommandant Dulain', FR='Commandant Dulain', EN='Commander Dulain', scene={DE='Seidennetzpass', FR='Chemin de Toilensoie', EN='Silkweb Pass'}, lvl=26, x=5949.5998670161, y=926.26997929625, z=3818.6699146461}
,U49B2E7444A0F98AD={DE='Leutnant Samkal', FR='Lieutenant Samkal', EN='Lieutenant Samkal', lvl=50, x=7438.1098337453, y=904.39997978508, z=3053.4799317494}
,U49C8452D4ED29A8A={DE='Rayce Fero', FR='Rayce Fero', EN='Rayce Fero', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U49CD963C222472AC={DE='Skeptiker-Gefangener', FR='Prisonnier Renégat', EN='Defiant Prisoner', scene={DE='Das Endtal', FR='Dernière Vallée', EN='The Last Valley'}, lvl=26}
,U4A162136236B0F43={DE='Grusha Pavinova', FR='Grusha Pavinova', EN='Grusha Pavinova', scene={DE='Wundwaldgrat', FR='Crête des Bois Meurtris', EN='Scarwood Ridge'}, lvl=31, x=4038.9799097218, y=1079.2399758771, z=4076.909908874}
,U4A2049863484E029={DE='Schwan', FR='Swan', EN='Swan', lvl=50}
,U4A6802CD01E1D124={DE='Jensen Farnsworth', FR='Jensen Farnsworth', EN='Jensen Farnsworth', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U4A77DFAC4B4F6BCC={DE='Hauptmann Envris', FR='Capitaine Envris', EN='Captain Envris', lvl=50}
,U4A8ED6A37F7CED31={DE='Nomis der Jäger', FR='Nomis le chasseur', EN='Nomis the Hunter', scene={DE='Knochenberster-Canyon', FR='Canyon des Fracasseurs', EN='Shatterbone Canyon'}, lvl=35}
,U4AAC1CE610FC821F={DE='Schildwache Ramos', FR='Maître d\'armes Ramos', EN='Master-at-Arms Ramos', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=34, x=4528.6798987761, y=1236.0199723728, z=1703.2099619303}
,U4ACA6D9C63F04E35={DE='Optio Dohon', FR='Optio Dohon', EN='Optio Dohon', scene={DE='Lager Klüngel', FR='Camp de la Coterie', EN='Coterie Camp'}, lvl=22, x=5700.7798725776, y=1079.6799758673, z=5111.3498857524}
,U4ACC01015EA697CE={DE='Bastion Pembrook', FR='Bastion Pembrook', EN='Bastion Pembrook', scene={DE='Dreienquell', FR='Trois-Sources', EN='Three Springs'}, lvl=37, x=7276.1498373654, y=880.67998031527, z=2060.4999539442}
,U4AD85894031876CB={DE='Mister Opal', FR='Monsieur Opal', EN='Mister Opal', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7620.3798296712, y=915.32997954078, z=6386.7898572441}
,U4AE685C27B0D4065={DE='Wilton Upersan', FR='Wilton Upersan', EN='Wilton Upersan', lvl=50}
,U4AEF200B7739BAFD={DE='Dame Levitia Volya', FR='Dame Levitia Volya', EN='Dame Levitia Volya', scene={DE='Knochenberster-Canyon', FR='Canyon des Fracasseurs', EN='Shatterbone Canyon'}, lvl=35, x=3200.0699284729, y=999.66997765563, z=3504.2199216746}
,U4BB22BE9233C5AC8={DE='Narmo Bodditon', FR='Narmo Bodditon', EN='Narmo Bodditon', scene={DE='Steinmetzwache', FR='Guet du Tailleur de pierre', EN='Stonemason\'s Watch'}, lvl=39, x=6373.9598575309, y=909.1999796778, z=1859.8899584282}
,U4BB351704D8D6B1C={DE='Halucinacio', FR='Halucinacio', EN='Halucinacio', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=60, x=7452.4598334245, y=864.10998068564, z=2983.3299333174}
,U4BB351715EFB2E6D={DE='Imagi Song', FR='Imagi Song', EN='Imagi Song', scene={DE='Die Manufaktur', FR='La Manufacture', EN='The Manufactory'}, lvl=60, x=5962.8998667188, y=916.72997950949, z=5245.4998827539}
,U4BEABC384B390BFD={DE='Vollstrecker Khazik', FR='Exécuteur Khazik', EN='Executor Khazik', lvl=50}
,U07987BB165DD1DDF={DE='Nelford Hauf', FR='Nelford Heap', EN='Nelford Heap', scene={DE='Sonnrastschlucht', FR='Canyon de Solrepos', EN='Sunrest Canyon'}, lvl=28}
,U4BFD9E5B55E6D823={DE='Savin Rurik', FR='Savin Rurik', EN='Savin Rurik', scene={DE='Elendsgrube', FR='Puits-Brisé', EN='Blighted Pit'}, lvl=35, x=3044.4999319501, y=1018.3299772386, z=3184.9899288099}
,U4C1B79B754389723={DE='Urik Woelfrel', FR='Urik Woelfrel', EN='Urik Woelfrel', scene={DE='Denegars Stand', FR='Bastion de Denegar', EN='Denegar\'s Stand'}, lvl=18, x=7286.4298371356, y=877.49998038635, z=5421.189878827}
,U4C3FE55B7A626F1C={DE='Weghüter Brion', FR='Garde-voie Brion', EN='Waykeeper Brion', scene={DE='Knorzwaldposten', FR='Poste de Bois-noueux', EN='Gnarlwood Post'}, lvl=26, x=5392.7098794635, y=953.7599786818, z=2717.5899392571}
,U4C5A68CF3FA5E412={DE='Regina Penthe', FR='Regina Penthe', EN='Regina Penthe', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7483.8798327222, y=904.69997977838, z=3035.6199321486}
,U4C71D9155FAD0728={DE='Dame Levitia Volya', FR='Dame Levitia Volya', EN='Dame Levitia Volya', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U4C8DB0B601F721CA={DE='Gord Bruchstein', FR='Gord Craquepierre', EN='Gord Crackstone', scene={DE='Lothams Schlag', FR='Bosquet de Lotham', EN='Lotham\'s Strike'}, lvl=35}
,U4CC3038C7FD1A4FA={DE='Melita Thanos', FR='Melita Thanos', EN='Melita Thanos', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=10, x=6608.4098522905, y=828.09998149052, z=4545.4598984011}
,U4D129B18398F8FC9={DE='Miaulin', FR='Meowlin', EN='Meowlin', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=50}
,U4D1C352A5A8F6980={DE='Bewahrer Sentoran', FR='Protecteur Sentoran', EN='Warden Sentoran', scene={DE='Arche der Auserwählten', FR='Arche des Élus', EN='Ark of the Ascended'}, lvl=12, x=6216.9098610412, y=820.6699816566, z=4379.6499021072}
,U4D50D4DB0EDACDDE={DE='Jinanne Tonux', FR='Jinanne Tonux', EN='Jinanne Tonux', scene={DE='Grollnarben-Damm', FR='Rive de Malentaille', EN='Spitescar Bank'}, lvl=35, x=8247.4697265625, y=898.5, z=6623.009765625}
,U4D583EA439DDD704={DE='Joseph', FR='Joseph', EN='Joseph', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=52}
,U4D98D79461F238D0={DE='Niko Popolin', FR='Niko Popolin', EN='Niko Popolin', scene={DE='Bruchebene', FR='Plaine Accidentée', EN='Fractured Plain'}, lvl=52}
,U4D9FE4611CDAACB7={DE='General Stanig', FR='Général Stanig', EN='General Stanig', scene={DE='Molinar-Kreuzweg', FR='Passage de Molinar', EN='Molinar Crossing'}, lvl=40}
,U4DD6B8B3408EC034={DE='Remun Smorkov', FR='Remun Smorkov', EN='Remun Smorkov', lvl=15, x=7353.0398356467, y=871.71998051554, z=3067.8499314282}
,U4DE6FF993CD1C754={DE='Morys Leighton', FR='Morys Leighton', EN='Morys Leighton', scene={DE='Der Rillteich', FR='La Mare du Ruisselet', EN='The Rill Pond'}, lvl=12}
,U4DECF9436884AD14={DE='Malik Hamal', FR='Malik Hamal', EN='Malik Hamal', scene={DE='Glimmlicht', FR='Faible lueur', EN='Glimmering Light'}, lvl=46}
,U4E0D52D664228852={DE='Al\'Balzuul', FR='Al\'Balzuul', EN='Al\'Balzuul', scene={DE='Trappers Rast', FR='Refuge du Trappeur', EN='Trapper\'s Rest'}, lvl=40}
,U4E1694B254569F84={DE='Olinda Markera', FR='Olinda Markera', EN='Olinda Markera', scene={DE='Bastion Zarnost', FR='Fort Zarnost', EN='Fort Zarnost'}, lvl=52}
,U4E53DEA24F4B92FA={DE='Markus Laufwind', FR='Markus Walkerwind', EN='Markus Walkerwind', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6038.7798650227, y=817.37998173013, z=3020.5899324846}
,U4E8EF4AE079851CB={DE='Scotty Malm', FR='Scotty Malm', EN='Scotty Malm', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=40}
,U4EA19A9B57463BF8={DE='Borrin Gammult', FR='Borrin Gammult', EN='Borrin Gammult', scene={DE='Bastion Zarnost', FR='Fort Zarnost', EN='Fort Zarnost'}, lvl=52}
,U4ED3802D6C777613={DE='Jhon Thoss', FR='Jhon Thoss', EN='Jhon Thoss', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6582.7698528636, y=826.00998153724, z=4607.5398970135}
,U4EE91050080EE30D={DE='Snerkle', FR='Snerkle', EN='Snerkle', scene={DE='Obsidian-Küste', FR='Rivage d\'Obsidienne', EN='Obsidian Shore'}, lvl=52}
,U4F19B3AE2B9660F2={DE='Sereborn', FR='Sereborn', EN='Sereborn', scene={DE='Tal der Knochen', FR='Vallée de la Mort', EN='Valley of Bones'}, lvl=54}
,U07EFB7A4403F049D={DE='Kyrathi Burul', FR='Kyrathi Burul', EN='Kyrathi Burul', scene={DE='Räuberklippe', FR='Falaise du Brigand', EN='Brigand\'s Bluff'}, lvl=44, x=8669.3398062252, y=983.099978026, z=6461.9498555642}
,U07F274E42D0A021E={DE='Der Aufseher', FR='Superviseur', EN='The Overseer', scene={DE='Sturmfestung', FR='Bastion-Tempête', EN='Stormhold'}, lvl=58}
,U4FBE79A5081E60EF={DE='Gharro Rezuli', FR='Gharro Rezuli', EN='Gharro Rezuli', scene={DE='Wolfsbann', FR='Aconit', EN='Wolfsbane'}, lvl=50}
,U4FC8DDF7690EC38C={DE='Vladinov Dima', FR='Vladinov Dima', EN='Vladinov Dima', scene={DE='Scharfklingenmühle', FR='Moulin de Vivelame', EN='Keenblade Mill'}, lvl=32, x=3760.7599159405, y=1094.9699755255, z=4093.2599085085}
,U4FCCFB2407208FE1={DE='Yareniv', FR='Yareniv', EN='Yareniv', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U4FEAC8852B734DC3={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', scene={DE='Zackenrand', FR='Frontière déchiquetée', EN='Jagged Fringe'}, lvl=39}
,U5002EB095C5ED8C9={DE='Icatian', FR='Icatian', EN='Icatian', lvl=50}
,U500C64BD77566243={DE='Merethis Faen', FR='Merethis Faen', EN='Merethis Faen', scene={DE='Faens Zuflucht', FR='Retraite de Faen', EN='Faen\'s Retreat'}, lvl=50}
,U501547FD720B84FB={DE='Weghüter Freyn', FR='Garde-voie Freyn', EN='Waykeeper Freyn', scene={DE='Dolchgrat', FR='Fil de la dague', EN='Dagger\'s Edge'}, lvl=36}
,U501D431647F9ADB3={DE='Kardinal Wiesweide', FR='Cardinal Sauleclairière', EN='Cardinal Gladewillow', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=52, x=7401.9098345544, y=863.5299806986, z=2991.5299331341}
,U5035B0A46C602B71={DE='Kadettin Imusk', FR='Cadet Imusk', EN='Cadet Imusk', lvl=50}
,U505A5EBA34C2555D={DE='Sereborn', FR='Sereborn', EN='Sereborn', scene={DE='Die Höhle', FR='Enclave', EN='The Hollow'}, lvl=54}
,U5066AB1031095C47={DE='Hüter Nort', FR='Phalange Nort', EN='Keeper Nort', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52}
,U50740AB408ED4F82={DE='Kelly', FR='Kelly', EN='Kelly', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6089.7198638842, y=817.1399817355, z=3261.2799271047}
,U508BF84E4987F7C8={DE='Botin der Vigilie', FR='Messagère des Veilleurs', EN='Messenger of the Vigil', scene={DE='Abgründige Kluft', FR='Précipice abyssal', EN='Abyssal Precipice'}, lvl=50}
,U080ECDB714C13929={DE='Zenturio Ilyara', FR='Centurion Ilyara', EN='Centurion Ilyara', scene={DE='Dolchgrat', FR='Fil de la dague', EN='Dagger\'s Edge'}, lvl=37}
,U50AE67D2278B6A32={DE='Asha Catari', FR='Asha Catari', EN='Asha Catari', lvl=52}
,U50F78C870E371995={DE='Magnus Grey', FR='Magnus Grey', EN='Magnus Grey', scene={DE='Sonnrastbrücke', FR='Pont du Couchant', EN='Sunrest Bridge'}, lvl=36, x=4423.4299011286, y=1094.859975528, z=4928.4998898394}
,U512814DF24D84EB6={DE='Atrophinius', FR='Atrophinius', EN='Atrophinius', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U515CCD984AE08E30={DE='Geistführer', FR='Guide spirituel', EN='Spirit Guide', scene={DE='Arborierhain', FR='Bosquet des Sylvaniens', EN='Treants\' Grove'}, lvl=16, x=6779.3298484702, y=838.88998124935, z=3152.1199295446}
,U51762C5B09403011={DE='Rovena Karn', FR='Rovena Karn', EN='Rovena Karn', scene={DE='Tapferkeitsfeste', FR='Bastion des Braves', EN='Valor Hold'}, lvl=5}
,U517DD1A37DBE2AD2={DE='Korra Flynn', FR='Korra Flynn', EN='Korra Flynn', scene={DE='Skeptikerschneise', FR='Approche des Renégats', EN='Defiant\'s Approach'}, lvl=12, x=6241.2498604972, y=891.339980077, z=5243.9798827879}
,U518A0DED44A3C46C={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Höhle des Kwell', FR='Antre de Kwell', EN='Den of Kwell'}, lvl=59}
,U51C82C17613FD126={DE='Nekromant Zahalred', FR='Nécromancien Zahalred', EN='Necromancer Zahalred', scene={DE='Lothams Schlag', FR='Bosquet de Lotham', EN='Lotham\'s Strike'}, lvl=35, x=3812.2599147893, y=1096.5799754895, z=4511.0898991693}
,U520562FA1B118825={DE='Lenna Grüntal', FR='Lenna Valvert', EN='Lenna Greenvale', scene={DE='Ritterhöhe', FR='Avancée du Croisé', EN='Crusader\'s Advance'}, lvl=50}
,U521F33A2791EEBAB={DE='Aya‘lieköhr', FR='Lehd Poul', EN='Eg\'nahwg', scene={DE='Ghar-Station Rosh', FR='Station ghar Rosh', EN='Ghar Station Rosh'}, lvl=63}
,U5237661D660D76D1={DE='Iantha Kharast', FR='Iantha Kharast', EN='Iantha Kharast', scene={DE='Talos-Landung', FR='Appontement de Talos', EN='Talos Landing'}, lvl=52, x=12389.389723076, y=832.02998140268, z=3075.6199312545}
,U52536E6B23802BB7={DE='Sylver Valis', FR='Sylver Valis', EN='Sylver Valis', scene={DE='Talos-Landung', FR='Appontement de Talos', EN='Talos Landing'}, lvl=52, x=12368.369723545, y=833.44998137094, z=3089.5499309432}
,U525E7E3B7FE09361={DE='Äbtissin Katia', FR='Abbesse Katia', EN='Abbess Katia', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7471.5298329983, y=887.17998016998, z=3005.3499328252}
,U5269F40B1F4725A9={DE='Drusk Nachtklaue', FR='Drusk Griffenuit', EN='Drusk Nightclaw', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26, x=5176.3798842989, y=951.00997874327, z=3102.6699306499}
,U527CE06E35609204={DE='Kostiker', FR='Kostiker', EN='Kostiker', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=47, x=6873.2598463707, y=885.75998020172, z=6934.2798450068}
,U5291EA3521C2A17E={DE='Antiquar Boofs', FR='Antiquaire Boofs', EN='Antiquarian Boofs', lvl=50}
,U5291EA386C4FD1A2={DE='Äbtissin Katia', FR='Abbesse Katia', EN='Abbess Katia', lvl=50}
,U5291EA397CA594B3={DE='Eldain Diomid', FR='Eldain Diomid', EN='Eldain Diomid', lvl=50}
,U5291EA3A0D925F80={DE='Kriegsherr Albrect', FR='Maître de guerre Albrect', EN='Warlord Albrect', lvl=50}
,U529BC34458C0B9BB={DE='Raelin', FR='Raelin', EN='Raelin', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=50}
,U5325629A1A61C04D={DE='Gunji', FR='Gunji', EN='Gunji', scene={DE='Sandachsengrube', FR='Fosse de Sable-essieu', EN='Sandaxle Pit'}, lvl=43, x=7039.71984265, y=883.78998024575, z=6765.5698487777}
,U53329AB06F945DAA={DE='Raj Tahleed', FR='Raj Tahleed', EN='Raj Tahleed', scene={DE='Sturmposten', FR='Poste de la Tempête', EN='Tempest Station'}, lvl=6, x=656.28998533078, y=29.549999339506, z=871.44998052157}
,U533D3EA8646848EC={DE='Hauptmann Zamora', FR='Capitaine Zamora', EN='Captain Zamora', scene={DE='Knochenberster-Bastion', FR='Trou des Fracasseurs', EN='Shatterbone Hold'}, lvl=35, x=3218.6499280576, y=1093.9799755476, z=3366.9599247426}
,U5342FB094F3D5B77={DE='Beatrice Wenhain', FR='Beatrice Wengrove', EN='Beatrice Wengrove', scene={DE='Ritterhöhe', FR='Avancée du Croisé', EN='Crusader\'s Advance'}, lvl=50}
,U5342FD4223C4557A={DE='Petrov Weißmähne', FR='Petrov Blancrin', EN='Petrov Whitemane', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=40}
,U535C25B576DAC6D7={DE='Sulyn Palsmi', FR='Sulyn Palsmi', EN='Sulyn Palsmi', scene={DE='Lebensfabrik', FR='Usine de la Vie', EN='Life Factory'}, lvl=5}
,U53614641119EDEA5={DE='Bulina Falswin', FR='Bulina Falswin', EN='Bulina Falswin', scene={DE='Lebensfabrik', FR='Usine de la Vie', EN='Life Factory'}, lvl=5}
,U537645C326771F2C={DE='Talvar Methyn', FR='Talvar Methyn', EN='Talvar Methyn', scene={DE='Dreienquell', FR='Trois-Sources', EN='Three Springs'}, lvl=37, x=7208.2898388822, y=879.49998034164, z=2127.3599524498}
,U5384D9673C3D2FEE={DE='Jiran Terus', FR='Jiran Terus', EN='Jiran Terus', scene={DE='Tempel von Marakris', FR='Temple de Marakris', EN='Temple of Marakris'}, lvl=52}
,U539A360B40C9DD34={DE='Hüter Dorn', FR='Phalange Dorn', EN='Keeper Dorn', scene={DE='Güldenes Gestade', FR='Grève d\'Or', EN='Gilded Strand'}, lvl=52}
,U53AA54582B53E4F4={DE='Turaj Ebenensucher', FR='Turaj Fouilleur-de-plan', EN='Turaj Planeseeker', scene={DE='Königliches Refugium', FR='Retraite du Roi', EN='King\'s Retreat'}, lvl=8, x=6270.1198598519, y=839.51998123527, z=4540.0898985211}
,U53E9376532C4D3D7={DE='Sentinel Toggart', FR='Sentinel Toggart', EN='Sentinel Toggart', scene={DE='Wolkenhöhlen', FR='Cavernes Nuageuses', EN='Cloudbourne Caverns'}, lvl=47}
,U53EC980871B3B4E6={DE='Helena Messing', FR='Helena Brass', EN='Helena Brass', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7684.4298282396, y=915.17997954413, z=6302.2098591346}
,U540A9BFA5F083A13={DE='Elimina Werilia', FR='Elimina Werilia', EN='Elimina Werilia', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50}
,U545CCB7372FB2CF4={DE='Soldatin Elora', FR='Soldat Elora', EN='Private Elora', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=18, x=5986.3098661955, y=812.21998184547, z=2957.7199338898}
,U087063A07D697987={DE='Blair Rheese', FR='Blair Rheese', EN='Blair Rheese', scene={DE='Silberne Landung', FR='Débarcadère d\'Argent', EN='Silver Landing'}, lvl=13, x=6967.019844275, y=842.31998117268, z=3302.3999261856}
,U54A1D51363F68954={DE='Isilwyn Alrai', FR='Isilwyn Alrai', EN='Isilwyn Alrai', scene={DE='Silberne Landung', FR='Débarcadère d\'Argent', EN='Silver Landing'}, lvl=13, x=6969.5198442191, y=842.31998117268, z=3299.3799262531}
,U54ACB4AA4496AA01={DE='Väterchen Frost', FR='Patriarche de l\'hiver', EN='Greatfather Frost', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U54E5A68E55998FD0={DE='Devira Annington', FR='Devira Annington', EN='Devira Annington', lvl=15}
,U54FDFA6029153F37={DE='Mutter-Nug', FR='Mère nug', EN='Mother Nug', scene={DE='Schwarze Gestade', FR='Grève Noire', EN='Black Strand'}, lvl=58}
,U5517E35F5DCEB5A0={DE='Sir Martyn Myrsol', FR='Sire Martyn Myrsol', EN='Sir Martyn Myrsol', scene={DE='Königsbresche', FR='Chambre de la Brèche', EN='Breach Chamber'}, lvl=35}
,U551AFF263D7BD2A7={DE='Sylver Valis', FR='Sylver Valis', EN='Sylver Valis', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=52, x=5934.1498673614, y=911.69997962192, z=5295.2098816428}
,U0883E0DD62A032CA={DE='Soldat Musser', FR='Soldat Musser', EN='Private Musser', scene={DE='Narbenhaut-Ödnis', FR='Désert de Peau-balafrée', EN='Scarhide Waste'}, lvl=31, x=3297.3999262974, y=1095.4599755146, z=3829.1499144118}
,U5568079A32CAB277={DE='Mann ohne Gesicht', FR='Homme sans visage', EN='Faceless Man', scene={DE='Sturmposten', FR='Poste de la Tempête', EN='Tempest Station'}, lvl=6, x=634.11998582631, y=29.549999339506, z=864.59998067468}
,U55A051AC332C78CD={DE='Sedrick Finely', FR='Sedrick Lefin', EN='Sedrick Finely', scene={DE='Felsgrat', FR='Crêteroc', EN='Rock Ridge'}, lvl=27, x=4531.3898987155, y=918.38997947238, z=3479.8799222186}
,U55B8D6E103589B77={DE='Tobias Leighton', FR='Tobias Leighton', EN='Tobias Leighton', scene={DE='Eisengrab', FR='Tombe de Fer', EN='Iron Tomb'}, lvl=19}
,U55CC2F3404FE1AE1={DE='Gebieterin Aschohr', FR='Maîtresse Ashear', EN='Mistress Ashear', scene={DE='Sturmposten', FR='Poste de la Tempête', EN='Tempest Station'}, lvl=5, x=632.5099858623, y=29.549999339506, z=859.24998079427}
,U55CF06324434EB20={DE='Sir Isaak Kazimir', FR='Sire Isaak Kazimir', EN='Sir Isaak Kazimir', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U562AFA0E027365AD={DE='Davian Krähe', FR='Davian Crow', EN='Davian Crow', scene={DE='Eisengrab', FR='Tombe de Fer', EN='Iron Tomb'}, lvl=19}
,U56550FDA3B173C76={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Höhle des Kwell', FR='Antre de Kwell', EN='Den of Kwell'}, lvl=59}
,U5665112E4E8F9F6F={DE='Darryl', FR='Darryl', EN='Darryl', lvl=50}
,U5673026611262233={DE='Fiona Lechtum', FR='Fiona Lechtum', EN='Fiona Lechtum', scene={DE='Quecksilber-Akademie', FR='Académie de Vif-Argent', EN='Quicksilver College'}, lvl=10, x=5962.0798667371, y=812.1199818477, z=3060.1899315994}
,U567CC6B01EAE08AF={DE='Bruder Jebiah', FR='Frère Jebiah', EN='Brother Jebiah', scene={DE='Dreienquell', FR='Trois-Sources', EN='Three Springs'}, lvl=37, x=7278.7698373068, y=880.67998031527, z=2050.1899541747}
,U5682455A54A38C5D={DE='Fara Düstersang', FR='Fara Diresong', EN='Fara Diresong', scene={DE='Lothams Schlag', FR='Bosquet de Lotham', EN='Lotham\'s Strike'}, lvl=35}
,U56857BCB249C4ACC={DE='Königin Miela', FR='Reine Miela', EN='Queen Miela', lvl=50, x=6456.0298556965, y=840.91998120397, z=4058.6699092817}
,U56EE87AF0551FDDD={DE='Leutnant Samkal', FR='Lieutenant Samkal', EN='Lieutenant Samkal', lvl=50}
,U56F37B0936599FAF={DE='Gideon der Fromme', FR='Gideon le Pieux', EN='Gideon the Pious', scene={DE='Dreienquell', FR='Trois-Sources', EN='Three Springs'}, lvl=37, x=7275.2798373848, y=880.67998031527, z=2049.0799541995}
,U56F70D731D676A5D={DE='Fransisca Athermoor', FR='Fransisca Athermoor', EN='Fransisca Athermoor', lvl=50}
,U5705260F2E21CFD4={DE='Oria Portrari', FR='Oria Portrari', EN='Oria Portrari', scene={DE='Sturmfestung', FR='Bastion-Tempête', EN='Stormhold'}, lvl=58}
,U570C41434E929A94={DE='Argroo', FR='Argroo', EN='Argroo', scene={DE='Spaltrachenweiher', FR='Mares de la Gueule-fendue', EN='Splitmouth Ponds'}, lvl=43, x=8575.9398083128, y=932.78997915052, z=7173.3798396625}
,U570CB8EE1B1200DC={DE='Legionärin Amiruth', FR='Légionnaire Amiruth', EN='Legionnaire Amiruth', lvl=50}
,U5722059B6B0136C5={DE='Suren Kokedai', FR='Suren Kokedai', EN='Suren Kokedai', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=47, x=6647.7298514117, y=885.17998021469, z=7057.0098422635}
,U573E41B904CAD9F8={DE='Mack Gievor', FR='Mack Gievor', EN='Mack Gievor', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=20}
,U08BAB1667C094302={DE='Jane Pierce', FR='Jane Pierce', EN='Jane Pierce', scene={DE='Prüfung der Schildwache', FR='Épreuve de la Sentinelle', EN='Trial of the Sentinel'}, lvl=50}
,U575AEB6C21E6E60E={DE='Emily Fergal', FR='Emily Fergal', EN='Emily Fergal', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25}
,U5776431212412E08={DE='Merelda Arcallis', FR='Merelda Arcallis', EN='Merelda Arcallis', scene={DE='Donnerwerkjoch', FR='Crête de Foudrœuvre', EN='Thunderwork Ridge'}, lvl=28, x=4336.5699030701, y=953.67997868359, z=3926.6999122314}
,U57A2BAB723550C52={DE='Nicolai Vanya', FR='Nicolai Vanya', EN='Nicolai Vanya', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3691.5299174879, y=1097.6799754649, z=4431.2499009538}
,U08C7AAA8666C1303={DE='Kern Chovalis', FR='Kern Chovalis', EN='Kern Chovalis', scene={DE='Frostfälle', FR='Chutes de givre', EN='Frost Falls'}, lvl=30, x=4254.4599049054, y=1233.7499724235, z=1850.3499586415}
,U57DE89A43200D146={DE='Sayid Ahzab', FR='Sayid Ahzab', EN='Sayid Ahzab', scene={DE='Verborgene Bastion', FR='Bastion caché', EN='Veiled Bastion'}, lvl=46}
,U57F36CE04DF093AC={DE='Nomis der Jäger', FR='Nomis le chasseur', EN='Nomis the Hunter', scene={DE='Knochenberster-Canyon', FR='Canyon des Fracasseurs', EN='Shatterbone Canyon'}, lvl=35}
,U57FE2F7E47A10150={DE='Hamid Altieri', FR='Hamid Altieri', EN='Hamid Altieri', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7695.2598279975, y=933.60997913219, z=6170.5098620784}
,U58172386053A6C8C={DE='Bruder Hyperion', FR='Frère Hyperion', EN='Brother Hyperion', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U08CFF4DB052C92D8={DE='Kovoro Zarlith', FR='Kovoro Zarlith', EN='Kovoro Zarlith', scene={DE='Verwitterte Klippen', FR='Falaises Patinées', EN='Timeworn Cliffs'}, lvl=15, x=7581.2398305461, y=890.51998009533, z=1808.1999595836}
,U5846C8575409ABB5={DE='Botin der Wächter', FR='Messager des Gardiens', EN='Guardian Messenger', lvl=60}
,U08D46D8250CAAC10={DE='Adriana Weber', FR='Adriana Tisserand', EN='Adriana Weaver', scene={DE='Caer Kholum', FR='Caer Kholum', EN='Caer Kholum'}, lvl=50}
,U584F1A337CF3A469={DE='Feras Thorne', FR='Feras Thorne', EN='Feras Thorne', scene={DE='Getreuenhöhe', FR='Buttefidèle', EN='Stalwart Rise'}, lvl=38}
,U5863277769363C35={DE='Cheque Gui', FR='Cheque Gui', EN='Cheque Gui', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=50, x=7581.0598305501, y=866.27998063713, z=3077.6399312094}
,U586327787A6CE73A={DE='Bingleigh Risor', FR='Bingleigh Risor', EN='Bingleigh Risor', scene={DE='Übungshof', FR='La Cour d\'Entraînement', EN='The Training Yard'}, lvl=50, x=6165.7498621847, y=906.53997973725, z=5292.7898816969}
,U586327790B5AAA0B={DE='Traz Gajni', FR='Traz Gajni', EN='Traz Gajni', scene={DE='Die Kanäle', FR='Les Canaux', EN='The Canals'}, lvl=60, x=12756.95971486, y=855.1099808868, z=11565.959741481}
,U5863277A1BB36D18={DE='Koris Ekscita', FR='Koris Ekscita', EN='Koris Ekscita', scene={DE='Atragarianische Quelle', FR='Puits Atragarian', EN='Atragarian Well'}, lvl=60}
,U5863277B24E91069={DE='Stofie', FR='Stofie', EN='Stofie', scene={DE='Atragarianische Quelle', FR='Puits Atragarian', EN='Atragarian Well'}, lvl=65}
,U587AD85D16597EE2={DE='Jahar Runenschwur', FR='Jahar Runeserment', EN='Jahar Runesworn', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U5885C43B250CB623={DE='Sir Andrin Kahn', FR='Sir Andrin Kahn', EN='Sir Andrin Kahn', scene={DE='Blutige Küsten', FR='Rivages Sanguins', EN='Sanguine Shores'}, lvl=10, x=6210.2798611894, y=831.42998141609, z=3852.0699138995}
,U58B5584F2A3A672B={DE='Leutnant Vorther', FR='Lieutenant Vorther', EN='Lieutenant Vorther', scene={DE='Cestuslager', FR='Camp Cestus', EN='Camp Cestus'}, lvl=35, x=3321.8699257504, y=1087.4599756934, z=3562.3899203744}
,U58B792CF1C9CC4A6={DE='Eukar Heln', FR='Eukar Heln', EN='Eukar Heln', scene={DE='Heckenhof', FR='Palais des Haies', EN='Hedgerow Court'}, lvl=14, x=6643.6098515037, y=836.47998130322, z=2519.0599436946}
,U58C175685F009DBE={DE='Johry Vennade', FR='Johry Vennade', EN='Johry Vennade', scene={DE='Tulan', FR='Tuliane', EN='Tulan'}, lvl=52, x=8292.8798146397, y=858.59998080879, z=12046.859730732}
,U58C175696879408F={DE='Lou Vennade', FR='Lou Vennade', EN='Lou Vennade', scene={DE='Tuldio-Zuflucht', FR='Retraite de Tuldio', EN='Tuldio Retreat'}, lvl=60}
,U5908310D4432644A={DE='Tarik', FR='Tarik', EN='Tarik', scene={DE='Sandachsengrube', FR='Fosse de Sable-essieu', EN='Sandaxle Pit'}, lvl=43, x=7036.4198427238, y=883.78998024575, z=6778.1598484963}
,U5935E4294B3A6C16={DE='Dochin Bayardash', FR='Dochin Bayardash', EN='Dochin Bayardash', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=50, x=6012.8998656012, y=920.91997941583, z=5152.9398848228}
,U594E1385238CF017={DE='Thilanas', FR='Thilanas', EN='Thilanas', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U08F29580103E45BA={DE='Ingrid Orlana', FR='Ingrid Orlana', EN='Ingrid Orlana', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6076.3198641837, y=817.45998172835, z=3005.8199328147}
,U598133FF370CE092={DE='Anthousa Mona', FR='Anthousa Mona', EN='Anthousa Mona', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U598F245D33D15AFC={DE='Leutnant Rutger', FR='Lieutenant Rutger', EN='Lieutenant Rutger', scene={DE='Kahlschlägerlager', FR='Emprise du Récupérateur', EN='Reclaimer\'s Hold'}, lvl=40, x=6293.3498593327, y=910.52997964807, z=1603.6999641545}
,U599299E3253FC61D={DE='Jehn Andonicks', FR='Jehn Andonicks', EN='Jehn Andonicks', scene={DE='Bruchtal', FR='Vallon Brisé', EN='Broken Vale'}, lvl=50, x=2317.3399482034, y=1155.1799741797, z=3012.4799326658}
,U5999EB04361316E1={DE='Sergeant Horran', FR='Sergent Horran', EN='Sergeant Horran', lvl=50, x=7435.8098337967, y=904.39997978508, z=3048.4699318614}
,U599D6F553913F733={DE='Miriam Glen', FR='Miriam Vallon', EN='Miriam Glen', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U59BB75E952912B8B={DE='Hüter Grenius', FR='Phalange Grenius', EN='Keeper Grenius', scene={DE='Höllenfelder', FR='Vallée de Larmes', EN='Fell Fields'}, lvl=52}
,U59CFC82506E75ACD={DE='Tigram Leisetritt', FR='Tigram Pas-feutrés', EN='Tigram Stillstep', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=4866.9998912141, y=1058.8299763333, z=4952.7298892979}
,U59D62A616D4A4C50={DE='Uriel Chuluun', FR='Uriel Chuluun', EN='Uriel Chuluun', scene={DE='Ekelkaskade', FR='Cascade infecte', EN='Foul Cascade'}, lvl=50}
,U59E337FC7E44E8DB={DE='Michael Verdson', FR='Michael Verdson', EN='Quartermaster Verdson', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=4978.7198887169, y=1056.2599763907, z=4944.5898894798}
,U59FF8DD547CE15A8={DE='Niles', FR='Niles', EN='Niles', scene={DE='Die Kanäle', FR='Les Canaux', EN='The Canals'}, lvl=60, x=12618.519717954, y=858.95998080075, z=11520.579742495}
,U09055C1B28FED451={DE='Atasha Kirren', FR='Atasha Kirren', EN='Atasha Kirren', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=35, x=7632.3898294028, y=915.32997954078, z=6396.5598570257}
,U5A37B33359DC7A4E={DE='Cofi Serranos', FR='Cofi Serranos', EN='Cofi Serranos', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=30, x=4599.729897188, y=1236.0799723715, z=1662.4399628416}
,U5A4E571740C36E43={DE='Garu Ahmin', FR='Garu Ahmin', EN='Garu Ahmin', scene={DE='Ruston', FR='Ruston', EN='Ruston'}, lvl=50}
,U5A6C5DBA7EF40EFB={DE='Clinton der Brauer', FR='Bill le brasseur', EN='Clinton the Brewer', lvl=50}
,U5A7DD26411C9AA2D={DE='Ariston Dion', FR='Ariston Dion', EN='Ariston Dion', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50, x=6150.2698625308, y=919.66997944377, z=5184.1998841241}
,U5A8EF7FC7102B7AF={DE='Nalise Delrodi', FR='Nalise Delrodi', EN='Nalise Delrodi', scene={DE='Denegars Stand', FR='Bastion de Denegar', EN='Denegar\'s Stand'}, lvl=18, x=7222.8198385574, y=876.73998040333, z=5439.3798784204}
,U5A91BF037CB20149={DE='Bruder Damon', FR='Frère Damon', EN='Brother Damon', scene={DE='Steinmetzwache', FR='Guet du Tailleur de pierre', EN='Stonemason\'s Watch'}, lvl=39, x=6384.4998572953, y=908.81997968629, z=1873.7799581178}
,U5AA248395EE1ADE7={DE='Dame Levitia Volya', FR='Dame Levitia Volya', EN='Dame Levitia Volya', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3134.8599299304, y=1095.0899755228, z=3869.4099135119}
,U5AACB7C9707AABEC={DE='Emaru Chay', FR='Emaru Chay', EN='Emaru Chay', scene={DE='Übungshof', FR='La Cour d\'Entraînement', EN='The Training Yard'}, lvl=50}
,U5AF759E93DA2D559={DE='Tam Dolchborn', FR='Tam Portedague', EN='Tam Daggerborne', scene={DE='Zaubererkessel', FR='Caldera du Charmeur', EN='Charmer\'s Caldera'}, lvl=52}
,U5AF9D8E7413E4A75={DE='Geist des Carwin', FR='Esprit de Carwin', EN='Spirit of Carwin', scene={DE='Göttlicher Anlegeplatz', FR='Débarcadère Divin', EN='Divine Landing'}, lvl=52, x=6244.9298604149, y=835.07998133451, z=3876.0799133629}
,U5B15628B7FF72C84={DE='Frau Lawler', FR='Madame Lawler', EN='Madam Lawler', lvl=50}
,U5B31447119029D11={DE='Adriana Weber', FR='Adriana Tisserand', EN='Adriana Weaver', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1623.9199637026, y=1073.7599759996, z=2615.5299415383}
,U5B32F98C02D8EB6F={DE='Anthousa Mona', FR='Anthousa Mona', EN='Anthousa Mona', scene={DE='Atia', FR='Atia', EN='Atia'}, lvl=52, x=13434.449699717, y=854.49998090044, z=4139.229907481}
,U0921DFBF0C2721C7={DE='Der ehrliche Jon', FR='Jon le Loyal', EN='Honest Jon', lvl=50}
,U5B7FE13F2F4B3E3F={DE='Freistatt-Wache', FR='Garde du sanctuaire', EN='Sanctuary Warden', scene={DE='Geheiligter Hügel', FR='Colline Sacrée', EN='Hallowed Hill'}, lvl=52, x=1123.4999748878, y=905.05997977033, z=1388.349968968}
,U5B8019D92CB7EA8B={DE='Sir Reginald Gaunt', FR='Reginald Gaunt', EN='Sir Reginald Gaunt', scene={DE='Felsgrat', FR='Crêteroc', EN='Rock Ridge'}, lvl=30, x=4274.029904468, y=955.52997864224, z=3463.0199225955}
,U5BAEE8094F9A8644={DE='Greilyn Sevillien', FR='Greilyn Sevillien', EN='Greilyn Sevillien', scene={DE='Denegars Stand', FR='Bastion de Denegar', EN='Denegar\'s Stand'}, lvl=18, x=7257.9898377713, y=876.0299804192, z=5418.4898788873}
,U5BB010B654E9225B={DE='Lotham Dunkelmond', FR='Lotham Sombrelune', EN='Lotham Darkmoon', scene={DE='Verseuchtes Feld', FR='Prairie infestée', EN='Infested Range'}, lvl=35}
,U5BB08D3A47EAD2FC={DE='Minkabe Ziyad', FR='Minkabe Ziyad', EN='Minkabe Ziyad', scene={DE='Khaliti-Zeile', FR='Passage des Khalitis', EN='Khaliti Row'}, lvl=46, x=6329.8098585177, y=888.20998014696, z=6915.7598454207}
,U5BFB2B3E5D785557={DE='Raj Tahleed', FR='Raj Tahleed', EN='Raj Tahleed', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50}
,U5BFB36DB5542D73B={DE='Katzenhirte Emby', FR='Emby le Dresseur de chats', EN='Emby the Cat Herder', scene={DE='Margle-Palast', FR='Palais Margle', EN='Margle Palace'}, lvl=65, x=5782.5098707508, y=534.81998804584, z=5614.639874503}
,U5C4607D709C40BAE={DE='Sonrisa Pavlis', FR='Sonrisa Pavlis', EN='Sonrisa Pavlis', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52, x=6139.3198627755, y=920.83997941762, z=5174.7298843358}
,U5C5D8A5C56232C89={DE='Kell Vassar', FR='Kell Vassar', EN='Kell Vassar', scene={DE='Übungshof', FR='La Cour d\'Entraînement', EN='The Training Yard'}, lvl=20, x=6162.5698622558, y=918.89997946098, z=5216.059883412}
,U5C68B015087D0901={DE='Sergeant Deucer', FR='Sergent Deucer', EN='Sergeant Deucer', lvl=50, x=7400.0798345953, y=863.5299806986, z=2961.4999338053}
,U093EB8234469DB4F={DE='Geistführer', FR='Guide spirituel', EN='Spirit Guide', scene={DE='Kap der Einsamkeit', FR='Point Solitude', EN='Point Solitude'}, lvl=16, x=7179.3398395292, y=885.35998021066, z=2944.7299341802}
,U5CB0DA9635CC4CBE={DE='Attis Resta', FR='Attis Resta', EN='Attis Resta', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=18, x=6634.249851713, y=829.74998145364, z=4545.1398984082}
,U5CEA0A5D48F6DAB1={DE='Mann ohne Gesicht', FR='Homme sans visage', EN='Faceless Man', scene={DE='Feenring-Forst', FR='Bois de Cerclefée', EN='Faering Woods'}, lvl=51}
,U5D1457275EE87920={DE='Orphiel Fernwind', FR='Orphiel Vent-lointain', EN='Orphiel Farwind', lvl=52, x=1630.5699635539, y=1077.589975914, z=2719.0299392249}
,U5D26BD0E2214A922={DE='Optio Kerrick', FR='Optio Kerrick', EN='Optio Kerrick', scene={DE='Narbenmoor', FR='Bourbier Balafré', EN='Scarred Mire'}, lvl=14}
,U5D71475663A97D11={DE='Wrangler Dein', FR='Wrangler Dein', EN='Wrangler Dein', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26, x=5146.5598849654, y=946.62997884117, z=3135.7499299105}
,U095B54685C10552F={DE='Antiquar Boofs', FR='Antiquaire Boofs', EN='Antiquarian Boofs', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=52, x=7589.339830365, y=869.06998057477, z=3103.649930628}
,U5DAE25614C84F51D={DE='Alys White', FR='Alys White', EN='Alys White', scene={DE='Fischerhafen', FR='Poste du Chalut', EN='Trawling Post'}, lvl=18, x=6561.279853344, y=882.43998027593, z=5696.7998726666}
,U5DB612FE09084B56={DE='Alfred Mannew', FR='Alfred Mannew', EN='Alfred Mannew', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=26}
,U5DC7C19464A3FDF7={DE='Janina Düsterer', FR='Janina Solemn', EN='Janina Solemn', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26, x=5157.7798847146, y=946.62997884117, z=3131.5399300046}
,U5DD0C95B61C00640={DE='Jubileth Pybbelin', FR='Jubileth Pybbelin', EN='Jubileth Pybbelin', scene={DE='Nomadenofen', FR='Fournaise du Nomade', EN='Nomad\'s Furnace'}, lvl=44, x=6996.1598436236, y=886.00998019613, z=7073.7598418891}
,U5DE1D79A3FDF7BE6={DE='Olivia Heln', FR='Olivia Heln', EN='Olivia Heln', scene={DE='Hochalm-Ausblick', FR='Poste de Guet des Hautes-Clairières', EN='Highglades Lookout'}, lvl=16, x=6578.8498529512, y=839.81998122856, z=2783.139937792}
,U5DEFF4C14E5F16E2={DE='Lyndon Kassel', FR='Lyndon Kassel', EN='Lyndon Kassel', scene={DE='Lager Klüngel', FR='Camp de la Coterie', EN='Coterie Camp'}, lvl=22, x=5687.5398728736, y=1070.249976078, z=5065.4098867793}
,U5DFE07B1586324CE={DE='Schildwache Bovich', FR='Sentinelle Bovich', EN='Sentinel Bovich', scene={DE='Frosttal', FR='Vallée gelée', EN='Frozen Valley'}, lvl=32, x=4163.209906945, y=1298.0299709868, z=1426.869968107}
,U5E06D9421760F953={DE='Rava Dunasa', FR='Rava Dunasa', EN='Rava Dunasa', scene={DE='Der Untergang von Laternenhaken', FR='La Chute de Saillant de Lanterne', EN='The Fall of Lantern Hook'}, lvl=44}
,U5E13D19D6F96992F={DE='Zahrah Nasira', FR='Zahrah Nasira', EN='Zahrah Nasira', scene={DE='Windzorn-Außenposten', FR='Poste du Vent fou', EN='Windfury Post'}, lvl=48}
,U09687E791E3C049A={DE='Remy Farben', FR='Remy Farben', EN='Remy Farben', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6033.6398651376, y=818.99998169392, z=3005.4699328225}
,U5E1BBA125BFA7BBF={DE='Danika Zaria', FR='Danika Zaria', EN='Danika Zaria', scene={DE='Prüfung der Schildwache', FR='Épreuve de la Sentinelle', EN='Trial of the Sentinel'}, lvl=50}
,U5E26E896014C2EEA={DE='Hazan Fezil', FR='Hazan Fezil', EN='Hazan Fezil', scene={DE='Grollnarben-Damm', FR='Rive de Malentaille', EN='Spitescar Bank'}, lvl=35, x=8209.76953125, y=892.77996826172, z=6653.3896484375}
,U5E65974D74E6DDED={DE='Aeryn', FR='Aeryn', EN='Aeryn', scene={DE='Wundwald-Lift, Basis', FR='Pied de l\'Ascenseur des Bois Meurtris', EN='Scarwood Lift Base'}, lvl=26}
,U5E689B6955B461F9={DE='Daelah', FR='Daelah', EN='Daelah', scene={DE='Spaltrachenweiher', FR='Mares de la Gueule-fendue', EN='Splitmouth Ponds'}, lvl=43, x=8592.9798079319, y=932.58997915499, z=7173.2398396656}
,U5E6FC4DD6AA92158={DE='Sumia Rend', FR='Sumia Rend', EN='Sumia Rend', scene={DE='Sonnrastschlucht', FR='Canyon de Solrepos', EN='Sunrest Canyon'}, lvl=26, x=4454.9199004248, y=1095.7299755085, z=4941.3198895529}
,U5EA27D8D7BEF9AF6={DE='Ralyn Laurel', FR='Ralyn Laurel', EN='Ralyn Laurel', scene={DE='Steinhain', FR='Bosquet de pierre', EN='Stone Grove'}, lvl=35}
,U5EA7F9E7421B487A={DE='Revinov Dehzbog', FR='Revinov Dehzbog', EN='Revinov Dehzbog', scene={DE='Phönixhöhe', FR='Butte du Phénix', EN='Phoenix Rise'}, lvl=50}
,U5EB1E3BF1D7A2A10={DE='Alaric', FR='Alaric', EN='Alaric', scene={DE='Abgründige Kluft', FR='Précipice abyssal', EN='Abyssal Precipice'}, lvl=50}
,U5EBE20127397D628={DE='Radojka Zdrale', FR='Radojka Zdrale', EN='Radojka Zdrale', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1626.8699636366, y=1073.8699759971, z=2612.6199416034}
,U5EF0685274A8F7B8={DE='Sanitäter Loros', FR='Médecin Loros', EN='Medic Loros', scene={DE='Knochenberster-Canyon', FR='Canyon des Fracasseurs', EN='Shatterbone Canyon'}, lvl=35, x=3164.4199292697, y=1000.5999776348, z=3526.1899211835}
,U5EFA531D3B6C5CB5={DE='Pip', FR='Pip', EN='Pip', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=50}
,U5F192A892909287D={DE='Raniyah Sahlah', FR='Raniyah Sahlah', EN='Raniyah Sahlah', scene={DE='Sandachsengrube', FR='Fosse de Sable-essieu', EN='Sandaxle Pit'}, lvl=43, x=7036.6198427193, y=884.00998024084, z=6767.3998487368}
,U5F1956D02EBD628B={DE='Aldred Kallus', FR='Aldred Kallus', EN='Aldred Kallus', scene={DE='Brutwacht-Posten', FR='Poste de la Veillée', EN='Broodwatch Post'}, lvl=35, x=7685.9296875, y=910.89996337891, z=6636.8198242188}
,U5F1B44FD72189675={DE='Beobachter Alehar', FR='Observateur Alhar', EN='Watcher Alhar', scene={DE='Bluteisenbecken', FR='Bassins de Ferdesang', EN='Blood Iron Pools'}, lvl=34, x=3215.1799281351, y=1269.2799716294, z=1797.4099598248}
,U5F41BCCB53B71223={DE='Martin Nastrin', FR='Martin Nastrin', EN='Martin Nastrin', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=52, x=7434.9998338148, y=863.5299806986, z=2960.0499338377}
,U5F744E2E31631D20={DE='Cledus Rotfeld', FR='Cledus Champrouge', EN='Cledus Redfield', lvl=50}
,U5F7629364F10DE25={DE='Hüterin Maralee', FR='Phalange Maralee', EN='Keeper Maralee', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52, x=13071.439707831, y=821.32998164184, z=3449.1399229057}
,U5FB073C01239E113={DE='Denny Aspleyn', FR='Denny Aspleyn', EN='Denny Aspleyn', lvl=50}
,U5FB0E68F2DB0FB18={DE='Mann ohne Gesicht', FR='Homme sans visage', EN='Faceless Man', scene={DE='Kahlschlägerlager', FR='Emprise du Récupérateur', EN='Reclaimer\'s Hold'}, lvl=51, x=6290.919859387, y=909.2399796769, z=1613.8699639272}
,U5FC6586627C82692={DE='Professor Whent', FR='Professeur Whent', EN='Professor Whent', scene={DE='Ekelkaskade', FR='Cascade infecte', EN='Foul Cascade'}, lvl=30}
,U5FD473601BAA0347={DE='Hüterin Larial', FR='Phalange Larial', EN='Keeper Larial', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52, x=13081.849707598, y=820.30998166464, z=3443.399923034}
,U5FD4A8C26860873F={DE='Ziara Altanin', FR='Ziara Altanin', EN='Ziara Altanin', scene={DE='Seeblick-Außenposten', FR='Avant-poste de Bordelac', EN='Lakeside Outpost'}, lvl=18}
,U6036530C56F1FB94={DE='Jania Doshaun', FR='Jania Doshaun', EN='Jania Doshaun', lvl=50}
,U6038D176366B5DCB={DE='Lewin Dinford', FR='Lewin Dinford', EN='Lewin Dinford', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=5017.1898878571, y=1056.3599763885, z=4956.3098892178}
,U606E643E4F70D787={DE='Nophon Gorkylas', FR='Nophon Gorkylas', EN='Nophon Gorkylas', scene={DE='Talos-Landung', FR='Appontement de Talos', EN='Talos Landing'}, lvl=52, x=12382.849723222, y=831.96998140402, z=3104.8499306012}
,U60B0E2F56322571F={DE='Nigel Düsterer', FR='Nigel Solemn', EN='Nigel Solemn', scene={DE='Düsterer Ausblick', FR='Domaine des Solemn', EN='Solemn Outlook'}, lvl=26, x=5448.4198782183, y=1030.6899769623, z=2855.5099361744}
,U60BBE1A117180937={DE='Spitzhacke Threnner', FR='Threnner La Pioche', EN='Pickaxe Threnner', scene={DE='Minenbogen', FR='Boucle de Mine-lointaine', EN='Far Mine Loop'}, lvl=19, x=6019.8498654459, y=875.88998042233, z=4373.5199022442}
,U60F28FDB7A96D309={DE='Jabarik', FR='Jabarik', EN='Jabarik', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=45, x=6602.7398524173, y=881.86998028867, z=7018.109843133}
,U610B81787268A249={DE='Asha Catari', FR='Asha Catari', EN='Asha Catari', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U610DECD510C32842={DE='Mus\'ad', FR='Mus\'ad', EN='Mus\'ad', scene={DE='Khaliti-Zuflucht', FR='Refuge Khaliti', EN='Khaliti Refuge'}, lvl=49}
,U612482D648FB81CD={DE='Sir Martyn Myrsol', FR='Sire Martyn Myrsol', EN='Sir Martyn Myrsol', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3139.9099298175, y=1095.0899755228, z=3872.809913436}
,U617140633F92052F={DE='Aenycha', FR='Aenycha', EN='Aenycha', lvl=50}
,U61A0B4967F3A3531={DE='Andolin Mermode', FR='Andolin Mermode', EN='Andolin Mermode', lvl=60}
,U61B03D274C62A2A4={DE='Karin Malera', FR='Karin Malera', EN='Karin Malera', scene={DE='Holzflor', FR='Voilebois', EN='Timberveil'}, lvl=37, x=5512.8398767784, y=976.48997817375, z=2192.3799509965}
,U61B99A934C29D95E={DE='Tomas Urnhill', FR='Tomas Urnhill', EN='Tomas Urnhill', scene={DE='Übungshof', FR='La Cour d\'Entraînement', EN='The Training Yard'}, lvl=52}
,U61FCFD6130D96E49={DE='Zhaan', FR='Zhaan', EN='Zhaan', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=50}
,U61FEE5FC42C8361E={DE='Weghüter Darion', FR='Garde-voie Darion', EN='Waykeeper Darion', scene={DE='Finstere Tiefen', FR='Profondeurs Insondables', EN='Darkening Deeps'}, lvl=26}
,U620D798471205478={DE='Emi Weidenwind', FR='Emi Vendosier', EN='Emi Wickerwind', scene={DE='Dreienquell', FR='Trois-Sources', EN='Three Springs'}, lvl=37}
,U6211832A50631D05={DE='Frago Mooskrämer', FR='Frago Troque-mousse', EN='Frago Mossmonger', scene={DE='Wachtschlucht', FR='Descente du Garde', EN='Warden\'s Descent'}, lvl=50}
,U09D040D4126AC805={DE='Kira Thanos', FR='Kira Thanos', EN='Kira Thanos', scene={DE='Mondscheinhöhle', FR='Creux du Lever de la Lune', EN='Moonrise Hollow'}, lvl=50}
,U622CBE4F6E65BA76={DE='Skeptiker-Sanitäterin', FR='Médecin des Renégats', EN='Defiant Medic', scene={DE='Königliches Refugium', FR='Retraite du Roi', EN='King\'s Retreat'}, lvl=12}
,U622E114B42B015A5={DE='Hartigan', FR='Hartigan', EN='Hartigan', scene={DE='Dreienquell', FR='Trois-Sources', EN='Three Springs'}, lvl=37, x=7205.2698389497, y=879.90998033248, z=2128.2399524301}
,U624BF85A4BA67856={DE='Eara', FR='Eara', EN='Eara', scene={DE='Bastion Zarnost', FR='Fort Zarnost', EN='Fort Zarnost'}, lvl=50}
,U624C0BE07220BF99={DE='Kerik Tolstov', FR='Kerik Tolstov', EN='Kerik Tolstov', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U624E9A3221FD955C={DE='Gilbert Hilberto', FR='Gilbert Hilberto', EN='Gilbert Hilberto', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=50, x=7610.8498298842, y=869.06998057477, z=3106.5399305634}
,U628838C64DC172C7={DE='Arie', FR='Arie', EN='Arie', scene={DE='Schäfterstrand', FR='Plage de Fletcher', EN='Fletcher\'s Beach'}, lvl=52}
,U628E05021D22920E={DE='Rozalen Feerule', FR='Rozalen Feerule', EN='Rozalen Feerule', scene={DE='Jägerlager', FR='Camp des chasseurs', EN='Hunters\' Camp'}, lvl=42, x=8537.4298091736, y=940.38997898065, z=6624.3798519336}
,U629900D65043269F={DE='Niddya Falstone', FR='Niddya Falstone', EN='Niddya Falstone', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=52}
,U630FAD095DD6FCB7={DE='Erathis Menel', FR='Erathis Menel', EN='Erathis Menel', scene={DE='Überbleibsel', FR='Vestige', EN='Vestige'}, lvl=18, x=5975.729866432, y=889.82998011075, z=5640.4198739268}
,U6338B6BF4ED73B73={DE='Jenli Kepora', FR='Jenli Kepora', EN='Jenli Kepora', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52, x=13025.39970886, y=821.09998164698, z=3452.1399228387}
,U634008CE76DC5F90={DE='Lana Farnish', FR='Lana Farnish', EN='Lana Farnish', scene={DE='Tagesblindhöhlen', FR='Vallon du Jour', EN='Dayblind Hollows'}, lvl=33, x=2898.429935215, y=1233.3199724331, z=2055.76995405}
,U635A7AB0687FB451={DE='Enqchi Oyugun', FR='Enqchi Oyugun', EN='Enqchi Oyugun', scene={DE='Geist von Rhaza\'de', FR='Esprit de Rhaza\'de', EN='Spirit of Rhaza\'de'}, lvl=52}
,U6363995567F42A22={DE='Kommandant Ralsis', FR='Commandant Ralsis', EN='Commander Ralsis', lvl=50}
,U639F89B635F7C27C={DE='Roflo Gluckschluck', FR='Roflo Gouleyant', EN='Roflo Glugshot', lvl=40}
,U63A24C154BFA20DA={DE='Jorge Neralis', FR='Jorge Neralis', EN='Jorge Neralis', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=32, x=3762.1799159087, y=1197.4299732354, z=1769.9599604383}
,U63A611A651608F59={DE='Kebner Agalan', FR='Kebner Agalan', EN='Kebner Agalan', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52}
,U63D033E52D049D44={DE='Adriana Weber', FR='Adriana Tisserand', EN='Adriana Weaver', scene={DE='Steinerne Ruine', FR='Citadelle Redoutable', EN='Redoubt'}, lvl=42}
,U63E1D9C9124BBB52={DE='Bergan Lundren', FR='Bergan Lundren', EN='Bergan Lundren', scene={DE='Eliamfelder', FR='Champs d\'Eliam', EN='Eliam Fields'}, lvl=18, x=6466.8098554555, y=846.42998108082, z=4859.3898913842}
,U09FD5E621A713E1B={DE='Quartiermeisterin Savija', FR='Intendant Savija', EN='Quartermaster Savija', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1576.6699647587, y=1072.1399760358, z=2627.2899412755}
,U640B133225EE7557={DE='Thalia Cosmin', FR='Thalia Cosmin', EN='Thalia Cosmin', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26, x=5181.0098841954, y=943.96997890063, z=3133.4599299617}
,U0A04226F5B999409={DE='Monya Olnik', FR='Monya Olnik', EN='Monya Olnik', scene={DE='Obsidian-Küste', FR='Rivage d\'Obsidienne', EN='Obsidian Shore'}, lvl=52}
,U645A71C97E70A784={DE='Ganegen Dalub', FR='Ganegen Dalub', EN='Ganegen Dalub', scene={DE='Scheuerschwallhafen', FR='Havre de Hurlegrain', EN='Gritsquall Haven'}, lvl=50, x=5583.8698751908, y=881.63998029381, z=6628.1498518493}
,U646095CF55494C16={DE='Sir Isaak Kazimir', FR='Sire Isaak Kazimir', EN='Sir Isaak Kazimir', scene={DE='Cestuslager', FR='Camp Cestus', EN='Camp Cestus'}, lvl=36, x=3339.7499253508, y=1086.8099757079, z=3556.3099205103}
,U6461B06F57BB3A43={DE='Khnum der Gerissene', FR='Khnum le Sournois', EN='Khnum the Shifty', lvl=50}
,U6461B0706091FD50={DE='Gaston', FR='Gaston', EN='Gaston', lvl=50}
,U6461B07171CFA7A1={DE='Dorsey', FR='Dorsey', EN='Dorsey', lvl=50}
,U6461B07202246AB6={DE='Hobert', FR='Hobert', EN='Hobert', lvl=50}
,U6461B07313122D87={DE='Fefer', FR='Fefer', EN='Fefer', lvl=50}
,U6461B0743C48D094={DE='Umenth', FR='Umenth', EN='Umenth', lvl=50}
,U6461B0787F23C4C9={DE='Flinker Jack', FR='Jack le Vif', EN='Swift Jack', lvl=50}
,U6461B07908198FDE={DE='Kal\'ech', FR='Kal\'ech', EN='Kal\'ech', lvl=50}
,U6461B07A1977B22F={DE='Charles', FR='Charles', EN='Charles', lvl=50}
,U6491032B263D66FA={DE='Tank Dooks', FR='Tank Dooks', EN='Tank Dooks', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35}
,U64A914C8321A37B3={DE='Brendnall', FR='Brendnall', EN='Brendnall', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=20}
,U64C087643E91820D={DE='Sergeantin Clover', FR='Sergent Clover', EN='Sergeant Clover', scene={DE='Steinhain', FR='Bosquet de pierre', EN='Stone Grove'}, lvl=31}
,U64FDBF4252FFF39D={DE='Dupels Stummelzeh', FR='Dupels Stubtoe', EN='Dupels Stubtoe', scene={DE='Falkenruf-Klamm', FR='Ravin de Cri-Crécerelle', EN='Kestrel\'s Cry Ravine'}, lvl=34, x=3249.0199273787, y=1177.0799736902, z=2177.9399513192}
,U652056DF6E82D537={DE='Cala Overeem', FR='Cala Overeem', EN='Cala Overeem', scene={DE='Windzorn-Außenposten', FR='Poste du Vent fou', EN='Windfury Post'}, lvl=48}
,U652225AD01CF7E61={DE='Eldrek Sazz', FR='Eldrek Sazz', EN='Eldrek Sazz', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6561.9998533279, y=823.54998159222, z=4602.4798971266}
,U652E067F5510B7B3={DE='Morti Torlan', FR='Morti Torlan', EN='Morti Torlan', scene={DE='Bluteisenbecken', FR='Bassins de Ferdesang', EN='Blood Iron Pools'}, lvl=30, x=3238.5699276123, y=1252.4999720044, z=1782.3399601616}
,U6559C1F94EB9923E={DE='Danny Boiler', FR='Danny Boiler', EN='Danny Boiler', lvl=50}
,U656AB2BA769634DD={DE='Dea', FR='Dea', EN='Dea', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=4876.8298909944, y=1058.8299763333, z=4942.2198895328}
,U658F98282F2677D9={DE='Iosuv Tulvei', FR='Iosuv Tulvei', EN='Iosuv Tulvei', scene={DE='Wundwaldgrat', FR='Crête des Bois Meurtris', EN='Scarwood Ridge'}, lvl=31, x=4059.0899092723, y=1079.4899758715, z=4086.0499086697}
,U6591C03F199F3B93={DE='Alan Paton', FR='Alan Paton', EN='Alan Paton', scene={DE='Quecksilber-Akademie', FR='Académie de Vif-Argent', EN='Quicksilver College'}, lvl=10, x=5958.4398668185, y=812.15998184681, z=3061.0199315809}
,U0A2D96E96D6DDB44={DE='Späher Novac', FR='Éclaireur Novac', EN='Scout Novac', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3138.9799298383, y=1094.589975534, z=3862.9699136559}
,U65CEA59B1A5071A6={DE='General Stanig', FR='Général Stanig', EN='General Stanig', scene={DE='Graugärten', FR='Jardins Gris', EN='Grey Gardens'}, lvl=40}
,U662249C758928FB1={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', lvl=40}
,U6622644000535115={DE='Bewahrer Rin', FR='Protecteur Rin', EN='Warden Rin', scene={DE='Königliches Refugium', FR='Retraite du Roi', EN='King\'s Retreat'}, lvl=10, x=6318.3798587732, y=840.67998120934, z=4539.0598985441}
,U6631E6AD7919EE75={DE='Asha Catari', FR='Asha Catari', EN='Asha Catari', scene={DE='Königsbresche', FR='Voie Royale', EN='King\'s Breach'}, lvl=51}
,U0A38325E1A699B28={DE='Nora Glen', FR='Nora Glen', EN='Nora Glen', scene={DE='Sumpfhaus', FR='Maison du Marais', EN='Marsh House'}, lvl=12, x=6501.7098546755, y=828.96998147108, z=3287.1999265254}
,U667524482C7CDB0D={DE='Korporal Riltas', FR='Caporal Riltas', EN='Corporal Riltas', lvl=50}
,U6680C5F76A5CB69E={DE='Jaren Stwyn', FR='Jaren Stwyn', EN='Jaren Stwyn', scene={DE='Eliamfelder', FR='Champs d\'Eliam', EN='Eliam Fields'}, lvl=18, x=6462.7298555467, y=846.23998108506, z=4852.1698915455}
,U66972E261A5CEBD3={DE='Rellop', FR='Rellop', EN='Rellop', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=50}
,U66A1D4FE0E3A43CA={DE='Ariea', FR='Ariea', EN='Ariea', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=30, x=3687.3999175802, y=1097.6799754649, z=4463.229900239}
,U66AD01F84277CF64={DE='Erif Rohsal', FR='Erif Rohsal', EN='Erif Rohsal', scene={DE='Alte Wache', FR='Vieux-Garde', EN='Auld Warden'}, lvl=32, x=3036.1999321356, y=1038.2699767929, z=3902.9699127618}
,U66B0A55508059617={DE='Sandra Roe', FR='Sandra Roe', EN='Sandra Roe', scene={DE='Felsgrat', FR='Crêteroc', EN='Rock Ridge'}, lvl=27, x=4533.6398986652, y=918.38997947238, z=3482.3799221627}
,U66B385FB54E51F23={DE='Fürst Kapitän Maddox Schwurklinge', FR='Grand capitaine Maddox Lameserment', EN='Lord Captain Maddox Oathblade', scene={DE='Grenzwald', FR='Orée du bois', EN='Edgewood'}, lvl=50}
,U66B3C55570D72FD2={DE='Cantara Ayah', FR='Cantara Ayah', EN='Cantara Ayah', scene={DE='Windzorn-Außenposten', FR='Poste du Vent fou', EN='Windfury Post'}, lvl=48}
,U66C19FFE0A0A157C={DE='Endral Rollen', FR='Endral Rollen', EN='Endral Rollen', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6080.8398640826, y=817.28998173214, z=2988.489933202}
,U66C7C2A339BB6B4E={DE='Königin Miela', FR='Reine Miela', EN='Queen Miela', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=50}
,U66D153D565F7210A={DE='Bohem Maroboduus', FR='Bohem Maroboduus', EN='Bohem Maroboduus', scene={DE='Heldentrutz', FR='Bosquet des Héros', EN='Heroes\' Stand'}, lvl=33, x=3088.9099309575, y=1092.9299755711, z=4083.3599087298}
,U66DC837E686B424D={DE='Gregor Turmin', FR='Gregor Turmin', EN='Gregor Turmin', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52, x=13026.549708834, y=821.23998164386, z=3440.8799230903}
,U6714EC5B55B50FF3={DE='Norbert Denbur', FR='Norbert Denbur', EN='Norbert Denbur', scene={DE='Steinfeldprärie', FR='Prairie du Champ de Pierre', EN='Stonefield Prairie'}, lvl=21}
,U671BC5F609666F64={DE='Asha Catari', FR='Asha Catari', EN='Asha Catari', scene={DE='Tiefschlagmine', FR='Mines de Couprofond', EN='Deepstrike Mines'}, lvl=51}
,U671EBB5C3A8CEBBE={DE='Gefangener Soldat', FR='Soldat capturé', EN='Captured Soldier', scene={DE='Eiswacht-Außenposten', FR='Avant-poste d\'Œil-glacé', EN='Icewatch Outpost'}, lvl=30, x=2842.5399364643, y=1244.7999721766, z=2428.8199457116}
,U671F2D1C6BDF00C1={DE='Alish Rotfels', FR='Alish Roc-rouge', EN='Alish Redrock', scene={DE='Leestein-Posten', FR='Pierre-sous-le-vent', EN='Leestone Stand'}, lvl=48, x=6740.1398493461, y=919.32997945137, z=7375.4498351458}
,U6766DC221BEF9741={DE='Petrov Weißmähne', FR='Petrov Blancrin', EN='Petrov Whitemane', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=40}
,U0A5AAEF377D52758={DE='Kapitän Sertos', FR='Capitaine Sertos', EN='Captain Sertos', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=18, x=5983.1398662664, y=812.21998184547, z=2956.8099339101}
,U679C15062B0D5DB5={DE='Zerena Karathi', FR='Zerena Karathi', EN='Zerena Karathi', lvl=50}
,U67AAD2C737DB135E={DE='Raish Komarr', FR='Raish Komarr', EN='Raish Komarr', scene={DE='Holzflor', FR='Voilebois', EN='Timberveil'}, lvl=37, x=5481.7798774727, y=975.56997819431, z=2160.5599517077}
,U67B434B52DDDF45E={DE='Miron Ledino', FR='Miron Ledino', EN='Miron Ledino', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3138.4199298508, y=1095.0899755228, z=3890.3499130439}
,U67BDF0172F46D6A6={DE='Olthin Idren', FR='Olthin Idren', EN='Olthin Idren', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6570.0598531477, y=822.16998162307, z=4597.6998972334}
,U67C5C76F78850085={DE='Lupta', FR='Lupta', EN='Lupta', lvl=50}
,U0A61CB4922D7CF33={DE='Freeman Krunkle', FR='Homme libre Krunkle', EN='Freeman Krunkle', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=10, x=6609.1798522733, y=820.33998166397, z=4576.2398977131}
,U67FCC0E25F6B2709={DE='Cerys Amare', FR='Cerys Amare', EN='Cerys Amare', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6057.2598646097, y=817.96998171695, z=3034.5199321732}
,U68094C020F01068F={DE='Erford Tiefenfels', FR='Erford Rochapic', EN='Erford Deeprock', scene={DE='Quecksilber-Akademie', FR='Académie de Vif-Argent', EN='Quicksilver College'}, lvl=10}
,U681340BC0DF66D6A={DE='Bruder Damon', FR='Frère Damon', EN='Brother Damon', scene={DE='Geist von Rhaza\'de', FR='Esprit de Rhaza\'de', EN='Spirit of Rhaza\'de'}, lvl=52, x=6223.8698608857, y=892.83998004347, z=5332.6298808064}
,U68403A1B4DBC184B={DE='Beschützerin Carah', FR='Protectrice Carah', EN='Protector Carah', scene={DE='Der Turm der Weisen', FR='L\'Aiguille du Sage', EN='The Sagespire'}, lvl=34, x=2635.1899410989, y=1177.8799736723, z=3611.4699192774}
,U685F1FAB49336D53={DE='Ariza Nostal', FR='Ariza Nostal', EN='Ariza Nostal', scene={DE='Scharfklingenmühle', FR='Moulin de Vivelame', EN='Keenblade Mill'}, lvl=32}
,U68675E8559F689B1={DE='Pandothiel Majenthe', FR='Pandothiel Majenthe', EN='Pandothiel Majenthe', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7484.3498327117, y=904.69997977838, z=3064.6899314988}
,U688C866534BEBEAC={DE='Nyriel Windzauber', FR='Nyriel Sortventeux', EN='Nyriel Windspell', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U0A74AD912395194F={DE='Aliani Hunsar', FR='Aliani Hunsar', EN='Aliani Hunsar', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3672.2499179188, y=1096.4499754924, z=4372.8399022594}
,U68A704797B7DEBBE={DE='Projektion von Asha', FR='Projection d\'Asha', EN='Projection of Asha', scene={DE='Orphiels Observatorium', FR='Observatoire d\'Orphiel', EN='Orphiel\'s Observatory'}, lvl=52}
,U68E7433F173C43F3={DE='Niles Twellend', FR='Niles Twellend', EN='Niles Twellend', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7455.0998333655, y=904.69997977838, z=3036.139932137}
,U68F429AB7E5969E0={DE='Thos Nishim', FR='Thos Nishim', EN='Thos Nishim', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6585.2798528075, y=822.65998161212, z=4600.2798971757}
,U691F162263D2117D={DE='Gloria Pamarle', FR='Gloria Pamarle', EN='Gloria Pamarle', scene={DE='Quecksilber-Akademie', FR='Académie de Vif-Argent', EN='Quicksilver College'}, lvl=10, x=5885.0498684589, y=814.98998178355, z=3102.3299306575}
,U69230DA938673288={DE='Orev Bimsy', FR='Orev Bimsy', EN='Orev Bimsy', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60, x=13095.949707283, y=906.44997973926, z=11524.479742408}
,U6938DF777029C025={DE='Cereil Melticent', FR='Cereil Melticent', EN='Cereil Melticent', scene={DE='Sonnrastschlucht', FR='Canyon de Solrepos', EN='Sunrest Canyon'}, lvl=26, x=4494.5098995399, y=902.41997982934, z=4609.5798969679}
,U693EFBF844DC25E1={DE='Hauptmann Toria', FR='Capitaine Toria', EN='Captain Toria', lvl=50}
,U69688D4C1A80F5D1={DE='Solya Karini', FR='Solya Karini', EN='Solya Karini', scene={DE='Fernhall', FR='Foyer-Lointain', EN='Farhall'}, lvl=52}
,U6983F2840E37019E={DE='Ralyn Laurel', FR='Ralyn Laurel', EN='Ralyn Laurel', scene={DE='Heulendes Plateau', FR='Plateau Mugissant', EN='Howling Plateau'}, lvl=35}
,U698B2B6654AA4DE3={DE='Sergeant Coda', FR='Sergent Coda', EN='Sergeant Coda', scene={DE='Heulendes Plateau', FR='Plateau Mugissant', EN='Howling Plateau'}, lvl=30, x=3734.7699165214, y=1090.2999756299, z=3223.819927942}
,U698B63A11B161AF3={DE='Minnie Stroni', FR='Mineille Strone', EN='Minnie Stroni', lvl=50}
,U69A5E77C177BDEEA={DE='Sentinel Reatona', FR='Sentinel Reatona', EN='Sentinel Reatona', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=48}
,U69B92F0674BDF48A={DE='Jerome Drift', FR='Jérôme Drift', EN='Jerome Drift', scene={DE='Spaltrachenweiher', FR='Mares de la Gueule-fendue', EN='Splitmouth Ponds'}, lvl=43}
,U69BBEED70FFE4F7F={DE='Ivan Kupferzahn', FR='Ivan Dent-de-cuivre', EN='Ivan Coppertooth', scene={DE='Ekelkaskade', FR='Cascade infecte', EN='Foul Cascade'}, lvl=30}
,U0A9469780D05F07C={DE='Thamber Barklynn', FR='Thamber Barklynn', EN='Thamber Barklynn', scene={DE='Sandachsengrube', FR='Fosse de Sable-essieu', EN='Sandaxle Pit'}, lvl=43, x=7033.5298427884, y=884.33998023346, z=6774.8998485692}
,U0A988D497A5F1515={DE='Arnold Mays', FR='Arnold Mays', EN='Arnold Mays', scene={DE='Gewaltige Steppen', FR='Steppes Dominantes', EN='Towering Steppes'}, lvl=25, x=4377.2999021597, y=1092.5799755789, z=5121.8298855182}
,U6A5215821498A419={DE='Kiron Liakos', FR='Kiron Liakos', EN='Kiron Liakos', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52, x=6036.4398650751, y=920.92997941561, z=5190.2098839898}
,U6A6A43A4562174D8={DE='Kardinal Gutherz', FR='Cardinal Cœurvertueux', EN='Cardinal Heartfellow', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=52, x=7608.2098299433, y=869.06998057477, z=3092.0899308864}
,U6AB87B751929247C={DE='Quartiermeisterin Molira', FR='Intendante Molira', EN='Quartermaster Molira', scene={DE='Quecksilber-Akademie', FR='Académie de Vif-Argent', EN='Quicksilver College'}, lvl=10, x=5892.5498682912, y=817.84998171963, z=3040.8299320322}
,U6AC663562361CD63={DE='Oswald Greeb', FR='Oswald Greeb', EN='Oswald Greeb', lvl=50}
,U6ACDE8D012D68603={DE='Burdock Graybellows', FR='Burdock Soufflet-gris', EN='Burdock Graybellows', scene={DE='Prüfung der Schildwache', FR='Épreuve de la Sentinelle', EN='Trial of the Sentinel'}, lvl=50}
,U6B1EF81E7FDCC406={DE='Angorn Monfal', FR='Angorn Monfal', EN='Angorn Monfal', scene={DE='Wundwald-Lift, Basis', FR='Pied de l\'Ascenseur des Bois Meurtris', EN='Scarwood Lift Base'}, lvl=28, x=4611.0298969354, y=921.94997939281, z=4393.83990179}
,U6B2DA6ED6A57A1F2={DE='Kira Thanos', FR='Kira Thanos', EN='Kira Thanos', lvl=40}
,U6B3D0BCE5926A983={DE='Rorshana Hereni', FR='Rorshana Hereni', EN='Rorshana Hereni', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52, x=13037.849708581, y=821.53998163715, z=3436.7599231824}
,U6B4B73484A2794E4={DE='Jace Prisco', FR='Jace Prisco', EN='Jace Prisco', scene={DE='Die Manufaktur', FR='La Manufacture', EN='The Manufactory'}, lvl=52, x=5989.2998661287, y=909.12997967936, z=5218.429883359}
,U6B4C8A1348003CDF={DE='Rellop', FR='Rellop', EN='Rellop', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=50}
,U6B71D622536914C8={DE='Oslo Len', FR='Oslo Len', EN='Oslo Len', scene={DE='Laternenplateau', FR='Plateau de Lanterne', EN='Lantern Plateau'}, lvl=35, x=7397.9998346418, y=914.62997955643, z=6208.1198612377}
,U6B7F3A3F7890A096={DE='Dalin Erst', FR='Dalin Erst', EN='Dalin Erst', scene={DE='Spenststrüpp', FR='Fourré Imprévisible', EN='Wayward Thicket'}, lvl=14, x=6927.2998451628, y=875.61998042837, z=2911.0199349336}
,U6B9DF4A867EC723A={DE='Phineas Bowyer', FR='Phineas Bowyer', EN='Phineas Bowyer', lvl=50}
,U6BCA59EB7628DB33={DE='Terenti Osip', FR='Terenti Osip', EN='Terenti Osip', scene={DE='Granitwache', FR='Guet de Granite', EN='Granite Watch'}, lvl=32}
,U6BCB4F815239A9B7={DE='Beobachter Gregor', FR='Observateur Gregor', EN='Watcher Gregor', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=34, x=3713.4799169973, y=1198.7299732063, z=1728.2999613695}
,U6BEBE5A41C313874={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', scene={DE='Geist von Rhaza\'de', FR='Esprit de Rhaza\'de', EN='Spirit of Rhaza\'de'}, lvl=52}
,U6BF1F8BD7103A91F={DE='Shabaka Akins', FR='Shabaka Akins', EN='Shabaka Akins', scene={DE='Khaliti-Zeile', FR='Passage des Khalitis', EN='Khaliti Row'}, lvl=46, x=6361.4798578098, y=881.01998030767, z=6910.1298455466}
,U6C16C565069B3AC3={DE='Seresen Riennen', FR='Seresen Riennen', EN='Seresen Riennen', scene={DE='Phönixhöhe', FR='Butte du Phénix', EN='Phoenix Rise'}, lvl=50}
,U6C213E54778E9A67={DE='Adeptin Dinoce', FR='Adepte Dinoce', EN='Adept Dinoce', lvl=50, x=6197.1798614822, y=919.66997944377, z=5150.649884874}
,U0AD12D1C45AD43E8={DE='Pibit Farthing', FR='Pibit Farthing', EN='Pibit Farthing', scene={DE='Tiefschlag-Ausgrabung', FR='Excavation de Couprofond', EN='Deepstrike Excavation'}, lvl=25}
,U6C2F9BF5136514D7={DE='Khaleem Vensworn', FR='Khaleem Vensworn', EN='Khaleem Vensworn', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50, x=6134.7498628777, y=918.51997946948, z=5178.3598842546}
,U0AD4E3AB3C088303={DE='Agogag', FR='Agogag', EN='Agogag', scene={DE='Dunkelfeuerhain', FR='Bosquet de Noirfeu', EN='Darkfire Grove'}, lvl=29}
,U6C8744820F9A3348={DE='Tomin', FR='Tomin', EN='Tomin', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=28, x=4465.5799001865, y=1235.4999723844, z=1656.2999629788}
,U6C926E295B084F77={DE='Louis Klies', FR='Louis Klies', EN='Louis Klies', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=52, x=7439.8798337057, y=863.5299806986, z=2961.1199338138}
,U0AE26941549718BE={DE='Reynold Curry', FR='Reynold Curry', EN='Reynold Curry', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6032.5398651622, y=818.99998169392, z=3019.7499325033}
,U6D221D9A28BCE0AD={DE='Eldain Diomid', FR='Eldain Diomid', EN='Eldain Diomid', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=50, x=7403.8998345099, y=863.5299806986, z=2991.2599331401}
,U6D5C3EA55A0DA7E4={DE='Khufarus der Sandgegeißelte', FR='Khufarus l\'Abrasé', EN='Khufarus the Sand Scoured', lvl=50}
,U6D64CD887CDCB1FA={DE='Harold Genthrop', FR='Harold Genthrop', EN='Harold Genthrop', scene={DE='Fernhall', FR='Foyer-Lointain', EN='Farhall'}, lvl=52}
,U6D7CBAB479C22DE7={DE='Asache der Förster', FR='Asache le Bûcheron', EN='Asache the Woodsman', lvl=50}
,U6D7E11C407A168B7={DE='Ralyn Laurel', FR='Ralyn Laurel', EN='Ralyn Laurel', scene={DE='Granitwaldkreuzung', FR='Passage de Bois-Granite', EN='Granitewood Crossing'}, lvl=35}
,U6DADA90D0441116C={DE='Koke Tegus', FR='Koke Tegus', EN='Koke Tegus', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U6DB0C8EA3EAE9B23={DE='Sharis Gunseka', FR='Sharis Gunseka', EN='Sharis Gunseka', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=52, x=5906.1898679864, y=915.46997953765, z=5310.279881306}
,U6E095D89495421A4={DE='Olmos der Wühler', FR='Olmos le Fouilleur', EN='Olmos the Delver', scene={DE='Brühwasserfelder', FR='Région des Thermolacs', EN='Scaldwater Fields'}, lvl=52}
,U6E46E8C84B7AAEEC={DE='Ben Felsted', FR='Ben Felsted', EN='Ben Felsted', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U0B09E5C65B02AD9A={DE='Sir Greg Armex', FR='Greg Armex', EN='Sir Greg Armex', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=29, x=3849.2799139619, y=976.21997817978, z=3045.6299319249}
,U6E6900167792B746={DE='Bildnis des Generals Stanig', FR='Image du Général Stanig', EN='Image of General Stanig', scene={DE='Runental', FR='Descente runique', EN='Runic Descent'}, lvl=40}
,U6E70B4861BDE77A5={DE='Hylio Borros', FR='Hylio Borros', EN='Hylio Borros', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=52, x=6008.6198656969, y=920.92997941561, z=5152.6698848289}
,U6F190C351A16DE2E={DE='Raj Tahleed', FR='Raj Tahleed', EN='Raj Tahleed', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=52, x=5903.4298680481, y=915.46997953765, z=5307.3098813724}
,U6F2BC77B5E8F7E47={DE='Fenric Duboard', FR='Fenric Duboard', EN='Fenric Duboard', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=50, x=7469.0598330535, y=894.55998000503, z=3004.0399328545}
,U6F51FCB1765CC0D6={DE='Ethain Melankis', FR='Ethain Melankis', EN='Ethain Melankis', scene={DE='Göttlicher Anlegeplatz', FR='Débarcadère Divin', EN='Divine Landing'}, lvl=10, x=6221.7098609339, y=832.72998138703, z=3850.1099139433}
,U6F64685012FA03D9={DE='Omia Leen', FR='Omia Leen', EN='Omia Leen', scene={DE='Steinhain', FR='Bosquet de pierre', EN='Stone Grove'}, lvl=31, x=3580.3499199729, y=1104.3199753165, z=3797.4999151193}
,U6F90B04D42677597={DE='Adeptin Dinoce', FR='Adepte Dinoce', EN='Adept Dinoce', lvl=50}
,U6FB28D8C70B7702B={DE='Serelda Peel', FR='Serelda Peel', EN='Serelda Peel', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=26, x=3860.2199137174, y=974.69997821376, z=3043.3899319749}
,U6FB82D0F43869E44={DE='Morold der Sumpflingfluch', FR='Morold, le Fléau des Tourbiers', EN='Morold the Bogling Bane', lvl=50}
,U6FBBF8ED777EC5A8={DE='Kelnin Malm', FR='Kelnin Malm', EN='Kelnin Malm', scene={DE='Sinksumpf', FR='Marais Encaissé', EN='Sunken Marsh'}, lvl=12, x=6528.0998540856, y=828.50998148136, z=3329.7099255752}
,U6FDBD2BB4EED3D33={DE='Christa Arglist', FR='Christa Malice', EN='Christa Malice', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=30, x=3633.4899187852, y=1204.739973072, z=1729.1499613505}
,U6FDC531214AA466B={DE='Myia Heretilli', FR='Myia Heretilli', EN='Myia Heretilli', scene={DE='Nomadenofen', FR='Fournaise du Nomade', EN='Nomad\'s Furnace'}, lvl=44}
,U700125E35272FEB4={DE='Koke Tegus', FR='Koke Tegus', EN='Koke Tegus', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U700CF10618DE2658={DE='Ersonin Gray', FR='Ersonin Gray', EN='Ersonin Gray', scene={DE='Dreienquell', FR='Trois-Sources', EN='Three Springs'}, lvl=37, x=7226.0498384852, y=879.02998035215, z=2049.8899541814}
,U701C03712E0EB61E={DE='Levi Nikolavich', FR='Levi Nikolavich', EN='Levi Nikolavich', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3777.9099155571, y=1097.0899754781, z=4413.569901349}
,U70379EB1495C0F7B={DE='Jyn Starry', FR='Jyn Starry', EN='Jyn Starry', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=27}
,U7057B1E609B2DE41={DE='Laenaya Niro', FR='Laenaya Niro', EN='Laenaya Niro', scene={DE='Knorzwaldposten', FR='Poste de Bois-noueux', EN='Gnarlwood Post'}, lvl=26, x=5394.2598794289, y=953.79997868091, z=2719.4899392147}
,U7072481A78270C0F={DE='Verick Sevoris', FR='Verick Sevoris', EN='Verick Sevoris', scene={DE='Ewige Wacht', FR='Garde Éternelle', EN='Endless Watch'}, lvl=50}
,U7095D6251D056FA9={DE='Veras', FR='Veras', EN='Veras', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=50}
,U70BD46AE442E035A={DE='Sanitäterin Laran', FR='Médecin Laran', EN='Medic Laran', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3155.4999294691, y=1095.0899755228, z=3891.509913018}
,U70C3C9657161E2D9={DE='Rickard Destrum', FR='Rickard Destrum', EN='Rickard Destrum', scene={DE='Sonnrastschlucht', FR='Canyon de Solrepos', EN='Sunrest Canyon'}, lvl=28, x=4724.6998943947, y=986.78997794352, z=4534.6198986433}
,U70C6331A34EEC972={DE='Alio Romea', FR='Alio Romea', EN='Alio Romea', scene={DE='Steinhain', FR='Bosquet de pierre', EN='Stone Grove'}, lvl=31, x=3594.0899196658, y=1105.4799752906, z=3789.3899153005}
,U711A24657D7CF931={DE='Cilius Enagon', FR='Cilius Enagon', EN='Cilius Enagon', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52, x=13037.169708597, y=821.54998163693, z=3451.7399228476}
,U7120821D4C613A58={DE='Sijay Creg', FR='Sijay Creg', EN='Sijay Creg', lvl=50}
,U71761A777CC1C553={DE='Riali Dimondo', FR='Riali Dimondo', EN='Riali Dimondo', scene={DE='Sturmfestung', FR='Bastion-Tempête', EN='Stormhold'}, lvl=58}
,U7195ECE4770DCF6C={DE='Lotham Dunkelmond', FR='Lotham Sombrelune', EN='Lotham Darkmoon', scene={DE='Granitwaldkreuzung', FR='Passage de Bois-Granite', EN='Granitewood Crossing'}, lvl=35}
,U71974FB249682D8A={DE='Brigadier Andan', FR='Brigadier Andan', EN='Brigadier Andan', lvl=50, x=6191.599861607, y=919.66997944377, z=5151.9798848443}
,U71FB20973C5140CA={DE='Charles', FR='Charles', EN='Charles', lvl=50}
,U72041E304383EE03={DE='Andrei Alexi', FR='Andrei Alexi', EN='Andrei Alexi', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3659.7499181982, y=1097.6799754649, z=4457.279900372}
,U728FE96B1EB5FA19={DE='Andrew Gerwin', FR='Andrew Gerwin', EN='Andrew Gerwin', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6067.489864381, y=817.21998173371, z=3015.5399325974}
,U72A1D06238DE39C5={DE='Marschall Ceryk', FR='Maréchal Ceryk', EN='Marshal Ceryk', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=52, x=7403.1298345271, y=863.5299806986, z=2962.3899337854}
,U0B7A6BEE697F46DB={DE='Kabbalist Elsu', FR='Cabaliste Elsu', EN='Cabalist Elsu', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7450.5998334661, y=886.32998018898, z=3047.1399318911}
,U72D6764B182A1089={DE='Schildwache Tatiana', FR='Sentinelle Tatiana', EN='Sentinel Tatiana', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=32, x=3730.6599166133, y=1199.5599731877, z=1739.4999611191}
,U732BAA70152A469D={DE='Shriage Qutugh', FR='Shriage Qutugh', EN='Shriage Qutugh', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=52, x=6011.9098656233, y=920.92997941561, z=5147.4498849455}
,U73322FA90B2D775B={DE='Rillan Grünblatt', FR='Rillan Vertefeuille', EN='Rillan Greenleaf', scene={DE='Quecksilber-Akademie', FR='Académie de Vif-Argent', EN='Quicksilver College'}, lvl=10, x=5871.2898687664, y=817.9899817165, z=3172.2699290942}
,U0B86A7947EA225EF={DE='Kaspar Massi', FR='Kaspar Massi', EN='Kaspar Massi', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=50, x=6663.2198510654, y=887.56998016126, z=7074.1998418793}
,U734A82F1332568B2={DE='Marschall Eichenherz', FR='Maréchal Cœurdechêne', EN='Marshal Oakheart', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26, x=5124.7098854538, y=946.61997884139, z=3212.1799282022}
,U734AC8615759A021={DE='Soldatin Meirdi', FR='Soldat Meirdi', EN='Private Meirdi', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=30, x=3867.4299135562, y=1212.6199728958, z=1686.4699623045}
,U0B88976703D772CA={DE='Andro Wells', FR='Andro Wells', EN='Andro Wells', scene={DE='Nomadenofen', FR='Fournaise du Nomade', EN='Nomad\'s Furnace'}, lvl=44}
,U0B8BF2FD489AAF82={DE='Keyl Istor', FR='Keyl Istor', EN='Keyl Istor', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6589.1398527212, y=822.86998160742, z=4601.9398971386}
,U737F7C0F1C8F21A9={DE='Optio Mortain', FR='Optio Mortain', EN='Optio Mortain', scene={DE='Wundwald-Lift, Basis', FR='Pied de l\'Ascenseur des Bois Meurtris', EN='Scarwood Lift Base'}, lvl=29, x=4619.9498967361, y=921.84997939505, z=4392.7199018151}
,U73B7B9944CA493A0={DE='General Stanig', FR='Général Stanig', EN='General Stanig', scene={DE='Feenring-Forst', FR='Bois de Cerclefée', EN='Faering Woods'}, lvl=40}
,U73BAA2AB39EDAAF8={DE='Kaspar Massi', FR='Kaspar Massi', EN='Kaspar Massi', scene={DE='Geist von Rhaza\'de', FR='Esprit de Rhaza\'de', EN='Spirit of Rhaza\'de'}, lvl=52, x=6223.9498608839, y=892.65998004749, z=5330.3598808572}
,U012871AA2943CF3F={DE='Atya Koreen', FR='Atya Koreen', EN='Atya Koreen', scene={DE='Bruchtal', FR='Vallon Brisé', EN='Broken Vale'}, lvl=50, x=2290.9099487942, y=1155.1799741797, z=3011.3699326906}
,U73ECD3696E8B23C3={DE='Reesha Ahnar', FR='Reesha Ahnar', EN='Reesha Ahnar', scene={DE='Zaubererkessel', FR='Caldera du Charmeur', EN='Charmer\'s Caldera'}, lvl=50}
,U743749914163CAFC={DE='Greggor Kerkosa', FR='Greggor Kerkosa', EN='Greggor Kerkosa', scene={DE='Ritterhöhe', FR='Avancée du Croisé', EN='Crusader\'s Advance'}, lvl=50}
,U74396B576A36398C={DE='Mitch', FR='Mitch', EN='Mitch', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=20, x=7595.8398302197, y=869.06998057477, z=3118.1599303037}
,U74589D1A5258DA8D={DE='Morvin Orst', FR='Morvin Orst', EN='Quartermaster Orst', scene={DE='Wundwald-Lift, Basis', FR='Pied de l\'Ascenseur des Bois Meurtris', EN='Scarwood Lift Base'}, lvl=28, x=4610.8798969388, y=924.33997933939, z=4407.7699014787}
,U7476BE8F1984C2C2={DE='Bram Caulker', FR='Bram Caulker', EN='Bram Caulker', scene={DE='Bruchsteinbecken-Basislager', FR='Camp de Pierre de Taille', EN='Quarrystone Base Camp'}, lvl=20, x=5691.3298727889, y=961.99997849762, z=4758.8298936319}
,U74C5F0DC227889B1={DE='Brougan Grote', FR='Brougan Grote', EN='Brougan Grote', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6025.0498653296, y=827.73998149857, z=3079.489931168}
,U74CE80BD70B81F57={DE='Marschall Tucker', FR='Maréchal Tucker', EN='Marshal Tucker', scene={DE='Thedeors Zirkel', FR='Cercle de Thedeor', EN='Thedeor\'s Circle'}, lvl=52, x=7417.31983421, y=863.5299806986, z=2910.7399349399}
,U74E64EFC5CE8AFA6={DE='Geistführer', FR='Guide spirituel', EN='Spirit Guide', scene={DE='Spiegel der Zeiten', FR='Miroir des Âges', EN='Mirror Of Ages'}, lvl=16, x=5721.8998721056, y=871.04998053052, z=2839.7999365255}
,U74EA572B09FB8A5A={DE='Ravena Morrid', FR='Ravena Morrid', EN='Ravena Morrid', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U74F279F626B9DB48={DE='Alia Swann', FR='Alia Swann', EN='Alia Swann', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=4885.5198908001, y=1058.8499763329, z=4997.0298883077}
,U75201A5275762A4D={DE='Torgen', FR='Torgen', EN='Torgen', scene={DE='Kap Morgenrot', FR='Pointe du Jour', EN='Dawnbreak Point'}, lvl=50}
,U752B759E24584354={DE='Kiron Liakos', FR='Kiron Liakos', EN='Kiron Liakos', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U753695D04DCA649C={DE='Sir Olgedon', FR='Sire Olgedon', EN='Sir Olgedon', scene={DE='Ritterposten', FR='Baroud du Chevalier', EN='Knight\'s Stand'}, lvl=15, x=7035.8398427367, y=874.52998045273, z=5107.8698858302}
,U75526206316307F2={DE='Kardinal Alwan', FR='Cardinal Alwan', EN='Cardinal Alwan', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7469.9698330332, y=894.55998000503, z=3095.9199308008}
,U75E8B9510F1E7196={DE='Robern Charrette', FR='Robern Charrette', EN='Robern Charrette', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=34, x=4631.2298964839, y=1235.9999723732, z=1542.3299655262}
,U75EEAA764A2127E2={DE='Bewahrer Ezan', FR='Garde Ezan', EN='Lieutenant Ezan', scene={DE='Seidennetzpass', FR='Chemin de Toilensoie', EN='Silkweb Pass'}, lvl=23}
,U75FBE0CA773819E9={DE='Ulf Eisen', FR='Horace Shoe', EN='Horace Shoe', scene={DE='Die Manufaktur', FR='La Manufacture', EN='The Manufactory'}, lvl=52, x=6001.8498658482, y=912.65997960046, z=5248.719882682}
,U001E383E155DBBA3={DE='Sergeant Ollo', FR='Sergent Ollo', EN='Sergeant Ollo', scene={DE='Granitstaubschlucht', FR='Ravin de Poudre-Granite', EN='Granitedust Gulch'}, lvl=28, x=4157.5699070711, y=970.53997830674, z=3291.8899264205}
,U763DAE5D26889EB0={DE='Sir Alvarez Nilkova', FR='Sire Alvarez Nilkova', EN='Sir Alvarez Nilkova', scene={DE='Scharfklingenmühle', FR='Moulin de Vivelame', EN='Keenblade Mill'}, lvl=32, x=3823.2699145433, y=1120.6899749506, z=3683.9899176564}
,U76501DF979B9E5CF={DE='Sylver Valis', FR='Sylver Valis', EN='Sylver Valis', scene={DE='Verborgene Bastion', FR='Bastion caché', EN='Veiled Bastion'}, lvl=51}
,U7688B5C1529B02D4={DE='Terrik Conti', FR='Terrik Conti', EN='Terrik Conti', scene={DE='Die Akademie', FR='Académie', EN='The Academy'}, lvl=59}
,U768DAC3F7CF2C210={DE='Schwester Belladonna', FR='Sœur Belladonna', EN='Sister Belladonna', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U7691CD9F460E089A={DE='Kardinal Fiach', FR='Cardinal Fiach', EN='Cardinal Fiach', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7465.769833127, y=894.55998000503, z=3095.0099308211}
,U76A8FF313D2E5C6F={DE='Kriegshäuptling K\'rom', FR='Chef de guerre K\'rom', EN='Warchief K\'rom', scene={DE='Achyati-Dorf', FR='Village des Achyati', EN='Achyati Village'}, lvl=60}
,U76D7F6973D5C0C99={DE='Kasady Brock', FR='Kasady Brock', EN='Kasady Brock', scene={DE='Sonnrastschlucht', FR='Canyon de Solrepos', EN='Sunrest Canyon'}, lvl=26}
,U76EA6062025E0EB3={DE='Atifa Noor', FR='Atifa Noor', EN='Atifa Noor', scene={DE='Wurmfluchspitze', FR='Aiguille de Plaie-de-wyrm', EN='Wyrmbane Spire'}, lvl=50}
,U76F842C16787FBBB={DE='Lotham Dunkelmond', FR='Lotham Sombrelune', EN='Lotham Darkmoon', scene={DE='Eisenfall', FR='Chute de Fer', EN='Iron Fall'}, lvl=35}
,U0BE7F1080C63EFB1={DE='Quartiermeister Uzan', FR='Intendant Uzan', EN='Quartermaster Uzan', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=34, x=7644.0298291426, y=915.04997954704, z=6304.7398590781}
,U774114B23325C5BA={DE='Cathar', FR='Cathar', EN='Cathar', scene={DE='Steinerne Ruine', FR='Citadelle Redoutable', EN='Redoubt'}, lvl=44}
,U775632CD7AED8A3D={DE='Gesandter Nathen Creen', FR='Nathen Creen', EN='Nathen Creen', scene={DE='Blutige Küsten', FR='Rivages Sanguins', EN='Sanguine Shores'}, lvl=10, x=6205.7898612898, y=831.15998142213, z=3847.0299140122}
,U0BFC8A901A43FEC4={DE='Schildwache Kashara', FR='Sentinelle Kashara', EN='Sentinel Kashara', scene={DE='Tagesblindhöhlen', FR='Vallon du Jour', EN='Dayblind Hollows'}, lvl=33, x=2897.5099352356, y=1233.5699724276, z=2053.4899541009}
,U0C00B5EC06EBA4FA={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Höhle des Kwell', FR='Antre de Kwell', EN='Den of Kwell'}, lvl=59}
,U781C716D793142FD={DE='Cyntar Gant', FR='Cyntar Gant', EN='Cyntar Gant', lvl=50}
,U0C0AD506735A24B4={DE='Caleb Matson', FR='Caleb Matson', EN='Caleb Matson', scene={DE='Seidennetzpass', FR='Chemin de Toilensoie', EN='Silkweb Pass'}, lvl=23, x=5681.9398729987, y=982.64997803606, z=3422.6999234967}
,U7891010D572D950B={DE='Alyn Pinienast', FR='Alyn Branchepin', EN='Alyn Pinebranch', scene={DE='Dreienquell', FR='Trois-Sources', EN='Three Springs'}, lvl=37, x=7278.9098373037, y=880.67998031527, z=2057.4999540113}
,U0C138CA60CCAE043={DE='Lehrling Toshki', FR='Apprenti Toshki', EN='Apprentice Toshki', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=50}
,U791C257A2BB26F06={DE='Sergeant Heinrich', FR='Sergent Heinrich', EN='Sergeant Heinrich', scene={DE='Heldentrutz', FR='Bosquet des Héros', EN='Heroes\' Stand'}, lvl=33, x=3100.5299306978, y=1092.9299755711, z=4051.2799094468}
,U791E36873EC1246A={DE='Colma Dalyci', FR='Colma Dalyci', EN='Colma Dalyci', scene={DE='Die Egge', FR='La Tourmente', EN='The Harrow'}, lvl=25}
,U7970CCE43478A898={DE='Eldhu Bangal', FR='Eldhu Bangal', EN='Eldhu Bangal', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U797853A9602E2FF3={DE='Fedor Saveli', FR='Fedor Saveli', EN='Fedor Saveli', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3146.2099296767, y=1095.0899755228, z=3886.5399131291}
,U79942DBC5E54EB36={DE='Quartiermeister Kemar', FR='Intendant Kemar', EN='Quartermaster Kemar', scene={DE='Wurmfluchspitze', FR='Aiguille de Plaie-de-wyrm', EN='Wyrmbane Spire'}, lvl=50, x=6111.559863396, y=979.19997811317, z=7311.6698365714}
,U79B1EFA669C16E9B={DE='Diana Merridain', FR='Diana Merridain', EN='Diana Merridain', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7683.1198282689, y=915.1099795457, z=6264.9798599668}
,U79EFEE06438FCEF5={DE='Bruder Jebiah', FR='Frère Jebiah', EN='Brother Jebiah', scene={DE='Zährenbach', FR='Étendue de Chutelarme', EN='Tearfall Run'}, lvl=26, x=4608.7498969864, y=1106.579975266, z=2747.7799385823}
,U79FB63BE5774CA96={DE='Tio Akoban', FR='Tio Akobahn', EN='Tio Akobahn', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U7A1E9E5B4A80A4B9={DE='Harmonie', FR='Harmonie', EN='Harmony', scene={DE='Ruston', FR='Ruston', EN='Ruston'}, lvl=50}
,U7A32646020D4432A={DE='Karlson Serio', FR='Karlson Serio', EN='Karlson Serio', scene={DE='Geist von Rhaza\'de', FR='Esprit de Rhaza\'de', EN='Spirit of Rhaza\'de'}, lvl=15, x=6239.1698605437, y=892.63998004794, z=5340.2798806354}
,U7A3F76C1104442B4={DE='Arlooz', FR='Arlooz', EN='Arlooz', scene={DE='Spaltrachenweiher', FR='Mares de la Gueule-fendue', EN='Splitmouth Ponds'}, lvl=43, x=8580.3098082151, y=933.23997914046, z=7168.1798397787}
,U7A5BFEB033D3A1F1={DE='Orin Bancroft', FR='Orin Bancroft', EN='Orin Bancroft', scene={DE='Blutige Küsten', FR='Rivages Sanguins', EN='Sanguine Shores'}, lvl=10, x=6209.0198612176, y=831.43998141587, z=3866.5799135752}
,U7A72FCEF0F26DF64={DE='Jamal Fahnza', FR='Jamal Fahnza', EN='Jamal Fahnza', scene={DE='Leestein-Posten', FR='Pierre-sous-le-vent', EN='Leestone Stand'}, lvl=48, x=6735.7198494449, y=919.23997945338, z=7376.739835117}
,U7A7C087951A4A8E7={DE='Vimina Serilis', FR='Vimina Serilis', EN='Vimina Serilis', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=50}
,U0C449CFB4FC28E1D={DE='Campmeister Crosby', FR='Maître du campement Crosby', EN='Campmaster Crosby', lvl=50}
,U0C476457421DE92F={DE='Nendara Heklos', FR='Nendara Heklos', EN='Nendara Heklos', scene={DE='Übungshof', FR='La Cour d\'Entraînement', EN='The Training Yard'}, lvl=52, x=6048.8498647977, y=934.56997911073, z=5364.7298800889}
,U7AE2C3C44983FBE8={DE='Beobachter Beforezod', FR='Observateur Beforezod', EN='Watcher Beforezod', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=60, x=4616.4998968132, y=1235.8599723764, z=1542.5799655207}
,U7B090C2B00327392={DE='Abt Germet', FR='Abbé Germet', EN='Abbott Germet', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7463.3398331814, y=886.6199801825, z=3013.18993265}
,U7B1833116195B4DD={DE='Odo Mathari', FR='Odo Mathari', EN='Odo Mathari', scene={DE='Tagesblindhöhlen', FR='Vallon du Jour', EN='Dayblind Hollows'}, lvl=30, x=2807.3399372511, y=1284.7799712829, z=1887.3399578147}
,U7B21BAEE0E147ED9={DE='Ralyn Laurel', FR='Ralyn Laurel', EN='Ralyn Laurel', scene={DE='Granitwaldgegend', FR='Antre de Bois-Granite', EN='Granitewood Haunt'}, lvl=35}
,U7B28F39D72656434={DE='Brigadier Bavila', FR='Brigadier Bavila', EN='Brigadier Bavila', scene={DE='Wundwaldgrat', FR='Crête des Bois Meurtris', EN='Scarwood Ridge'}, lvl=31, x=4058.5999092832, y=1079.4899758715, z=4093.6099085007}
,U7B33E08D1E9C4A1F={DE='Darien Shale', FR='Darien Shale', EN='Darien Shale', scene={DE='Sinksumpf', FR='Marais Encaissé', EN='Sunken Marsh'}, lvl=12, x=7197.2198391296, y=871.71998051554, z=3026.3999323547}
,U7B3C2C6E75B5CA2F={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=38}
,U7B42D40364FFA78A={DE='Tekro Barkuul', FR='Tekro Barkuul', EN='Tekro Barkuul', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=40}
,U7B4EAD545093264A={DE='Donner', FR='Donner', EN='Donner', lvl=50}
,U7B55E275737A968F={DE='Lej Hunal', FR='Lej Hunal', EN='Lej Hunal', scene={DE='Steinhain', FR='Bosquet de pierre', EN='Stone Grove'}, lvl=31, x=3585.6299198549, y=1104.1699753199, z=3808.6899148691}
,U7B78438145C33897={DE='Krushik Eisenzeh', FR='Krushik Pied-de-fer', EN='Krushik Irontoe', scene={DE='Eiswachtgrat', FR='Crête de l\'Œil-glacé', EN='Icewatch Ridge'}, lvl=30, x=3422.7599234954, y=1278.7399714179, z=2418.109945951}
,U7B97B3B848CCFD63={DE='Josyr Mahndi', FR='Josyr Mahndi', EN='Josyr Mahndi', scene={DE='Scheuerschwallhafen', FR='Havre de Hurlegrain', EN='Gritsquall Haven'}, lvl=50, x=5587.9598750994, y=882.83998026699, z=6620.689852016}
,U7B9802940EFC9CEE={DE='Voddon Midlan', FR='Voddon Midlan', EN='Voddon Midlan', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U7B9E3E3D6D065AEB={DE='Adriana Weber', FR='Adriana Tisserand', EN='Adriana Weaver', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=4899.6698904838, y=1055.3799764104, z=5033.3698874954}
,U7BD4E60644828907={DE='Nal\'mora Quinim', FR='Nal\'mora Quinim', EN='Nal\'mora Quinim', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=30, x=3717.0499169175, y=1200.3299731705, z=1924.5699569825}
,U7BDC08D935830011={DE='Beobachter Isicar', FR='Observateur Isicar', EN='Watcher Isicar', scene={DE='Heulende Höhlen', FR='Grottes Mugissantes', EN='Howling Caves'}, lvl=34, x=3655.7600097656, y=1258.4899902344, z=1587.8499755859}
,U7BF5D7180FDC6CC9={DE='Wyn', FR='Wyn', EN='Wyn', scene={DE='Sanctumwacht', FR='Guet de Sanctum', EN='Sanctum Watch'}, lvl=52}
,U0C66151D0894B90B={DE='Ivitch Retsky', FR='Ivitch Retsky', EN='Ivitch Retsky', scene={DE='Phönixhöhe', FR='Butte du Phénix', EN='Phoenix Rise'}, lvl=50}
,U7C20FDF2016288BB={DE='Binini', FR='Binini', EN='Binini', lvl=50}
,U7C20FDF31258B388={DE='Kayani', FR='Kayani', EN='Kayani', lvl=50}
,U7C6C0D0260E13E29={DE='Nell Hara', FR='Nell Hara', EN='Nell Hara', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=52, x=7595.8798302189, y=856.57998085395, z=3029.3799322881}
,U0C75D3BD72D3F045={DE='Roflo Gluckschluck', FR='Roflo Gouleyant', EN='Roflo Glugshot', lvl=40}
,U7CC7D8150D5A4C00={DE='Xelos', FR='Xelos', EN='Xelos', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6583.6298528444, y=820.11998166889, z=4579.6298976373}
,U7CD0564122399198={DE='Defekter Bagger', FR='Excavateur détraqué', EN='Malfunctioning Excavator', scene={DE='Schlachtenfels', FR='Rocher de Frayworn', EN='Frayworn Rock'}, lvl=28}
,U7CDD2C623EC8D149={DE='Cyriac Leighton', FR='Cyriac Leighton', EN='Cyriac Leighton', scene={DE='Eliamfelder', FR='Champs d\'Eliam', EN='Eliam Fields'}, lvl=18, x=6459.539855618, y=848.21998104081, z=4859.4998913817}
,U7CF26A3468786357={DE='Bruder Jebiah', FR='Frère Jebiah', EN='Brother Jebiah', scene={DE='Ardenburgh-Tor', FR='Porte d\'Ardenburgh', EN='Ardenburgh Gate'}, lvl=5, x=1117.539975021, y=860.13998077437, z=1158.7799740992}
,U7CFFA3E0692E630B={DE='Koran', FR='Korgan', EN='Korgan', lvl=54}
,U7D03C4FE6BA6FFC6={DE='Arnalt Prell', FR='Arnalt Prell', EN='Arnalt Prell', lvl=40}
,U7D13096039EA05AD={DE='Ashor', FR='Ashor', EN='Ashor', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7647.8798290566, y=881.52998029627, z=6266.1998599395}
,U7D1DCA3303A744EE={DE='Virf', FR='Virf', EN='Virf', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=44}
,U7D3095667C0416C8={DE='Sylver Valis', FR='Sylver Valis', EN='Sylver Valis', lvl=52}
,U0C86248A17C428DE={DE='Darius', FR='Darius', EN='Darius', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52, x=13021.269708952, y=821.39998164028, z=3446.0799229741}
,U7D4E84704B52DAAD={DE='Tyrolianischer Bürger ', FR='Villageois Timothée', EN='Tyrolian Burgher ', scene={DE='Grollnarben-Damm', FR='Rive de Malentaille', EN='Spitescar Bank'}, lvl=35, x=8239.990234375, y=898.14996337891, z=6621.7197265625}
,U7D80D275681185C4={DE='Bram Weitschweifer', FR='Bram Pas-lointain', EN='Bram Farstrider', scene={DE='Heulende Höhlen', FR='Grottes Mugissantes', EN='Howling Caves'}, lvl=32}
,U7D9DDC375055F348={DE='Revern', FR='Revern', EN='Revern', scene={DE='Der Endlose Ansturm', FR='Assaut Sans Fin', EN='The Eternal Assault'}, lvl=54}
,U7DAD41331E5CA2EB={DE='Oblo Dreckpfanne', FR='Oblo Crustypot', EN='Oblo Crustypot', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=40}
,U7DF5EC5C7DDCA515={DE='Jenna Gemara', FR='Jenna Gemara', EN='Jenna Gemara', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6020.379865434, y=818.99998169392, z=3018.3599325344}
,U7E08BA5F203A4D01={DE='Cyril Kalmar', FR='Cyril Kalmar', EN='Cyril Kalmar', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7513.4898320604, y=888.66998013668, z=3049.7999318317}
,U7E48388F4AA14ACC={DE='Finius Feuchtstein', FR='Finius Wetstone', EN='Finius Wetstone', lvl=40}
,U7E5CE48F5D31E6F5={DE='Philobian Mikkarz', FR='Philobian Mikkarz', EN='Philobian Mikkarz', scene={DE='Denegars Stand', FR='Bastion de Denegar', EN='Denegar\'s Stand'}, lvl=18, x=7248.4998379834, y=876.05998041853, z=5418.8898788784}
,U7E6830AE71649A10={DE='Ramis Drehwurz', FR='Ramis Racine-tordue', EN='Ramis Twistroot', scene={DE='Sanctumwacht', FR='Guet de Sanctum', EN='Sanctum Watch'}, lvl=14, x=7184.899839405, y=871.71998051554, z=3033.1099322047}
,U0CA521D8510CD620={DE='Raesa Fentross', FR='Raesa Fentross', EN='Raesa Fentross', scene={DE='Thedeors Zirkel', FR='Cercle de Thedeor', EN='Thedeor\'s Circle'}, lvl=52}
,U7E75E1E0685D8B37={DE='Dolan Aschenläufer', FR='Dolan Marchecendres', EN='Dolan Ashwalker', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6094.3498637807, y=817.1399817355, z=3253.8699272703}
,U7E7782261231F04E={DE='Merry', FR='Merry', EN='Merry', lvl=50}
,U7E786817169EA06E={DE='Beobachter Natham', FR='Observateur Natham', EN='Watcher Natham', scene={DE='Eiswachtgrat', FR='Crête de l\'Œil-glacé', EN='Icewatch Ridge'}, lvl=34, x=3415.5499236565, y=1222.7199726701, z=1986.6399555951}
,U7E82085C178FFF14={DE='Anthon Eskar', FR='Anthon Eskar', EN='Anthon Eskar', scene={DE='Der Flachhof', FR='La Cour-plate', EN='The Flatyard'}, lvl=47, x=6760.009848902, y=929.86997921579, z=6526.5798541196}
,U0CA8BC790808533D={DE='Graf Nortage', FR='Graf Nortage', EN='Graf Nortage', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6067.179864388, y=817.29998173192, z=2978.2199334316}
,U7EDCF95255EA7162={DE='Mila Darina', FR='Mila Darina', EN='Mila Darina', scene={DE='Hochalm-Ausblick', FR='Poste de Guet des Hautes-Clairières', EN='Highglades Lookout'}, lvl=16, x=6571.6298531126, y=839.81998122856, z=2776.8999379314}
,U7EEB470A10F6B54D={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', scene={DE='Räuberklippe', FR='Falaise du Brigand', EN='Brigand\'s Bluff'}, lvl=44}
,U7F1C01DF5EB9CADC={DE='Fürst Viktor Striblud', FR='Seigneur Viktor Striblud', EN='Lord Viktor Striblud', scene={DE='Wolfsbann', FR='Aconit', EN='Wolfsbane'}, lvl=50}
,U7F2D56B15456778E={DE='Jerome Drift', FR='Jérôme Drift', EN='Jerome Drift', scene={DE='Quecksilber-Akademie', FR='Académie de Vif-Argent', EN='Quicksilver College'}, lvl=10, x=5940.2198672257, y=812.17998184636, z=3045.0899319369}
,U0CBB581A79E9C2CB={DE='Gwen Stillwasser', FR='Gwen Eaucalme', EN='Gwen Stillwater', scene={DE='Wundwald-Lift, Basis', FR='Pied de l\'Ascenseur des Bois Meurtris', EN='Scarwood Lift Base'}, lvl=26}
,U0CBC1D597985D288={DE='Kora Firis', FR='Kora Firis', EN='Kora Firis', scene={DE='Höllenfelder', FR='Vallée de Larmes', EN='Fell Fields'}, lvl=52}
,U7F62DE454C8B3CE8={DE='Tassalia Ogron', FR='Tassalia Ogron', EN='Tassalia Ogron', scene={DE='Grollnarben-Damm', FR='Rive de Malentaille', EN='Spitescar Bank'}, lvl=35, x=8232.5400390625, y=896.69000244141, z=6637.919921875}
,U7F6A37646DB0180B={DE='Zenre Palux', FR='Zenre Palux', EN='Zenre Palux', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8}
,U7F8B54AC77BDDC74={DE='Dame Levitia Volya', FR='Dame Levitia Volya', EN='Dame Levitia Volya', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=32, x=3733.759916544, y=1196.1399732642, z=1906.5299573857}
,U7F92D8D87FE3BEEE={DE='Razeed Vithalis', FR='Razeed Vithalis', EN='Razeed Vithalis', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=52, x=5943.1798671596, y=916.4699795153, z=5266.2598822899}
,U7FBC705029D07F6D={DE='Lord Nicols', FR='Seigneur Nicols', EN='Lord Nicols', scene={DE='Königliches Refugium', FR='Retraite du Roi', EN='King\'s Retreat'}, lvl=10, x=6271.1498598289, y=839.4199812375, z=4559.4098980892}
,U7FC1B75E2E1FB946={DE='Qien Kiri', FR='Qien Kiri', EN='Qien Kiri', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60, x=13093.939707328, y=906.44997973926, z=11526.509742362}
,U7FDA2A342E6F8F82={DE='Leutnant Yillasia', FR='Lieutenant Yillasia', EN='Lieutenant Yillasia', lvl=50}
,U7FDEBE055CE893E7={DE='Toter Geist', FR='Esprit mort', EN='Dead Spirit', scene={DE='Der Würgwald', FR='Asphyksylve', EN='The Stranglewood'}, lvl=52}
,U7FE2B9961AE65F00={DE='Peligren Tice', FR='Peligren Tice', EN='Peligren Tice', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6052.7598647103, y=817.29998173192, z=2990.2299331632}
,U7FF54CBF7D9A1435={DE='Marschall Kain', FR='Maréchal Kain', EN='Marshal Kain', scene={DE='Königsbresche', FR='Chambre de la Brèche', EN='Breach Chamber'}, lvl=40}
,U014B085D492430F9={DE='Palometa', FR='Palometa', EN='Palometa', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6580.2098529208, y=820.23998166621, z=4580.4698976185}
,U0D03E32C06CA5515={DE='Mavin Jonston', FR='Mavin Jonston', EN='Mavin Jonston', scene={DE='Heulende Höhlen', FR='Grottes Mugissantes', EN='Howling Caves'}, lvl=32, x=3653.4299316406, y=1258.6799316406, z=1585.1099853516}
,U0D0B09283CC8A81B={DE='Hüter Elios', FR='Phalange Elios', EN='Keeper Elios', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52}
,U0D1C732510D30B89={DE='Gezeitenweberin Gelaine', FR='Tisseuse de Marées Gelaine', EN='Tideweaver Gelaine', scene={DE='See des Trostes', FR='Lac de la Consolation', EN='Lake of Solace'}, lvl=50}
,U0D24E27516C50271={DE='Kirsten Jones', FR='Kirsten Jones', EN='Kirsten Jones', scene={DE='Hammerfürst-Posten', FR='Poste de Fiefmarteau', EN='Hammerlord Post'}, lvl=39}
,U0D32055F7C21A695={DE='John Tintan', FR='John Tintan', EN='John Tintan', lvl=50}
,U0D5FC7493F4CCCB1={DE='Tristan Alecourt', FR='Tristan Alecourt', EN='Tristan Alecourt', scene={DE='Hochalm-Ausblick', FR='Poste de Guet des Hautes-Clairières', EN='Highglades Lookout'}, lvl=13, x=6576.399853006, y=839.81998122856, z=2780.5999378487}
,U0D6C551553C190EE={DE='Skeptiker-Botin', FR='Messager des Renégats', EN='Defiant Messenger', lvl=60}
,U015DFB1E13F57038={DE='Lynea Sanos', FR='Lynea Sanos', EN='Lynea Sanos', lvl=50}
,U0DC1F6422E0A41DD={DE='Väterchen Frost', FR='Patriarche de l\'hiver', EN='Greatfather Frost', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U0DD3AECE37B29A57={DE='Nonna Mastassia', FR='Nonna Mastassia', EN='Nonna Mastassia', scene={DE='Cestuslager', FR='Camp Cestus', EN='Camp Cestus'}, lvl=35, x=3347.659925174, y=1086.8099757079, z=3567.1099202689}
,U0E1D8B37017A9A48={DE='Hoffan Eisenfalle', FR='Hoffan Irontrap', EN='Hoffan Irontrap', scene={DE='Falkenruf-Klamm', FR='Ravin de Cri-Crécerelle', EN='Kestrel\'s Cry Ravine'}, lvl=30, x=3122.2999302112, y=1201.3299731482, z=2074.8199536242}
,U0E21460C6B40346A={DE='Dimitri Bazidar', FR='Dimitri Bazidar', EN='Dimitri Bazidar', scene={DE='Wundwald-Lift, Bergstation', FR='Sommet de l\'Ascenseur des Bois Meurtris', EN='Scarwood Lift Summit'}, lvl=31, x=4159.539907027, y=1052.4499764759, z=4111.8999080919}
,U0E29662416477C3E={DE='Ignacia Bulwart', FR='Ignacia Bulwart', EN='Ignacia Bulwart', scene={DE='Endlicht', FR='Dernière Lueur', EN='Lastlight'}, lvl=5, x=604.33998649195, y=37.83999915421, z=1016.0199772902}
,U0E5525B92F68428E={DE='Ilya Matriosha', FR='Ilya Matriosha', EN='Ilya Matriosha', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3656.6599182673, y=1097.6799754649, z=4456.4999003895}
,U0E671789649863BD={DE='Misty Azzara', FR='Misty Azzara', EN='Misty Azzara', lvl=50}
,U0E7922511F3849E0={DE='Agrippina Iakova', FR='Agrippina Iakova', EN='Agrippina Iakova', scene={DE='Scharfklingenmühle', FR='Moulin de Vivelame', EN='Keenblade Mill'}, lvl=32, x=3767.4999157898, y=1095.1199755222, z=4089.3299085964}
,U0E912CAF2AAA719A={DE='Sergeant Revik', FR='Sergent Revik', EN='Sergeant Revik', scene={DE='Steinhain', FR='Bosquet de pierre', EN='Stone Grove'}, lvl=31, x=3592.3199197054, y=1105.4799752906, z=3791.6699152496}
,U0E9B9DAD6E97C422={DE='Sern', FR='Sern', EN='Sern', lvl=52, x=6056.1098646354, y=934.57997911051, z=5351.5698803831}
,U0176F0D64ACBCB42={DE='Amado Asanu', FR='Amado Asanu', EN='Amado Asanu', scene={DE='Geist von Rhaza\'de', FR='Esprit de Rhaza\'de', EN='Spirit of Rhaza\'de'}, lvl=50, x=6227.1798608117, y=892.65998004749, z=5342.2998805903}
,U0EB29B496212EAD8={DE='Furtho Dragomir', FR='Furtho Dragomir', EN='Furtho Dragomir', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26, x=5258.4798824638, y=987.02997793816, z=3072.2799313292}
,U0EB51A6E160B4233={DE='Botin der Vigilie', FR='Messagère des Veilleurs', EN='Messenger of the Vigil', scene={DE='Wachsame Höhen', FR='Butte du Vigilant', EN='Vigilant Rise'}, lvl=52, x=1061.0499762837, y=870.98998053186, z=919.68997944333}
,U0EBB578A532BF380={DE='Redras Voltan', FR='Redras Voltan', EN='Redras Voltan', scene={DE='Wundwald-Lift, Basis', FR='Pied de l\'Ascenseur des Bois Meurtris', EN='Scarwood Lift Base'}, lvl=28, x=4579.3698976431, y=921.78997939639, z=4393.4099017996}
,U0EC105DD1BEC2513={DE='Weghüter Valin', FR='Garde-voie Valin', EN='Waykeeper Valin', scene={DE='Seidennetzpass', FR='Chemin de Toilensoie', EN='Silkweb Pass'}, lvl=26, x=5677.5098730978, y=982.61997803673, z=3425.8599234261}
,U0ED51DC86AD69C79={DE='Gurvin Amorae', FR='Gurvin Amorae', EN='Gurvin Amorae', lvl=60}
,U0EFB3A1A75355CF2={DE='Kermis Verdon', FR='Kermis Verdon', EN='Kermis Verdon', scene={DE='Arche der Auserwählten', FR='Arche des Élus', EN='Ark of the Ascended'}, lvl=10, x=6225.9498608392, y=821.41998163983, z=4391.6599018387}
,U0F0CDEFF3C9DCC3B={DE='Teresa', FR='Teresa', EN='Teresa', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=50}
,U0F131A257D84D0A0={DE='Carmichael Klumpfuß', FR='Carmichael le Pied-bot', EN='Carmichael the Clubfoot', lvl=50}
,U0F1D15586696BA42={DE='Zhanna Sergei', FR='Zhanna Sergei', EN='Zhanna Sergei', scene={DE='Letzte Hoffnung', FR='Dernier espoir', EN='Last Hope'}, lvl=35}
,U0184E047382113E3={DE='Hondo Abasi', FR='Hondo Abasi', EN='Hondo Abasi', scene={DE='Khaliti-Zeile', FR='Passage des Khalitis', EN='Khaliti Row'}, lvl=46, x=6886.9598460644, y=885.72998020239, z=6941.5498448443}
,U0F35FB1C7448BE5A={DE='Tekro Barkuul', FR='Tekro Barkuul', EN='Tekro Barkuul', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=40}
,U0F5BD019052A8C44={DE='Corius Dwain', FR='Corius Dwain', EN='Corius Dwain', lvl=50}
,U018CA14D34D43B20={DE='Lennith', FR='Lennith', EN='Lennith', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=20, x=6044.0298649054, y=920.92997941561, z=5246.7198827267}
,U0FCD909B4ABB28A9={DE='Fayne Doran', FR='Fayne Doran', EN='Fayne Doran', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7457.3098333161, y=885.71998020262, z=3040.3199320436}
,U0FD4687566D6AFC6={DE='Eudona Ghoras', FR='Eudona Ghoras', EN='Eudona Ghoras', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52, x=13045.549708409, y=822.13998162374, z=3439.9299231116}
,U1017D4807DE4BA0A={DE='Enrinke Shinuas', FR='Enrinke Shinuas', EN='Enrinke Shinuas', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50, x=6080.3998640925, y=920.92997941561, z=5135.8098852057}
,U1040B9905B29D72E={DE='Nelise Heddan', FR='Nelise Heddan', EN='Nelise Heddan', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52, x=13050.659708295, y=821.85998163, z=3435.7999232039}
,U104E6D9104565B8E={DE='Crim Tinshin', FR='Crim Tinshin', EN='Crim Tinshin', scene={DE='Lager Klüngel', FR='Camp de la Coterie', EN='Coterie Camp'}, lvl=22, x=5682.8798729777, y=1080.2999758534, z=5122.9898854923}
,U105A6D7719DBE336={DE='Eliams Geist', FR='Fantôme d\'Eliam', EN='Eliam\'s Ghost', scene={DE='Eisengrab', FR='Tombe de Fer', EN='Iron Tomb'}, lvl=19}
,U1084D4EB1FB2A3DD={DE='Eminia Andre', FR='Eminia Andre', EN='Eminia Andre', scene={DE='Der Turm der Weisen', FR='L\'Aiguille du Sage', EN='The Sagespire'}, lvl=34, x=2601.5799418502, y=1180.9099736046, z=3569.5599202141}
,U109B79E0733CFAEB={DE='Marius Venden', FR='Marius Venden', EN='Marius Venden', scene={DE='Grammaton-Station', FR='Station de Gramaton', EN='Gramaton Station'}, lvl=19, x=6864.2598465718, y=880.11998032779, z=5687.0898728836}
,U109F9B385E3ED9C4={DE='Braellia Taviri', FR='Braellia Taviri', EN='Braellia Taviri', scene={DE='Geist von Rhaza\'de', FR='Esprit de Rhaza\'de', EN='Spirit of Rhaza\'de'}, lvl=52}
,U10C22B043040F421={DE='Sergeant Seful', FR='Sergent Seful', EN='Sergeant Seful', lvl=40, x=6376.6698574703, y=913.25997958705, z=1769.7999604419}
,U01B0CFE1308ED775={DE='Jerome Drift', FR='Jérôme Drift', EN='Jerome Drift', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=38}
,U10F4107F31B06322={DE='Athani Mitternacht', FR='Athani Minuit', EN='Athani Midnight', scene={DE='Lothams Schlag', FR='Bosquet de Lotham', EN='Lotham\'s Strike'}, lvl=35, x=3821.089914592, y=1097.4299754705, z=4524.3298988733}
,U1101AC5508BC666A={DE='Tristen Altenny', FR='Tristen Altenny', EN='Tristen Altenny', scene={DE='Wachtschlucht', FR='Descente du Garde', EN='Warden\'s Descent'}, lvl=50}
,U002B8E313866FC96={DE='Antern Semeaus', FR='Antern Semeaus', EN='Antern Semeaus', scene={DE='Kheramos', FR='Village de Kheramos', EN='Kheramos Village'}, lvl=52}
,U11462F3D355CB5C5={DE='Drego Kreminir', FR='Drego Kreminir', EN='Drego Kreminir', scene={DE='Wachtschlucht', FR='Descente du Garde', EN='Warden\'s Descent'}, lvl=50}
,U116FD7EB3DA7E066={DE='Fürst Nerat', FR='Seigneur Nerat', EN='Lord Nerat', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60, x=12948.009710589, y=902.12997983582, z=11576.399741247}
,U01C1F17B69022E53={DE='Leutnant Yillasia', FR='Lieutenant Yillasia', EN='Lieutenant Yillasia', lvl=50, x=7434.4898338262, y=904.39997978508, z=3048.1499318685}
,U119F7D7F585A1558={DE='Sereborn', FR='Sereborn', EN='Sereborn', scene={DE='Der Schlund', FR='Agonie', EN='The Crawl'}, lvl=54}
,U11A2780A2F865470={DE='Atrophinius', FR='Atrophinius', EN='Atrophinius', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U11AFB5F042C37BCD={DE='Renwhist Coverdale', FR='Renwhist Coverdale', EN='Renwhist Coverdale', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=52, x=7428.6298339572, y=863.70998069458, z=2988.6799331978}
,U11B3076717F00200={DE='Gerta von Fernhall', FR='Gerta de Foyer-Lointain', EN='Gerta of Farhall', lvl=60}
,U11B70ED260C4439B={DE='Nachri Jucam', FR='Nachri Jucam', EN='Nachri Jucam', scene={DE='Nomadenofen', FR='Fournaise du Nomade', EN='Nomad\'s Furnace'}, lvl=44, x=6992.8998436965, y=886.25998019055, z=7069.2598419897}
,U11DC56B90147B1C0={DE='Kaspar Massi', FR='Kaspar Massi', EN='Kaspar Massi', scene={DE='Holzflor', FR='Voilebois', EN='Timberveil'}, lvl=37, x=5476.6098775882, y=975.56997819431, z=2163.2599516474}
,U1202076961EE642F={DE='Reva Song', FR='Reva Song', EN='Reva Song', scene={DE='Die Kanäle', FR='Les Canaux', EN='The Canals'}, lvl=60, x=12769.169714587, y=855.39998088032, z=11598.059740763}
,U120B9C592F754D56={DE='Shyla Sternfeuer', FR='Shyla du Foyer Étoilé', EN='Shyla Starhearth', scene={DE='Runental', FR='Descente runique', EN='Runic Descent'}, lvl=40}
,U12735ED2244468B7={DE='Marschall Onsorg', FR='Maréchal Onsorg', EN='Marshal Onsorg', scene={DE='Thedeors Zirkel', FR='Cercle de Thedeor', EN='Thedeor\'s Circle'}, lvl=52, x=7408.9998343959, y=863.5299806986, z=2911.9699349124}
,U128405477F11C7E5={DE='Adalia Merril', FR='Adalia Merril', EN='Adalia Merril', scene={DE='Laternenplateau', FR='Plateau de Lanterne', EN='Lantern Plateau'}, lvl=35, x=7384.7798349373, y=913.81997957453, z=6196.2798615023}
,U12B1D49526C32A98={DE='Moya', FR='Moya', EN='Moya', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7644.819829125, y=881.52998029627, z=6267.879859902}
,U12E0C22B7857756C={DE='Bok das Schielauge', FR='Bok le Louche', EN='Bokk the Squint-Eye', lvl=50}
,U01E712C8146F438E={DE='Hauptmann Toria', FR='Capitaine Toria', EN='Captain Toria', lvl=50}
,U1310897164F9BAA6={DE='Sanora Rellwyn', FR='Sanora Rellwyn', EN='Sanora Rellwyn', scene={DE='Arche der Auserwählten', FR='Arche des Élus', EN='Ark of the Ascended'}, lvl=10, x=6159.5898623224, y=821.57998163626, z=4400.3899016436}
,U133F836567D0F7D4={DE='Moose', FR='Élan', EN='Moose', scene={DE='Jägerlager', FR='Camp des chasseurs', EN='Hunters\' Camp'}, lvl=42, x=8528.8598093651, y=940.32997898199, z=6631.829851767}
,U1342954A69B091D9={DE='Hellen Terrellis', FR='Hellen Terrellis', EN='Hellen Terrellis', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=28, x=3850.7199139297, y=976.21997817978, z=3043.8999319635}
,U13550A2B658C008E={DE='Rurik', FR='Rurik', EN='Rurik', scene={DE='Große Bibliothek', FR='Grande Bibliothèque', EN='Great Library'}, lvl=50, x=4572.5, y=1227.9899902344, z=1561.5899658203}
,U1361DD301FBF8A3A={DE='Varian Lofte', FR='Varian Lofte', EN='Varian Lofte', scene={DE='Seidennetzpass', FR='Chemin de Toilensoie', EN='Silkweb Pass'}, lvl=23, x=5908.1998679414, y=934.88997910358, z=3810.5399148278}
,U13A4DDC91D5A9CFA={DE='Kleeg Steinbrecher', FR='Kleeg Cassepierre', EN='Kleeg Stonebreaker', scene={DE='Die Manufaktur', FR='La Manufacture', EN='The Manufactory'}, lvl=52}
,U13A550956E53659C={DE='Garig Nitmer', FR='Garig Nitmer', EN='Garig Nitmer', scene={DE='Tapferkeitsfeste', FR='Bastion des Braves', EN='Valor Hold'}, lvl=5, x=1024.2299771067, y=838.17998126522, z=1077.8299759086}
,U13B6947A614C77E7={DE='Herold der Helden', FR='Messager des héros', EN='Herald of Heroes', lvl=52}
,U13C8124C4DF5C32A={DE='Legionär Amiruth', FR='Légionnaire Amiruth', EN='Legionnaire Amiruth', lvl=50}
,U13C8E15032F73934={DE='Soldat Yannis', FR='Soldat Yannis', EN='Private Yannis', scene={DE='Flussfels', FR='Chute-rivière', EN='Riverfell'}, lvl=28}
,U13E19F3B6F3CF28A={DE='Kaspar Massi', FR='Kaspar Massi', EN='Kaspar Massi', scene={DE='Tiefschlagmine', FR='Mines de Couprofond', EN='Deepstrike Mines'}, lvl=50}
,U13ECFEB35C44019A={DE='Schildwache Enthea', FR='Sentinelle Enthea', EN='Sentinel Enthea', scene={DE='Frosttal', FR='Vallée gelée', EN='Frozen Valley'}, lvl=32, x=4192.289906295, y=1292.6399711072, z=1471.6999671049}
,U141080493C17BFCF={DE='Clark Stamp', FR='Clark Stamp', EN='Clark Stamp', scene={DE='Ritterhöhe', FR='Avancée du Croisé', EN='Crusader\'s Advance'}, lvl=50}
,U141F50801B082C74={DE='Pela Fashine', FR='Pela Fashine', EN='Pela Fashine', scene={DE='Sturmposten', FR='Poste de la Tempête', EN='Tempest Station'}, lvl=5, x=645.22998557799, y=29.549999339506, z=853.60998092033}
,U1425EA2B4D02EA31={DE='Gregory Bartnell', FR='Gregory Bartnell', EN='Gregory Bartnell', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3165.9399292357, y=1095.0899755228, z=3873.96991341}
,U1429187653D0E878={DE='Illestro Thindel', FR='Illestro Thindel', EN='Illestro Thindel', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6567.6198532023, y=823.59998159111, z=4599.7998971865}
,U1430E93C1DE65DEF={DE='Liel Maiwetter', FR='Liel Temps-de-mai', EN='Liel Mayweather', scene={DE='Prüfung der Schildwache', FR='Épreuve de la Sentinelle', EN='Trial of the Sentinel'}, lvl=50}
,U143B6EBD2BE41028={DE='Len Hallis', FR='Sentinelle Hallis', EN='Sentinel Hallis', scene={DE='Weißfall-Passage', FR='Passage des Chutes blanches', EN='Whitefall Passage'}, lvl=30, x=4318.3799034767, y=1225.5899726059, z=2208.2799506411}
,U145B7FB645B6B4FC={DE='Atrophinius', FR='Atrophinius', EN='Atrophinius', lvl=52}
,U020AA6377BB8E316={DE='Kardinal Esthousen', FR='Cardinal Esthousen', EN='Cardinal Esthousen', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=52}
,U147065E82BD38D22={DE='Fahad Muti', FR='Fahad Muti', EN='Fahad Muti', scene={DE='Wetzkante', FR='Corniche Érodée', EN='Scoured Ledge'}, lvl=48}
,U14B586DD62BC2DB5={DE='Ralph Bonser', FR='Ralph Bonser', EN='Ralph Bonser', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6037.739865046, y=832.29998139665, z=3123.3999301866}
,U14D60ECE1385711A={DE='Berthold Stronn', FR='Berthold Stronn', EN='Berthold Stronn', scene={DE='Silberhöhen', FR='Monts Solides', EN='Sterling Hills'}, lvl=9, x=6203.319861345, y=831.02998142503, z=3842.6799141094}
,U14F3B23E1E3713E3={DE='Laria', FR='Laria', EN='Laria', scene={DE='Knorzwaldposten', FR='Poste de Bois-noueux', EN='Gnarlwood Post'}, lvl=25, x=5409.3098790925, y=959.6299785506, z=2648.9999407902}
,U14FC9586103A9D90={DE='Magnus Lucklum', FR='Magnus Lucklum', EN='Magnus Lucklum', scene={DE='Abgründige Kluft', FR='Précipice abyssal', EN='Abyssal Precipice'}, lvl=50}
,U150DF22574E51E46={DE='Catelyn Silera', FR='Catelyn Silera', EN='Catelyn Silera', scene={DE='Göttlicher Anlegeplatz', FR='Débarcadère Divin', EN='Divine Landing'}, lvl=19}
,U1544104155B16C95={DE='Corbin Wembley', FR='Corbin Wembley', EN='Corbin Wembley', scene={DE='Nomadenofen', FR='Fournaise du Nomade', EN='Nomad\'s Furnace'}, lvl=44, x=7010.7598432973, y=886.28998018987, z=7082.2498416994}
,U1551608A1BF1B383={DE='Boularna', FR='Boularna', EN='Boularna', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=20}
,U1552784227896486={DE='Hakeem Kedar', FR='Hakeem Kedar', EN='Hakeem Kedar', scene={DE='Mondscheinhöhle', FR='Creux du Lever de la Lune', EN='Moonrise Hollow'}, lvl=50}
,U1558F5E1110C0046={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Höhle des Kwell', FR='Antre de Kwell', EN='Den of Kwell'}, lvl=59}
,U158658D50429F87F={DE='Zoss Mikhin', FR='Zoss Mikhin', EN='Zoss Mikhin', scene={DE='Üppige Wildnis', FR='Luxurya', EN='Abundant Wilds'}, lvl=52}
,U159277407C6860AC={DE='Planar Challenger', FR='Planar Challenger', EN='Planar Challenger', lvl=60}
,U15ACC6310008C1E7={DE='John Tintan', FR='John Tintan', EN='John Tintan', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26, x=5209.1098835673, y=943.64997890778, z=3138.7599298432}
,U15AF83604F4DE562={DE='Adjo', FR='Adjo', EN='Adjo', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6586.3998527825, y=820.12998166867, z=4580.089897627}
,U15B840133FE34DAA={DE='Spezialist Hobson', FR='Saboteur Hobson', EN='Specialist Hobson', scene={DE='Scharfklingenmühle', FR='Moulin de Vivelame', EN='Keenblade Mill'}, lvl=31, x=3834.2199142985, y=1107.7699752394, z=3857.8399137706}
,U15BF6E283C2D5B26={DE='Hauptmann Rotherdan', FR='Capitaine Rotherdan', EN='Captain Rotherdan', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26, x=5128.1698853765, y=946.44997884519, z=3196.1299285609}
,U15CA6AD54CFBD609={DE='Keldan', FR='Keldan', EN='Keldan', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1612.9199639484, y=1073.7599759996, z=2631.3299411852}
,U0231BC645D37A980={DE='Taohla Veruun', FR='Taohla Veruun', EN='Taohla Veruun', lvl=60}
,U1625F73C2E866455={DE='Jahan Rizel', FR='Jahan Rizel', EN='Jahan Rizel', scene={DE='Flussufer-Abkürzung', FR='Raccourci de la Rive', EN='Riverbank Cutoff'}, lvl=35, x=7163.2598398887, y=889.51998011768, z=5962.3298667315}
,U02377A55771F5D4F={DE='Hauptmann Ledisko', FR='Capitaine Ledisko', EN='Captain Ledisko', scene={DE='Knochenberster-Canyon', FR='Canyon des Fracasseurs', EN='Shatterbone Canyon'}, lvl=35, x=3176.439929001, y=999.66997765563, z=3494.3199218959}
,U162ECF29706405AD={DE='Erikka Khemmerlund', FR='Erikka Khemmerlund', EN='Erikka Khemmerlund', scene={DE='Seherweisen-Lager', FR='Camp de Sage-voyant', EN='Seersage Camp'}, lvl=38, x=6098.7398636825, y=915.68997953273, z=2021.229954822}
,U16469779648F5245={DE='Galfor Noram', FR='Galfor Noram', EN='Galfor Noram', scene={DE='Lebensfabrik', FR='Usine de la Vie', EN='Life Factory'}, lvl=5}
,U1679042A7CBA60E1={DE='Hüterin Menra', FR='Phalange Menra', EN='Keeper Menra', scene={DE='Kheramos', FR='Village de Kheramos', EN='Kheramos Village'}, lvl=52}
,U168481C90574B403={DE='Dolton Vraat', FR='Dolton Vraat', EN='Dolton Vraat', lvl=50}
,U16989EE31232AB7A={DE='Alira Ezrel', FR='Alira Ezrel', EN='Alira Ezrel', scene={DE='Seherweisen-Lager', FR='Camp de Sage-voyant', EN='Seersage Camp'}, lvl=38, x=6092.1098638307, y=915.1499795448, z=2021.9299548063}
,U16A16C3D6221891B={DE='Alee Nassar', FR='Alee Nassar', EN='Alee Nassar', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=45, x=6649.369851375, y=879.77998033538, z=6990.9798437394}
,U16AAF3FE27D3C087={DE='Donal Sumptor', FR='Donal Sumptor', EN='Donal Sumptor', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U16B7302D37AC3B46={DE='Erik Valinez', FR='Erik Valinez', EN='Erik Valinez', scene={DE='Scharfklingenmühle', FR='Moulin de Vivelame', EN='Keenblade Mill'}, lvl=32, x=3819.0999146365, y=1120.1899749618, z=3687.7399175726}
,U16C931A842425460={DE='Maristen Crow', FR='Maristen Corneille', EN='Maristen Crow', scene={DE='Wachtschlucht', FR='Descente du Garde', EN='Warden\'s Descent'}, lvl=50}
,U16D9DA1311375FB9={DE='Gendi Holis', FR='Gendi Holis', EN='Gendi Holis', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6558.4298534077, y=823.70998158865, z=4597.9598972276}
,U16EC27942251E0FC={DE='Außenposten-Quartiermeister', FR='Intendant de l\'avant-poste', EN='Outpost Quartermaster', lvl=50}
,U1701570218F944CD={DE='Sir Martyn Myrsol', FR='Sire Martyn Myrsol', EN='Sir Martyn Myrsol', scene={DE='Knochenberster-Bastion', FR='Trou des Fracasseurs', EN='Shatterbone Hold'}, lvl=35, x=3205.1099283602, y=1094.2999755405, z=3365.7299247701}
,U024EC785528CE7B1={DE='Teldre', FR='Teldre', EN='Teldre', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=20, x=7371.5998352319, y=872.49998049811, z=3044.7099319454}
,U174CB17314CCFC3E={DE='Jerrol Brechan', FR='Jerrol Brechan', EN='Jerrol Brechan', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U1762D72B3584803E={DE='Doris Fedinar', FR='Doris Fedinar', EN='Doris Fedinar', scene={DE='Dreienquell', FR='Trois-Sources', EN='Three Springs'}, lvl=37, x=7273.569837423, y=877.56998038478, z=2133.0199523233}
,U1770CD0629E8FFF2={DE='Lelani Ponlai', FR='Lelani Ponlai', EN='Lelani Ponlai', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3666.37991805, y=1097.6799754649, z=4433.5599009022}
,U025B6D1A0E81B557={DE='Ulana Yonolus', FR='Ulana Yonolus', EN='Ulana Yonolus', scene={DE='Nykantor-Ruinen', FR='Ruines de Nykantor', EN='Nykantor Ruins'}, lvl=52}
,U179271CD1F4819BD={DE='Dargo', FR='Dargo', EN='Dargo', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1611.5399639793, y=1073.7899759989, z=2625.9099413063}
,U025DCEB11F3C1239={DE='Gustav', FR='Gustav', EN='Gustav', scene={DE='Kahlschlägerlager', FR='Emprise du Récupérateur', EN='Reclaimer\'s Hold'}, lvl=40, x=6348.2698581051, y=903.87997979671, z=1654.1299630273}
,U17B0E7C20D00A91C={DE='Hadrik Renlo', FR='Hadrik Renlo', EN='Hadrik Renlo', scene={DE='Brutwacht-Posten', FR='Poste de la Veillée', EN='Broodwatch Post'}, lvl=35, x=7683.2397460938, y=911.17999267578, z=6647.2797851563}
,U17B453725C41D57C={DE='Bialar', FR='Bialar', EN='Bialar', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=28, x=4472.179900039, y=1235.9699723739, z=1654.1199630275}
,U17B78A0F08EC4D7D={DE='Seruldu Elhar', FR='Seruldu Elhar', EN='Seruldu Elhar', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50}
,U17CB2ADC49572542={DE='Hauptmann Ledisko', FR='Capitaine Ledisko', EN='Captain Ledisko', scene={DE='Heulendes Plateau', FR='Plateau Mugissant', EN='Howling Plateau'}, lvl=31, x=3614.5399192087, y=1105.0999752991, z=3509.3199215606}
,U17DEBE56228D3A7E={DE='Koryphäe Yentia', FR='Yentia la Sommité', EN='Luminary Yentia', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=60, x=4554.8698981907, y=1236.1299723703, z=1612.9599639475}
,U17DFD49249456D60={DE='Edmic Berizan', FR='Edmic Berizan', EN='Edmic Berizan', scene={DE='Ewige Wacht', FR='Garde Éternelle', EN='Endless Watch'}, lvl=50, x=2630.2999412082, y=1232.4499724526, z=3032.7799322121}
,U181BF96D117716F3={DE='Elysia Raymund', FR='Elysia Raymund', EN='Elysia Raymund', scene={DE='Die Egge', FR='La Tourmente', EN='The Harrow'}, lvl=25}
,U1820AE1A074B0DA6={DE='Orphiel Fernwind', FR='Orphiel Vent-lointain', EN='Orphiel Farwind', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=52, x=5985.9498662036, y=1025.379977081, z=5135.5898852106}
,U186AA7A66208ED93={DE='Javor Konjovic', FR='Javor Konjovic', EN='Javor Konjovic', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1626.5899636429, y=1075.8099759538, z=2639.7099409979}
,U186CEF5C4AB3E0BD={DE='Alys Weißschild', FR='Alys Ecublanc', EN='Alys Whiteshield', lvl=50}
,U186DC1D6050DDD2A={DE='Marschall Willa', FR='Maréchal Willa', EN='Marshal Willa', scene={DE='Thedeors Zirkel', FR='Cercle de Thedeor', EN='Thedeor\'s Circle'}, lvl=52, x=7408.5198344067, y=863.5299806986, z=2907.2199350186}
,U0276E6A85EA17CB3={DE='Su\'kia', FR='Su\'kia', EN='Su\'kia', scene={DE='Seemannstorheit', FR='Folie du marin', EN='Seafarer\'s Folly'}, lvl=46}
,U18EE4B222B58BE1C={DE='Sergeant Faid', FR='Sergent Faid', EN='Sergeant Faid', scene={DE='Seidennetzpass', FR='Chemin de Toilensoie', EN='Silkweb Pass'}, lvl=24, x=5925.3898675572, y=933.02997914515, z=3795.4599151649}
,U190735566758306E={DE='Kardinal Radkevyev', FR='Cardinal Radkevyev', EN='Cardinal Radkevyev', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=52}
,U1907DE8C69725616={DE='Effrin Shane', FR='Effrin Shane', EN='Effrin Shane', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7658.1698288266, y=915.00997954793, z=6262.7598600164}
,U1908445042381169={DE='Mertin Latharn', FR='Mertin Latharn', EN='Mertin Latharn', lvl=50}
,U190C06A93E30B7CB={DE='Sylver Valis', FR='Sylver Valis', EN='Sylver Valis', scene={DE='Glutrand', FR='Gouffre Incandescent', EN='Searing Brink'}, lvl=52}
,U1918388230C6E124={DE='Mann ohne Gesicht', FR='Homme sans visage', EN='Faceless Man', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=35}
,U1992AEF41E5A52CF={DE='Walt Makee', FR='Walt Makee', EN='Walt Makee', scene={DE='Bahralt-Straße', FR='Rue Bahralt', EN='Bahralt Street'}, lvl=52, x=7399.7998346016, y=863.5299806986, z=3007.9899327662}
,U19AFFFCB59E38672={DE='Jared Cliff', FR='Jared Cliff', EN='Jared Cliff', scene={DE='Wundwald-Lift, Basis', FR='Pied de l\'Ascenseur des Bois Meurtris', EN='Scarwood Lift Base'}, lvl=28, x=4614.0998968668, y=921.90997939371, z=4387.7799019255}
,U19E3BBC61E8F21D2={DE='Tahmus Dolbe', FR='Tahmus Dolbe', EN='Tahmus Dolbe', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=5007.529888073, y=1057.4299763646, z=5000.3498882335}
,U1A15D2567BD1ADE5={DE='Weghüterin Sera', FR='Garde-voie Sera', EN='Waykeeper Sera', scene={DE='Finstere Tiefen', FR='Profondeurs Insondables', EN='Darkening Deeps'}, lvl=26, x=5132.0898852888, y=999.24997766502, z=2416.3499459904}
,U1A169ABC06B98C7B={DE='Yasmaren Vitenya', FR='Yasmaren Vitenya', EN='Yasmaren Vitenya', scene={DE='Phönixhöhe', FR='Butte du Phénix', EN='Phoenix Rise'}, lvl=50}
,U1A264FCC0848A947={DE='Violet Harwood', FR='Violet Harwood', EN='Violet Harwood', scene={DE='Bruchsteinbecken-Basislager', FR='Camp de Pierre de Taille', EN='Quarrystone Base Camp'}, lvl=20, x=5682.9698729757, y=961.99997849762, z=4750.6898938138}
,U1A4A9D3529CA193F={DE='Soldat Mihai', FR='Soldat Mihai', EN='Private Mihai', scene={DE='Knochenberster-Canyon', FR='Canyon des Fracasseurs', EN='Shatterbone Canyon'}, lvl=35, x=3170.1099291425, y=999.74997765385, z=3498.8299217951}
,U1A4F52675EB297A5={DE='Sviden Jarnor', FR='Sviden Jarnor', EN='Sviden Jarnor', scene={DE='Der Würgwald', FR='Asphyksylve', EN='The Stranglewood'}, lvl=52}
,U1A627B216BFC901B={DE='Sasha Nikadon', FR='Sasha Nikadon', EN='Sasha Nikadon', scene={DE='Der Turm der Weisen', FR='L\'Aiguille du Sage', EN='The Sagespire'}, lvl=34, x=2593.5099420305, y=1185.9299734924, z=3535.3299209792}
,U1A99F9996AB32BB3={DE='Quartiermeister Balint', FR='Intendant Balint', EN='Quartermaster Balint', scene={DE='Kahlschlägerlager', FR='Emprise du Récupérateur', EN='Reclaimer\'s Hold'}, lvl=40, x=6298.0098592285, y=910.52997964807, z=1594.0499643702}
,U1AA791C60199EA56={DE='Marty', FR='Marty', EN='Marty', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=40}
,U1AC535842DF1F1A7={DE='Jorand Iktalan', FR='Jorand Iktalan', EN='Jorand Iktalan', lvl=60}
,U02ADDBFA208DBD9A={DE='Alexsil', FR='Alexsil', EN='Alexsil', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U02ADDBFB31FA60EB={DE='Darivir', FR='Darivir', EN='Darivir', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U02ADDBFC42D02BF9={DE='Fradumir', FR='Fradumir', EN='Fradumir', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U02ADDBFD530EEECE={DE='Nitisko', FR='Nitisko', EN='Nitisko', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U02ADDBFF0D5D542C={DE='Valkov', FR='Valkov', EN='Valkov', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U1AE0E4AA477FACA4={DE='Fayne Doran', FR='Fayne Doran', EN='Fayne Doran', scene={DE='Geheiligter Hügel', FR='Colline Sacrée', EN='Hallowed Hill'}, lvl=5, x=1150.959974274, y=898.65997991338, z=1346.829969896}
,U1B73E6D638BC76E0={DE='Keyra Daln', FR='Keyra Daln', EN='Keyra Daln', scene={DE='Quellenebenen', FR='Plaines des Sources', EN='Wellspring Flats'}, lvl=52}
,U1B806D2E68E0050E={DE='Kira Thanos', FR='Kira Thanos', EN='Kira Thanos', lvl=50}
,U1BA5D4945CF4EBBB={DE='Kapitän Glott', FR='Capitaine Glott', EN='Captain Glott', scene={DE='Göttlicher Anlegeplatz', FR='Débarcadère Divin', EN='Divine Landing'}, lvl=7}
,U1BB9094E7C73B9ED={DE='Soldatin Chloe', FR='Soldat Chloe', EN='Private Chloe', scene={DE='Flussfels', FR='Chute-rivière', EN='Riverfell'}, lvl=28}
,U1BCDA2987E71F25E={DE='Bahram Feris', FR='Bahram Feris', EN='Bahram Feris', scene={DE='Wurmfluchspitze', FR='Aiguille de Plaie-de-wyrm', EN='Wyrmbane Spire'}, lvl=50, x=6128.8198630102, y=979.51997810602, z=7301.1198368073}
,U1BCFBE470EE5F69A={DE='Bruder Damon', FR='Frère Damon', EN='Brother Damon', scene={DE='Runental', FR='Descente runique', EN='Runic Descent'}, lvl=40}
,U1BE796F9495E7D08={DE='Arlan Merkur', FR='Arlan Merkur', EN='Arlan Merkur', scene={DE='Höhle des Kwell', FR='Antre de Kwell', EN='Den of Kwell'}, lvl=59}
,U1BEEC5F93A202E6D={DE='Uriel Chuluun', FR='Uriel Chuluun', EN='Uriel Chuluun', scene={DE='Die Egge', FR='La Tourmente', EN='The Harrow'}, lvl=25}
,U1BF49D4A10217873={DE='Asha Catari', FR='Asha Catari', EN='Asha Catari', scene={DE='Runental', FR='Descente runique', EN='Runic Descent'}, lvl=40}
,U02D2C21B1706A70D={DE='Dulan Leichthammer', FR='Dulan Marteau-de-Lumière', EN='Dulan Lighthammer', lvl=40}
,U02DD9E846711EDB1={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', scene={DE='Fergos-Lager', FR='Camp de Fergos', EN='Camp Fergos'}, lvl=25, x=4631.2098964844, y=1091.9999755919, z=5138.4998851456}
,U1CB0E0C95D68041A={DE='Tam Dolchborn', FR='Tam Portedague', EN='Tam Daggerborne', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=50}
,U1CDA67854E5C61CE={DE='Elisa Randolph', FR='Elisa Randolph', EN='Elisa Randolph', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7645.889829101, y=915.08997954614, z=6267.2798599154}
,U1CF9F70D0DAD0F05={DE='Hauptmann Jack Skyeling', FR='Capitaine Jack Célestin', EN='Captain Jack Skyeling', scene={DE='Scuddrahafen', FR='Port Scuddra', EN='Port Scuddra'}, lvl=65}
,U1CFA4E0D5C55798B={DE='Lethran Solitan', FR='Lethran Solitan', EN='Lethran Solitan', scene={DE='Grollnarben-Damm', FR='Rive de Malentaille', EN='Spitescar Bank'}, lvl=35, x=8229.3193359375, y=896.19995117188, z=6639.5698242188}
,U1D0517615BAB7D47={DE='Bylhix', FR='Bylhix', EN='Bylhix', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=50}
,U1D5446ED1E375A38={DE='Läuterer Turaz', FR='Purificateur Turaz', EN='Purifier Turaz', scene={DE='Sturmposten', FR='Poste de la Tempête', EN='Tempest Station'}, lvl=5, x=634.23998582363, y=29.549999339506, z=856.14998086356}
,U1D65C6C716446FBB={DE='Michelle Weston', FR='Michelle Weston', EN='Michelle Weston', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=26, x=3872.2399134487, y=972.09997827187, z=3084.4699310567}
,U1D94888E460980E9={DE='Darvik Kivarus', FR='Darvik Kivarus', EN='Darvik Kivarus', scene={DE='Dämmerungshüter-Tal', FR='Val de Gardaurore', EN='Dawnkeeper Vale'}, lvl=56}
,U1D98A0111F586A95={DE='Zielschuss der Gezeichnete', FR='Tir-précis le Marqué', EN='Sureshot the Marked', scene={DE='Jägerlager', FR='Camp des chasseurs', EN='Hunters\' Camp'}, lvl=42, x=8537.9298091624, y=940.26997898333, z=6637.3498516437}
,U1DB911B54626C2EF={DE='Weghüterin Leilandra', FR='Garde-voie Leilandra', EN='Waykeeper Leilandra', scene={DE='Zährenbach', FR='Étendue de Chutelarme', EN='Tearfall Run'}, lvl=26, x=4612.8298968952, y=1106.6199752651, z=2743.6399386749}
,U1DC50CBA3E9CDF8D={DE='Miltiadea Charus', FR='Miltiadea Charus', EN='Miltiadea Charus', scene={DE='Bruchebene', FR='Plaine Accidentée', EN='Fractured Plain'}, lvl=52}
,U1DD898E147D8A091={DE='Schildwache Veliz', FR='Sentinelle Veliz', EN='Sentinel Veliz', scene={DE='Eiswachtgrat', FR='Crête de l\'Œil-glacé', EN='Icewatch Ridge'}, lvl=32}
,U1DE2A12F6043F057={DE='Neslin Veris', FR='Neslin Veris', EN='Neslin Veris', scene={DE='Bluteisenbecken', FR='Bassins de Ferdesang', EN='Blood Iron Pools'}, lvl=30, x=3242.9999275133, y=1251.9299720172, z=1779.3399602287}
,U1E221D8D6CF13A02={DE='Dresh Monesky', FR='Dresh Monesky', EN='Dresh Monesky', scene={DE='Ritterhöhe', FR='Avancée du Croisé', EN='Crusader\'s Advance'}, lvl=50}
,U1E29CA0F75F51F78={DE='Merga', FR='Merga', EN='Merga', lvl=52}
,U1E3BBF1E6ACC84AB={DE='Mann ohne Gesicht', FR='Homme sans visage', EN='Faceless Man', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=52, x=5997.7698659394, y=1011.4499773923, z=5134.4598852359}
,U1EB2C5657129239C={DE='Sergeant Ognin', FR='Sergent Ognin', EN='Sergeant Ognin', scene={DE='Feenring-Forst', FR='Bois de Cerclefée', EN='Faering Woods'}, lvl=40}
,U1ED517803AA910BF={DE='Kaseem Owan', FR='Kaseem Owan', EN='Kaseem Owan', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=45, x=6630.0598518066, y=890.19998010248, z=7095.6398414001}
,U1F11DCA1022C250A={DE='Ruriel Zelus', FR='Ruriel Zelus', EN='Ruriel Zelus', scene={DE='Fallbach', FR='Repli', EN='Fallback'}, lvl=43, x=8624.82980722, y=917.93997948244, z=7002.6798434779}
,U1F253EFC614367E2={DE='Nuys Rundercomb', FR='Nuys Rundercomb', EN='Nuys Rundercomb', scene={DE='Fergos-Lager', FR='Camp de Fergos', EN='Camp Fergos'}, lvl=25, x=4654.5698959623, y=1092.0099755917, z=5138.1998851523}
,U1FA1AEF176223DFA={DE='Nazeel Ferik', FR='Nazeel Ferik', EN='Nazeel Ferik', scene={DE='Ruston', FR='Ruston', EN='Ruston'}, lvl=50}
,U1FAE8CC85EC7FC11={DE='Noreen Adler', FR='Noreen Adler', EN='Noreen Adler', scene={DE='Blutige Küsten', FR='Rivages Sanguins', EN='Sanguine Shores'}, lvl=19, x=6117.6698632594, y=850.40998099186, z=3696.4099173788}
,U1FD436BF0F5DD040={DE='Lynda Seves', FR='Lynda Seves', EN='Lynda Seves', scene={DE='Ruston', FR='Ruston', EN='Ruston'}, lvl=50}
,U1FD73F6101119A9E={DE='Bellorus der Gezeichnete', FR='Bellorus le Marqué', EN='Bellorus the Marked', scene={DE='Sturmposten', FR='Poste de la Tempête', EN='Tempest Station'}, lvl=5, x=643.14998562448, y=29.549999339506, z=853.88998091407}
,U1FE59EF72F8FFEA1={DE='Laria', FR='Laria', EN='Laria', scene={DE='Zährenbach', FR='Étendue de Chutelarme', EN='Tearfall Run'}, lvl=25, x=4643.4198962115, y=1109.399975203, z=2734.4599388801}
,U1FFEE6A76F5D2EAB={DE='Stofie', FR='Stofie', EN='Stofie', scene={DE='Mariel-Tauns Dorf', FR='Village de Mariel-Taun', EN='Mariel-Taun\'s Village'}, lvl=65, x=7582.5098305177, y=866.27998063713, z=3077.4699312132}
,U1FFEE6A87F8BD1B8={DE='Stofie', FR='Stofie', EN='Stofie', scene={DE='Übungshof', FR='La Cour d\'Entraînement', EN='The Training Yard'}, lvl=65}
,U1FFEE6A908E19489={DE='Stofie', FR='Stofie', EN='Stofie', scene={DE='Die Kanäle', FR='Les Canaux', EN='The Canals'}, lvl=65, x=12757.759714842, y=855.1099808868, z=11564.62974151}
,U2009D6BB5427124C={DE='Gladdox Fwyntindle', FR='Gladdox Fwyntindle', EN='Gladdox Fwyntindle', scene={DE='Laternenplateau', FR='Plateau de Lanterne', EN='Lantern Plateau'}, lvl=35, x=7386.0798349082, y=914.61997955665, z=6203.0698613506}
,U0335673A45C4111E={DE='Seriva Agorivitch', FR='Seriva Agorivitch', EN='Seriva Agorivitch', scene={DE='Ewige Wacht', FR='Garde Éternelle', EN='Endless Watch'}, lvl=50, x=2669.8299403246, y=1232.2499724571, z=3087.2599309944}
,U2052023237EAF10F={DE='Julia Tanner', FR='Julia Tanner', EN='Julia Tanner', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6556.0598534606, y=822.17998162284, z=4594.0798973143}
,U206F40E030A64FB1={DE='Othar Hareldo', FR='Othar Hareldo', EN='Othar Hareldo', scene={DE='Der Rillteich', FR='La Mare du Ruisselet', EN='The Rill Pond'}, lvl=14}
,U2083C20E5DAEF2EB={DE='Freudlose Schauderzunge', FR='Sombrelangue sinistre', EN='Bleak Diretongue', scene={DE='Runental', FR='Descente runique', EN='Runic Descent'}, lvl=40}
,U20DA99B47932861E={DE='Neseen Sotep', FR='Neseen Sotep', EN='Neseen Sotep', scene={DE='Grollnarben-Damm', FR='Rive de Malentaille', EN='Spitescar Bank'}, lvl=35, x=8234.9794921875, y=896.86999511719, z=6639.0698242188}
,U2100504C4B095914={DE='Borrin Gammult', FR='Borrin Gammult', EN='Borrin Gammult', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7515.8198320083, y=888.66998013668, z=3047.6099318806}
,U211BD9DB0055D66F={DE='Zenturio Namik', FR='Centurion Namik', EN='Centurion Namik', lvl=50, x=6197.3798614778, y=919.66997944377, z=5152.0598848425}
,U211C9F56721F36A0={DE='Adela Anka', FR='Adela Anka', EN='Adela Anka', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3142.8299297523, y=1095.0899755228, z=3886.2499131355}
,U2132550217FB18AB={DE='Dimitar Jegos', FR='Dimitar Jegos', EN='Dimitar Jegos', scene={DE='Ruston', FR='Ruston', EN='Ruston'}, lvl=50}
,U21507025652488F6={DE='Talal Almas', FR='Talal Almas', EN='Talal Almas', scene={DE='Wurmfluchspitze', FR='Aiguille de Plaie-de-wyrm', EN='Wyrmbane Spire'}, lvl=50}
,U2151F08959DF313A={DE='Zolot', FR='Zolot', EN='Zolot', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=30, x=3682.6699176859, y=1097.6799754649, z=4463.7599002272}
,U21570D0E25AA68E9={DE='Astor Incantril', FR='Astor Incantril', EN='Astor Incantril', scene={DE='Felsgrat', FR='Crêteroc', EN='Rock Ridge'}, lvl=30, x=4457.0999003761, y=905.1999797672, z=3719.0599168725}
,U21614D83345AE255={DE='Adeptin Lira', FR='Adepte Lira', EN='Adept Lira', scene={DE='Felsgrat', FR='Crêteroc', EN='Rock Ridge'}, lvl=29, x=4451.7499004956, y=904.4799797833, z=3719.6499168593}
,U2164C5914C6E1854={DE='Kaspar Massi', FR='Kaspar Massi', EN='Kaspar Massi', scene={DE='Endlicht', FR='Dernière Lueur', EN='Lastlight'}, lvl=5, x=602.06998654269, y=37.83999915421, z=1004.9199775383}
,U03573A3B0A44E26B={DE='Shanik Gunseka', FR='Shanik Gunseka', EN='Shanik Gunseka', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7470.0098330323, y=887.17998016998, z=3005.3499328252}
,U2170AEF44B434507={DE='Kommandant Rigur', FR='Commandant Rigur', EN='Commandant Rigur', scene={DE='Heulendes Plateau', FR='Plateau Mugissant', EN='Howling Plateau'}, lvl=31, x=3644.8199185319, y=1104.8499753047, z=3498.9099217933}
,U218B1A597EEE334C={DE='Ludmil Pavel', FR='Ludmil Pavel', EN='Ludmil Pavel', scene={DE='Wundwald-Lift, Bergstation', FR='Sommet de l\'Ascenseur des Bois Meurtris', EN='Scarwood Lift Summit'}, lvl=31, x=4172.2199067436, y=1054.8999764211, z=4121.6499078739}
,U035B3AD51EE0E5AB={DE='Shyla Sternfeuer', FR='Shyla du Foyer Étoilé', EN='Shyla Starhearth', scene={DE='Thontics Brunnen', FR='Fontaine de Santic', EN='Thontic\'s Fountain'}, lvl=5, x=1200.5999731645, y=860.93998075649, z=1200.8099731598}
,U21B7E79D161D44E4={DE='Sergeant Nolist', FR='Sergent Nolist', EN='Sergeant Nolist', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=28, x=3843.5299140904, y=990.43997786194, z=3133.0599299707}
,U21BF287C7C6CD8B7={DE='Sereborn', FR='Sereborn', EN='Sereborn', scene={DE='Tal der Knochen', FR='Vallée de la Mort', EN='Valley of Bones'}, lvl=54}
,U21D1DD8B0532AFA7={DE='Uriel Chuluun', FR='Uriel Chuluun', EN='Uriel Chuluun', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3771.0799157098, y=1095.619975511, z=4416.7999012768}
,U21D7AF18506F93F3={DE='Gregor Banan', FR='Gregor Banan', EN='Gregor Banan', scene={DE='Windzorn-Außenposten', FR='Poste du Vent fou', EN='Windfury Post'}, lvl=48}
,U21DFFC1E04D6998E={DE='Knowbaz TZ', FR='Knowbaz TZ', EN='Knowbaz TZ', lvl=52}
,U036676660FAA5DEB={DE='Sergeant Coda', FR='Sergent Coda', EN='Sergeant Coda', lvl=50}
,U2220D1955B390457={DE='Anla Helmfast', FR='Anla Heaumevif', EN='Anla Helmfast', scene={DE='Felsgrat', FR='Crêteroc', EN='Rock Ridge'}, lvl=28, x=4276.0499044228, y=955.52997864224, z=3463.3699225876}
,U2256073C6D19EC5D={DE='Mann ohne Gesicht', FR='Homme sans visage', EN='Faceless Man', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=52, x=1630.5399635546, y=1077.589975914, z=2717.3599392623}
,U22A2BDFB32F54B48={DE='Alixia Deanthor', FR='Alixia Deanthor', EN='Alixia Deanthor', scene={DE='Lager Klüngel', FR='Camp de la Coterie', EN='Coterie Camp'}, lvl=22, x=5721.8898721058, y=1079.1699758787, z=5083.9798863642}
,U22B276D14C66D9AE={DE='Brael Worthon', FR='Brael Worthon', EN='Brael Worthon', scene={DE='Tapferkeitsfeste', FR='Bastion des Braves', EN='Valor Hold'}, lvl=5, x=1056.2699763905, y=838.19998126477, z=1046.9699765984}
,U22C3C240360A4988={DE='Mann ohne Gesicht', FR='Homme sans visage', EN='Faceless Man', scene={DE='Abgründige Kluft', FR='Précipice abyssal', EN='Abyssal Precipice'}, lvl=50}
,U037A1FAC673492F2={DE='Voradrin', FR='Voradrin', EN='Voradrin', scene={DE='Runen-Athenäum', FR='Athénée Runique', EN='Runic Athenaeum'}, lvl=60, x=7406.2198344581, y=849.54998101108, z=1516.9999660924}
,U22C7792F7D4F93BD={DE='Marschall Weston', FR='Maréchal Weston ', EN='Marshal Weston ', scene={DE='Thedeors Zirkel', FR='Cercle de Thedeor', EN='Thedeor\'s Circle'}, lvl=52}
,U22D43F3E6ED92473={DE='Fizio Marele', FR='Fizio Marele', EN='Fizio Marele', scene={DE='Arlans Herausforderung', FR='Défi d\'Arlan', EN='Arlan\'s Challenge'}, lvl=58}
,U22DFD6994F81457C={DE='Borrin Gammult', FR='Borrin Gammult', EN='Borrin Gammult', scene={DE='Kahlschlägerlager', FR='Emprise du Récupérateur', EN='Reclaimer\'s Hold'}, lvl=51, x=6321.2798587084, y=909.20997967757, z=1598.6999642663}
,U230F67A17878EF31={DE='Arnalt Prell', FR='Arnalt Prell', EN='Arnalt Prell', lvl=40}
,U23174C743183A984={DE='Korporal Riltas', FR='Caporal Riltas', EN='Corporal Riltas', lvl=50, x=7437.2198337652, y=904.39997978508, z=3048.1899318676}
,U235564562CFD8CD3={DE='Naro', FR='Naro', EN='Naro', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=50, x=13061.809708046, y=822.68998161145, z=3495.6799218655}
,U038BD63A76747697={DE='Uriel Chuluun', FR='Uriel Chuluun', EN='Uriel Chuluun', scene={DE='Steinmetzwache', FR='Guet du Tailleur de pierre', EN='Stonemason\'s Watch'}, lvl=39, x=6385.1798572801, y=909.01997968182, z=1866.0199582912}
,U038CDBA1263F857C={DE='Shelath', FR='Shelath', EN='Shelath', scene={DE='Atia', FR='Atia', EN='Atia'}, lvl=52}
,U2390BEFB6D5D0AD0={DE='Cornelius Magrox', FR='Cornelius Magrox', EN='Cornelius Magrox', scene={DE='Grollnarben-Damm', FR='Rive de Malentaille', EN='Spitescar Bank'}, lvl=35, x=8231.990234375, y=896.42999267578, z=6641.6596679688}
,U23ABEA5D0A0AA8EB={DE='Jiana Relos', FR='Jiana Relos', EN='Jiana Relos', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U23B4D2CB3335806F={DE='Ralyn Laurel', FR='Ralyn Laurel', EN='Ralyn Laurel', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3145.9499296825, y=1095.0899755228, z=3877.819913324}
,U23B511F3150E1576={DE='Neldon Bandrey', FR='Neldon Bandrey', EN='Neldon Bandrey', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=4920.0798900276, y=1054.6599764265, z=5035.2898874525}
,U23DA1AEE5E4DC6C9={DE='Kriegsherr Albrect', FR='Maître de guerre Albrect', EN='Warlord Albrect', scene={DE='Thedeors Zirkel', FR='Cercle de Thedeor', EN='Thedeor\'s Circle'}, lvl=52, x=7408.5998344049, y=863.5299806986, z=2885.4799355045}
,U240602C306529ED4={DE='Minara', FR='Minara', EN='Minara', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=50, x=3743.6299163233, y=1198.8699732032, z=1722.9199614897}
,U240679E336600B03={DE='Freudlose Schauderzunge', FR='Bleak Sombrelangue', EN='Bleak Diretongue', scene={DE='Runental', FR='Descente runique', EN='Runic Descent'}, lvl=40}
,U2417BFFD624D23DA={DE='Uriel Chuluun', FR='Uriel Chuluun', EN='Uriel Chuluun', scene={DE='Tiefschlag-Ausgrabung', FR='Excavation de Couprofond', EN='Deepstrike Excavation'}, lvl=25}
,U039EA4C744D7548C={DE='Riblog Gon', FR='Riblog Gon', EN='Riblog Gon', scene={DE='Grollnarbenbach', FR='Lit de Malentaille', EN='Spitescar Wash'}, lvl=44}
,U03A3E8511875EF5A={DE='Kip Bayne', FR='Kip Bayne', EN='Kip Bayne', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=50, x=5981.6198663004, y=1011.4499773923, z=5131.7398852967}
,U2475A7D6602C7AB5={DE='Garem Nassar', FR='Garem Nassar', EN='Garem Nassar', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=45}
,U24A0A9345B8B38C9={DE='Irden Myran', FR='Irden Myran', EN='Irden Myran', scene={DE='Gezeitenbrunnen-Zufluss', FR='Anse de Bellemarée', EN='Tidewell Inlet'}, lvl=52}
,U24AB42D87B94E8B3={DE='Valyn Marsip', FR='Valyn Marsip', EN='Valyn Marsip', scene={DE='Lebensfabrik', FR='Usine de la Vie', EN='Life Factory'}, lvl=5}
,U24BAA3FA58FE8397={DE='Sarah Martins', FR='Sarah Martins', EN='Sarah Martins', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=20, x=6141.9598627165, y=920.92997941561, z=5150.9598848671}
,U24D84377456667A4={DE='Rhamm Drachenschreck', FR='Rhamm Drake-fléau', EN='Rhamm Dragonbane', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52, x=7280.8498372603, y=876.4999804087, z=3051.8299317863}
,U250929A8040A24E6={DE='Nikola Mirolin', FR='Nikola Mirolin', EN='Nikola Mirolin', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1572.3799648546, y=1072.1399760358, z=2622.8999413736}
,U251D58BC4491A661={DE='Sir Isaak Kazimir', FR='Sire Isaak Kazimir', EN='Sir Isaak Kazimir', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=35, x=3126.199930124, y=1095.0899755228, z=3874.999913387}
,U252AA91E2724C68B={DE='Legionärin Brianna', FR='Légionnaire Brianna', EN='Legionnaire Brianna', scene={DE='Narbenmoor', FR='Bourbier Balafré', EN='Scarred Mire'}, lvl=14}
,U255BBC9410ED4123={DE='Irrena Alfinder', FR='Irrena Alfinder', EN='Irrena Alfinder', scene={DE='Getreuenhöhe', FR='Buttefidèle', EN='Stalwart Rise'}, lvl=40}
,U256777571343D45C={DE='Doktor Senson', FR='Docteur Senson', EN='Doctor Senson', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=32, x=4633.0398964435, y=1235.9999723732, z=1538.7799656056}
,U2570041F4A6CDC6D={DE='Otriga Zamisht', FR='Otriga Zamisht', EN='Otriga Zamisht', lvl=60, x=5546.0898760352, y=481.23998924345, z=5478.8098775391}
,U25702FE43AAE2037={DE='Essam Fudail', FR='Essam Fudail', EN='Essam Fudail', scene={DE='Windzorn-Außenposten', FR='Poste du Vent fou', EN='Windfury Post'}, lvl=48}
,U257CA286044CE243={DE='Sergeant Heilig', FR='Sergent Heilig', EN='Sergeant Heilig', lvl=18, x=6034.4698651191, y=832.36998139508, z=3143.1399297453}
,U257ECBAB303658EA={DE='Suraph der Flammenmagier', FR='Suraph le Pyromage', EN='Suraph the Pyremage', scene={DE='Fallbach', FR='Repli', EN='Fallback'}, lvl=43, x=8625.9798071943, y=917.92997948267, z=7000.9598435163}
,U258186875D667DE0={DE='Sergeant Coda', FR='Sergent Coda', EN='Sergeant Coda', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U258B20BF7DAA1F91={DE='Thelestriel Gwynar', FR='Thelestriel Gwynar', EN='Thelestriel Gwynar', scene={DE='Bruchtal', FR='Vallon Brisé', EN='Broken Vale'}, lvl=50, x=2306.8699484374, y=1155.1799741797, z=3005.2499328274}
,U258F393429662983={DE='Orseti Fawkes', FR='Orseti Fawkes', EN='Orseti Fawkes', scene={DE='Nebelbucht', FR='Crique de la Chute de brume', EN='Mistfall Cove'}, lvl=37}
,U03C18C3C11F45B0E={DE='Sameer Zubari', FR='Sameer Zubari', EN='Sameer Zubari', scene={DE='Wurmfluchspitze', FR='Aiguille de Plaie-de-wyrm', EN='Wyrmbane Spire'}, lvl=50, x=6116.8698632773, y=979.48997810669, z=7296.479836911}
,U25A0C80C14FF5235={DE='Drogo Sunderand', FR='Drogo Sunderand', EN='Drogo Sunderand', scene={DE='Glücksend', FR='Fin de Fortune', EN='Fortune\'s End'}, lvl=14}
,U25C57F2C2D29DBBC={DE='Kyoth Lichtungsfreund', FR='Kyoth Bucolique', EN='Kyoth Gladefriend', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=15}
,U25DA0D195D4BD672={DE='Mona Bernardi', FR='Mona Bernardi', EN='Mona Bernardi', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=44}
,U2602235E75CF34A7={DE='Elroy Holst', FR='Elroy Holst', EN='Elroy Holst', lvl=50}
,U2607896D740CE4BD={DE='Lila Auenfeld', FR='Lila Medows', EN='Lila Medows', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=50, x=7354.7698356081, y=871.71998051554, z=3050.6399318129}
,U262D792158895A8A={DE='Enora Malorim', FR='Enora Malorim', EN='Enora Malorim', scene={DE='Tapferkeitsfeste', FR='Bastion des Braves', EN='Valor Hold'}, lvl=5, x=1027.479977034, y=838.23998126388, z=1070.5399760716}
,U263BCC65705A886C={DE='Dacks', FR='Dacks', EN='Dacks', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=30, x=3140.8499297965, y=1095.0899755228, z=3900.5099128168}
,U2647CF7210BA65B5={DE='Ilchorin', FR='Ilchorin', EN='Ilchorin', scene={DE='Zährenbach', FR='Étendue de Chutelarme', EN='Tearfall Run'}, lvl=50}
,U268292A948286D2D={DE='Dimitri Sverig', FR='Dimitri Sverig', EN='Dimitri Sverig', scene={DE='Bruchtal', FR='Vallon Brisé', EN='Broken Vale'}, lvl=50, x=2295.2699486967, y=1155.1799741797, z=3000.5899329316}
,U269C4B9E1138681D={DE='Sergeant Malsorn', FR='Sergent Malsorn', EN='Sergeant Malsorn', scene={DE='Herrscherhalle', FR='Salle du Seigneur', EN='Lord\'s Hall'}, lvl=33, x=3026.9399323426, y=1121.969974922, z=4161.2499069888}
,U26AB0A433C3ABC44={DE='Azdea Thelis', FR='Azdea Thelis', EN='Azdea Thelis', scene={DE='Granitwaldkreuzung', FR='Passage de Bois-Granite', EN='Granitewood Crossing'}, lvl=35, x=3999.9299105946, y=1095.439975515, z=4661.4398958087}
,U26BA854F50B8CBEF={DE='Stratege Iakale', FR='Stratège Iakale', EN='Stratego Iakale', lvl=50}
,U26DB87637F601050={DE='Andrik Bogdin', FR='Andrik Bogdin', EN='Andrik Bogdin', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3691.7699174825, y=1097.6899754647, z=4408.8099014554}
,U26DE876D40324221={DE='Elsin Rane', FR='Elsin Rane', EN='Elsin Rane', scene={DE='Brutwacht-Posten', FR='Poste de la Veillée', EN='Broodwatch Post'}, lvl=35, x=7699.4897460938, y=910.91998291016, z=6646.6098632813}
,U26FEBF6F25493513={DE='Thelliam Bettstroh', FR='Thelliam Bedstraw', EN='Thelliam Bedstraw', scene={DE='Quecksilber-Akademie', FR='Académie de Vif-Argent', EN='Quicksilver College'}, lvl=10, x=5942.3298671786, y=812.19998184592, z=3028.6799323037}
,U2726CDE554975B63={DE='Weghüterin Sharla', FR='Garde-voie Sharla', EN='Waykeeper Sharla', scene={DE='Finstere Tiefen', FR='Profondeurs Insondables', EN='Darkening Deeps'}, lvl=26, x=5138.839885138, y=999.21997766569, z=2418.2499459479}
,U272A487049AB2B62={DE='Ekdim der Verrückte', FR='Ekdim le fou', EN='Ekdim the Mad', scene={DE='Magierzeichen', FR='Marque du Mage', EN='Mage\'s Mark'}, lvl=42, x=3871.1298828125, y=1234.4699707031, z=2177.8000488281}
,U272B785A35C6E221={DE='Kasia Phelorn', FR='Kasia Phelorn', EN='Kasia Phelorn', scene={DE='Der Flachhof', FR='La Cour-plate', EN='The Flatyard'}, lvl=47}
,U276806FF34881CA5={DE='Molly Graysby', FR='Molly Graysby', EN='Molly Graysby', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6076.6298641767, y=817.1399817355, z=3264.4599270336}
,U277175AB24CFFAD0={DE='Atticus Tylakios', FR='Atticus Tylakios', EN='Atticus Tylakios', scene={DE='Feuersandwüste', FR='Désert de Sablefeu', EN='Firesand Desert'}, lvl=50, x=5597.8498748783, y=880.88998031057, z=6612.9298521895}
,U2790C7B143E12487={DE='Padma Ultan', FR='Padma Ultan', EN='Padma Ultan', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U2798B3D1093CB199={DE='Sir Guysun Gesetzlos', FR='Sire Guysun Bandolier', EN='Sir Guysun Lawless', scene={DE='Heldentrutz', FR='Bosquet des Héros', EN='Heroes\' Stand'}, lvl=33, x=3097.8699307572, y=1092.9399755709, z=4040.1499096956}
,U03F83A6770DCB143={DE='Frederick Seveer', FR='Frédérick Seveer', EN='Frederick Seveer', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7705.6998277642, y=917.40997949429, z=6361.3898578119}
,U27D1ECAF179315F8={DE='Torin Fergal', FR='Torin Fergal', EN='Torin Fergal', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25}
,U27D677941EA6DA74={DE='Rahn Chuluun', FR='Rahn Chuluun', EN='Rahn Chuluun', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U03FCB9E574A86A74={DE='Brigadier Andan', FR='Brigadier Andan', EN='Brigadier Andan', lvl=50}
,U280651E7448A7BE9={DE='Deo Zervos', FR='Deo Zervos', EN='Deo Zervos', scene={DE='Die Manufaktur', FR='La Manufacture', EN='The Manufactory'}, lvl=52, x=5983.0398662686, y=909.12997967936, z=5223.5198832452}
,U281847C66FBDDD37={DE='Gefangener Bürger', FR='Civil capturé', EN='Captured Civilian', scene={DE='Finstere Tiefen', FR='Profondeurs Insondables', EN='Darkening Deeps'}, lvl=23}
,U282750815A0B6DE3={DE='Doktor Oswell', FR='Docteur Oswell', EN='Doctor Oswell', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26, x=5189.4998840056, y=951.0399787426, z=3095.7099308055}
,U282992E264CBA944={DE='Rahn Chuluun', FR='Rahn Chuluun', EN='Rahn Chuluun', scene={DE='Endlicht', FR='Dernière Lueur', EN='Lastlight'}, lvl=5, x=609.31998638064, y=37.83999915421, z=1020.1099771988}
,U2859D58D7C75F36E={DE='Colten Feddel', FR='Colten Feddel', EN='Colten Feddel', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6073.1998642534, y=817.18998173438, z=3256.0999272205}
,U2864945F01522CE6={DE='Marisha Varlika', FR='Marisha Varlika', EN='Marisha Varlika', scene={DE='Lebensfabrik', FR='Usine de la Vie', EN='Life Factory'}, lvl=5}
,U2875BDF63882B395={DE='Obik Chuka', FR='Obik Chuka', EN='Obik Chuka', scene={DE='Dunkelfeuerhain', FR='Bosquet de Noirfeu', EN='Darkfire Grove'}, lvl=26, x=4620.66989672, y=924.33997933939, z=3512.3199214935}
,U28B149C4249A51BA={DE='Korman Lethrop', FR='Korman Lethrop', EN='Korman Lethrop', scene={DE='Lebensfabrik', FR='Usine de la Vie', EN='Life Factory'}, lvl=5}
,U28B3E3811A404E05={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', scene={DE='Lebensfabrik', FR='Usine de la Vie', EN='Life Factory'}, lvl=5, x=967.58997837268, y=70.81999841705, z=1011.8699773829}
,U28B9A921125E5C06={DE='Takavu Zinrah', FR='Takavu Zinrah', EN='Takavu Zinrah', scene={DE='Scheuerschwallhafen', FR='Havre de Hurlegrain', EN='Gritsquall Haven'}, lvl=50, x=5596.8498749007, y=881.29998030141, z=6622.2298519816}
,U04170FC213A8C850={DE='Quartiermeisterin Gerand', FR='Intendante Gerand', EN='Quartermaster Gerand', scene={DE='Denegars Stand', FR='Bastion de Denegar', EN='Denegar\'s Stand'}, lvl=18, x=7242.7798381113, y=876.40998041071, z=5439.9698784072}
,U290A0F802834C57D={DE='Jacksen Winsley', FR='Jacksen Winsley', EN='Jacksen Winsley', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=4863.4298912939, y=1058.8299763333, z=4981.9898886438}
,U2931FF5B0B3C797F={DE='Rositha', FR='Rositha', EN='Rositha', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=20}
,U29429D065BEFDCFF={DE='Brecher Eldtas', FR='Briseur Eldtas', EN='Breaker Eldtas', scene={DE='Eiswacht-Außenposten', FR='Avant-poste d\'Œil-glacé', EN='Icewatch Outpost'}, lvl=30, x=2994.309933072, y=1233.0099724401, z=2379.589946812}
,U2967EAF729A93EE9={DE='Stratege Tonust', FR='Stratège Tonust', EN='Stratego Tonust', lvl=50, x=6194.3498615455, y=919.66997944377, z=5152.5698848311}
,U297CCE164D5D4466={DE='Asha Catari', FR='Asha Catari', EN='Asha Catari', scene={DE='Endlicht', FR='Dernière Lueur', EN='Lastlight'}, lvl=5, x=602.47998653352, y=37.83999915421, z=1008.8799774498}
,U29977E5F5F7745F3={DE='Sergeant Woden', FR='Sergent Woden', EN='Sergeant Woden', scene={DE='Wolkenhöhlen', FR='Cavernes Nuageuses', EN='Cloudbourne Caverns'}, lvl=34, x=4293.0699040424, y=1306.4099707995, z=1251.1899720337}
,U29D13B15323CC96D={DE='Thomas Penthas', FR='Thomas Penthas', EN='Thomas Penthas', scene={DE='Sumpfhaus', FR='Maison du Marais', EN='Marsh House'}, lvl=12, x=6497.209854776, y=828.37998148426, z=3287.7899265122}
,U2A02C616653D532E={DE='Ulan Hamda', FR='Ulan Hamda', EN='Ulan Hamda', scene={DE='Das Endtal', FR='Dernière Vallée', EN='The Last Valley'}, lvl=26, x=4049.8999094777, y=1028.239977017, z=5408.3798791133}
,U2A11A0517E7DAF78={DE='Borrin Gammult', FR='Borrin Gammult', EN='Borrin Gammult', scene={DE='Thontics Brunnen', FR='Fontaine de Santic', EN='Thontic\'s Fountain'}, lvl=5, x=1198.609973209, y=860.15998077393, z=1203.8799730912}
,U2A20E2A745269FB7={DE='Aiden Schwarzstein', FR='Aiden Pierrenoire', EN='Aiden Blackstone', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=4906.5998903289, y=1055.6999764033, z=5045.8898872156}
,U2A31F8E64D1506C7={DE='Sergeant Nash', FR='Sergent Nash', EN='Sergeant Nash', scene={DE='Flussfels', FR='Chute-rivière', EN='Riverfell'}, lvl=28}
,U2A435EC801F1FE63={DE='Kerevik Zottelfuß', FR='Kervik Piedflânant', EN='Kerevik Amblefoot', scene={DE='Heulendes Plateau', FR='Plateau Mugissant', EN='Howling Plateau'}, lvl=30, x=3735.2899165098, y=1089.8799756393, z=3220.9199280068}
,U2A78E42275D5E668={DE='Aurelius', FR='Aurelius', EN='Aurelius', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50}
,U2A96453B7447D650={DE='Optio Lyis', FR='Optio Lyis', EN='Optio Lyis', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50}
,U2AA15303049E1BD1={DE='Borrin Gammult', FR='Borrin Gammult', EN='Borrin Gammult', scene={DE='Runental', FR='Descente runique', EN='Runic Descent'}, lvl=51}
,U2AB92B4B5E242A1F={DE='Norbert Denbur', FR='Norbert Denbur', EN='Norbert Denbur', scene={DE='Lager Klüngel', FR='Camp de la Coterie', EN='Coterie Camp'}, lvl=22, x=5697.98987264, y=1069.669976091, z=5060.3698868919}
,U2ABB3D6E2997E0A9={DE='Borovi Nachtwasser', FR='Borovi Sorgueflot', EN='Borovi Nightwater', scene={DE='Wolkenhöhlen', FR='Cavernes Nuageuses', EN='Cloudbourne Caverns'}, lvl=34, x=4308.9599036872, y=1307.3199707791, z=1266.8899716828}
,U2ABFD3EA33804676={DE='Amani Kolya', FR='Amani Kolya', EN='Amani Kolya', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52}
,U2AD48A28302013A6={DE='Saerloth der Rächer', FR='Saerloth le Vengeur', EN='Saerloth the Avenger', lvl=50}
,U2AE5E7311D3F047C={DE='Rurik', FR='Rurik', EN='Rurik', scene={DE='Festung Hammerhall', FR='Forteresse de Glasmarteau', EN='Hammerknell Fortress'}, lvl=50}
,U044BB76F366430A7={DE='Sereborn', FR='Sereborn', EN='Sereborn', scene={DE='Nekropolis', FR='Nécropole', EN='Necropolis'}, lvl=54}
,U2B01999071011266={DE='Abasi Khali', FR='Abasi Khali', EN='Abasi Khali', scene={DE='Wolfsbann', FR='Aconit', EN='Wolfsbane'}, lvl=50}
,U2B3D4D3E43EC8736={DE='Dejan Jevric', FR='Dejan Jevric', EN='Dejan Jevric', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U2B998DE038FA3632={DE='Hauptmann Haghen', FR='Capitaine Haghen', EN='Captain Haghen', scene={DE='Kahlschlägerlager', FR='Emprise du Récupérateur', EN='Reclaimer\'s Hold'}, lvl=40, x=6301.8298591431, y=910.52997964807, z=1600.7099642213}
,U2BA0B645635718DF={DE='Cyril Kalmar', FR='Cyril Kalmar', EN='Cyril Kalmar', scene={DE='Tapferkeitsfeste', FR='Bastion des Braves', EN='Valor Hold'}, lvl=5, x=1031.1599769518, y=838.23998126388, z=1057.2299763691}
,U2BDD0D2C64F7258C={DE='Fortuna Cosani', FR='Fortuna Cosani', EN='Fortuna Cosani', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=44, x=7499.2398323789, y=887.17998016998, z=3058.6999316327}
,U2C64D7AD08146F86={DE='Schankwirt Davek Anders', FR='Tavernier Davek Anders', EN='Barkeep Davek Anders', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6086.9398639463, y=818.1999817118, z=3045.2399319336}
,U2C713C334AE28F0B={DE='Jun Kaliel', FR='Jun Kaliel', EN='Jun Kaliel', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=40}
,U2CCDF7D4057C5ED0={DE='Thomas Penthas', FR='Thomas Penthas', EN='Thomas Penthas', scene={DE='Kap Morgenrot', FR='Pointe du Jour', EN='Dawnbreak Point'}, lvl=50}
,U2CFAE06910E0FD51={DE='Joseph Holden', FR='Joseph Holden', EN='Joseph Holden', scene={DE='Hammerfürst-Posten', FR='Poste de Fiefmarteau', EN='Hammerlord Post'}, lvl=39}
,U2D08176E799817E5={DE='Lord Olangden', FR='Seigneur Olangden', EN='Lord Olangden', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50, x=6132.2698629331, y=920.92997941561, z=5150.7898848709}
,U2D1069BA678469D8={DE='Beschützer Rysilver', FR='Protecteur Rysilver', EN='Protector Rysilver', scene={DE='Der Turm der Weisen', FR='L\'Aiguille du Sage', EN='The Sagespire'}, lvl=34, x=2636.4899410699, y=1177.7099736761, z=3609.1199193299}
,U2D18504A758B9147={DE='General Ina\'gara', FR='Général Ina\'gara', EN='General Ina\'gara', lvl=50}
,U2D60361321F8623E={DE='Mathys Gray', FR='Mathys Gray', EN='Mathys Gray', scene={DE='Aurentine-Platz', FR='Place Aurentine', EN='Plaza Aurentine'}, lvl=60, x=13095.959707282, y=906.44997973926, z=11528.909742309}
,U2D6C438102531896={DE='Ren Greer', FR='Ren Greer', EN='Ren Greer', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7693.9698280264, y=918.2999794744, z=6362.9398577772}
,U2D6FAEC878B3979F={DE='Adrina Nikolin', FR='Adrina Nikolin', EN='Adrina Nikolin', scene={DE='Thalin Tor', FR='Thalin Tor', EN='Thalin Tor'}, lvl=50}
,U2D7F9EFA06742BD0={DE='Daro Kupferdaumen', FR='Daro Pouce-cuivré', EN='Daro Copperthumb', scene={DE='Eiswacht-Außenposten', FR='Avant-poste d\'Œil-glacé', EN='Icewatch Outpost'}, lvl=34, x=2974.1999335214, y=1232.9399724416, z=2383.8499467168}
,U2DACB8B1573F4DDE={DE='Optio Fairna', FR='Optio Fairna', EN='Optio Fairna', scene={DE='Arche der Auserwählten', FR='Arche des Élus', EN='Ark of the Ascended'}, lvl=14, x=6215.2398610786, y=820.78998165391, z=4378.539902132}
,U2DD3015B065EBAEC={DE='Dulan Leichthammer', FR='Dulan Marteau-de-Lumière', EN='Dulan Lighthammer', lvl=40}
,U2DD5379242368CA2={DE='Fadei Bogatyr', FR='Fadei Bogatyr', EN='Fadei Bogatyr', scene={DE='Cestuslager', FR='Camp Cestus', EN='Camp Cestus'}, lvl=35, x=3336.6799254194, y=1086.8299757075, z=3555.1899205353}
,U2E5D64B26DF429FC={DE='Uriel Chuluun', FR='Uriel Chuluun', EN='Uriel Chuluun', lvl=40}
,U2E689DD455C410CF={DE='Alvarend Rifor', FR='Alvarend Rifor', EN='Alvarend Rifor', scene={DE='Fergos-Lager', FR='Camp de Fergos', EN='Camp Fergos'}, lvl=25, x=4641.8898962457, y=1091.9299755935, z=5139.6098851208}
,U2E6BF4A65DBB50E2={DE='Sonsa', FR='Sonsa', EN='Sonsa', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=30, x=3151.2799295634, y=1095.0899755228, z=3898.1199128702}
,U2EA11F866AAC7BAA={DE='Ishanti Leigh', FR='Ishanti Leigh', EN='Ishanti Leigh', scene={DE='Räuberklippe', FR='Falaise du Brigand', EN='Brigand\'s Bluff'}, lvl=44, x=8667.8198062591, y=983.16997802444, z=6460.6798555925}
,U2EB62DDB074EF0A7={DE='Belath', FR='Belath', EN='Belath', lvl=50}
,U2F1153AE59BF6FB2={DE='Optio Senali', FR='Optio Senali', EN='Optio Senali', scene={DE='Donnerwerkjoch', FR='Crête de Foudrœuvre', EN='Thunderwork Ridge'}, lvl=29, x=4326.7499032896, y=953.67997868359, z=3916.9999124482}
,U2F118E4075272F54={DE='Ryan Darmorn', FR='Ryan Darmorn', EN='Ryan Darmorn', scene={DE='Ruston', FR='Ruston', EN='Ruston'}, lvl=50}
,U2F209E5D35D257CE={DE='Kevar Wikalev', FR='Kevar Wikalev', EN='Kevar Wikalev', scene={DE='Frosttal', FR='Vallée gelée', EN='Frozen Valley'}, lvl=30, x=4174.6899066884, y=1297.9799709879, z=1418.3599682972}
,U04B6FFC07D024B8D={DE='Kirina Bogrilot', FR='Kirina Bogrilot', EN='Kirina Bogrilot', lvl=60}
,U2F4570800146F836={DE='Enqyeke Chinua', FR='Enqyeke Chinua', EN='Enqyeke Chinua', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50}
,U04BBAEE76C5C1310={DE='Koke Tegus', FR='Koke Tegus', EN='Koke Tegus', scene={DE='Kokes Festung', FR='Bastion de Koke', EN='Koke\'s Hold'}, lvl=5, x=760.11998300999, y=62.949998592958, z=964.1799784489}
,U2F750FE0321F8D36={DE='Alene Rifton', FR='Alene Rifton', EN='Alene Rifton', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6051.8598647304, y=817.23998173326, z=3054.569931725}
,U2F79EA29690221D4={DE='Bentram', FR='Bentram', EN='Bentram', scene={DE='Der Hammerkopf', FR='La Tête de marteau', EN='The Hammerhead'}, lvl=37}
,U2F8F6B674EE1B548={DE='Gregor Screpp', FR='Gregor Screpp', EN='Gregor Screpp', scene={DE='Laternenplateau', FR='Plateau de Lanterne', EN='Lantern Plateau'}, lvl=35, x=7382.0898349974, y=914.6399795562, z=6209.629861204}
,U2F94B33C5A57C032={DE='Ani Volia', FR='Ani Volia', EN='Ani Volia', scene={DE='Scharfklingenmühle', FR='Moulin de Vivelame', EN='Keenblade Mill'}, lvl=32, x=3802.3299150113, y=1105.6799752861, z=3926.719912231}
,U2F9C75916E3389EE={DE='Rorth Devalm', FR='Rorth Devalm', EN='Rorth Devalm', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6093.9998637885, y=817.1399817355, z=3255.989927223}
,U2FA96CF6714D0E33={DE='Kira Thanos', FR='Kira Thanos', EN='Kira Thanos', scene={DE='Fergos-Lager', FR='Camp de Fergos', EN='Camp Fergos'}, lvl=25, x=4664.7298957352, y=1092.1399755888, z=5137.0998851769}
,U2FC08E9446C6F348={DE='Tam Dolchborn', FR='Tam Portedague', EN='Tam Daggerborne', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7608.3498299401, y=869.06998057477, z=3107.2399305478}
,U300F5EA673555DB4={DE='Callon', FR='Callon', EN='Callon', scene={DE='Der Untergang von Laternenhaken', FR='La Chute de Saillant de Lanterne', EN='The Fall of Lantern Hook'}, lvl=44}
,U3018340A25178ADD={DE='Sophasa die Weitblickende', FR='Sophasa la Clairvoyante', EN='Sophasa the Farseeing', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U301A20701BB0E308={DE='Sanitäterin Kircher', FR='Docteur Kircher', EN='Medic Kircher', scene={DE='Heldentrutz', FR='Bosquet des Héros', EN='Heroes\' Stand'}, lvl=33, x=3101.6999306716, y=1092.8599755727, z=4063.9299091641}
,U301DB37F454BB295={DE='Kornath', FR='Kornath', EN='Kornath', scene={DE='Spaltrachenweiher', FR='Mares de la Gueule-fendue', EN='Splitmouth Ponds'}, lvl=43, x=8510.7398097701, y=916.3399795182, z=7370.8898352478}
,U3034C0463A416808={DE='Scotty Malm', FR='Scotty Malm', EN='Scotty Malm', scene={DE='Akademie für Ebenenstudien', FR='Académie des Études Planaires', EN='College of Planar Studies'}, lvl=40}
,U3048634B5DE51F1C={DE='Thomas Penthas', FR='Thomas Penthas', EN='Thomas Penthas', scene={DE='Thontics Brunnen', FR='Fontaine de Santic', EN='Thontic\'s Fountain'}, lvl=5, x=1201.9999731332, y=860.93998075649, z=1198.5399732105}
,U304D84E64BE18CA1={DE='Bruder Jebiah', FR='Frère Jebiah', EN='Brother Jebiah', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=35, x=3714.029916985, y=1202.0499731321, z=1931.8799568191}
,U30677B4C1715711B={DE='Kreuzritter Bertrand', FR='Croisé Bertrand', EN='Crusader Bertrand', lvl=25, x=707.17999267578, y=647.97998046875, z=712.66998291016}
,U30B313ED25CA1436={DE='Mehera Surin', FR='Mehera Surin', EN='Mehera Surin', lvl=60, x=5549.1398759671, y=482.15998922288, z=5478.5498775449}
,U30CF3E0B3690334B={DE='Isaak Illio', FR='Isaak Illio', EN='Isaak Illio', scene={DE='Steinmetzwache', FR='Guet du Tailleur de pierre', EN='Stonemason\'s Watch'}, lvl=39, x=6380.6898573805, y=908.99997968227, z=1867.4699582588}
,U30D6F1312E358945={DE='Vadivy', FR='Vadivy', EN='Vadivy', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6090.6598638631, y=817.14998173527, z=3264.7399270274}
,U30D888A801FECBE5={DE='Thal Hulifan', FR='Thal Hulifan', EN='Thal Hulifan', scene={DE='Wurmfluchspitze', FR='Aiguille de Plaie-de-wyrm', EN='Wyrmbane Spire'}, lvl=50, x=6119.0798632279, y=979.21997811273, z=7315.4398364872}
,U30DB319D3B173DAC={DE='Solana Dünenschwur', FR='Solana Peste-dune', EN='Solana Dunesworn', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=50, x=6136.6898628343, y=918.47997947037, z=5211.8198835067}
,U007D255954E984B2={DE='Fenzari Kranalin', FR='Fenzari Kranalin', EN='Fenzari Kranalin', scene={DE='Nomadenofen', FR='Fournaise du Nomade', EN='Nomad\'s Furnace'}, lvl=44, x=6996.3798436187, y=886.88998017646, z=7061.8898421545}
,U30F0C0841F5E6905={DE='Tzevi Durdana', FR='Tzevi Durdana', EN='Tzevi Durdana', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=45, x=6637.9098516311, y=883.8999802433, z=7110.1598410755}
,U04E6F6D806C528C3={DE='Kiona', FR='Kiona', EN='Kiona', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=50}
,U3112D6780A42DF84={DE='Emilyn Summers', FR='Emilyn Summers', EN='Emilyn Summers', scene={DE='Wachfeste', FR='Donjon de Surplomb', EN='Overwatch Keep'}, lvl=19, x=6418.8898565266, y=895.04997999407, z=3166.3899292257}
,U3122C6BB35D945FC={DE='Norel Evanov', FR='Norel Evanov', EN='Norel Evanov', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3779.839915514, y=1097.0899754781, z=4411.2099014018}
,U31279927705E77E8={DE='Jerome Drift', FR='Jérôme Drift', EN='Jerome Drift', scene={DE='Zackenrand', FR='Frontière déchiquetée', EN='Jagged Fringe'}, lvl=39}
,U317BF6BA5DC2F5A1={DE='Fiona Leone', FR='Fiona Leone', EN='Fiona Leone', scene={DE='Zährenbach', FR='Étendue de Chutelarme', EN='Tearfall Run'}, lvl=26, x=4597.8698972296, y=1106.5899752658, z=2745.6799386293}
,U31AE4D7736F39EA5={DE='Lotham Dunkelmond', FR='Lotham Sombrelune', EN='Lotham Darkmoon', scene={DE='Lothams Schlag', FR='Bosquet de Lotham', EN='Lotham\'s Strike'}, lvl=35}
,U31C124D606CEDFB9={DE='Kaspar Massi', FR='Kaspar Massi', EN='Kaspar Massi', scene={DE='Königsbresche', FR='Voie Royale', EN='King\'s Breach'}, lvl=50}
,U31C3BB9C00EDFB2D={DE='Niall Adnar', FR='Niall Adnar', EN='Niall Adnar', scene={DE='Wachfeste', FR='Donjon de Surplomb', EN='Overwatch Keep'}, lvl=19, x=6420.2298564967, y=895.04997999407, z=3169.549929155}
,U31C54E34782F11DE={DE='Oblo Dreckpfanne', FR='Oblo Crustypot', EN='Oblo Crustypot', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=40}
,U31EC07CB7F6F2EF4={DE='Lilthren Tam', FR='Lilthren Tam', EN='Lilthren Tam', scene={DE='Kelari-Zuflucht', FR='Refuge Kelari', EN='Kelari Refuge'}, lvl=8, x=6593.8298526164, y=822.86998160742, z=4600.4198971726}
,U0500B05A252B9263={DE='Isach Undugar', FR='Isach Undugar', EN='Isach Undugar', scene={DE='Rubikon', FR='Rubicon', EN='Rubicon'}, lvl=6, x=475.84998936392, y=82.829998148605, z=814.2899817992}
,U050418932DA214C7={DE='Obrivic-Wachposten', FR='Sentinelle d\'Obrivic', EN='Obrivic Sentinel', scene={DE='Ewige Wacht', FR='Garde Éternelle', EN='Endless Watch'}, lvl=45}
,U322FB17F2FB59FCD={DE='Zhanna Sergei', FR='Zhanna Sergei', EN='Zhanna Sergei', scene={DE='Letzte Hoffnung', FR='Dernier espoir', EN='Last Hope'}, lvl=35, x=3894.3799129538, y=1095.7699755076, z=4505.779899288}
,U323580CE3A0EEAC3={DE='Alistair Düsterer', FR='Alistair Solemn', EN='Alistair Solemn', scene={DE='Düsterer Ausblick', FR='Domaine des Solemn', EN='Solemn Outlook'}, lvl=26, x=5430.179878626, y=1030.7999769598, z=2885.6999354996}
,U324EA69B65ACB13D={DE='Marschall Kain', FR='Maréchal Kain', EN='Marshal Kain', scene={DE='Kains Kommandoposten', FR='Commandement de Kain', EN='Kain\'s Command'}, lvl=40, x=3138.0799298584, y=1095.0899755228, z=3875.2899133805}
,U3268C9E95D9919A4={DE='Botin der Vigilie', FR='Messagère des Veilleurs', EN='Messenger of the Vigil', scene={DE='Geheiligter Hügel', FR='Colline Sacrée', EN='Hallowed Hill'}, lvl=52}
,U32773C7C106A2ABB={DE='Forrest Haener', FR='Forrest Haener', EN='Forrest Haener', scene={DE='Bruchsteinbecken-Basislager', FR='Camp de Pierre de Taille', EN='Quarrystone Base Camp'}, lvl=20, x=5692.2398727685, y=961.99997849762, z=4756.7798936777}
,U32B5288531C78624={DE='Melicore Rendos', FR='Melicore Rendos', EN='Melicore Rendos', scene={DE='Fallbach', FR='Repli', EN='Fallback'}, lvl=43, x=8614.98980744, y=917.93997948244, z=7002.9598434716}
,U32CBC5CE71DD13E0={DE='Nethel', FR='Nethel', EN='Nethel', scene={DE='Tal der Knochen', FR='Vallée de la Mort', EN='Valley of Bones'}, lvl=54}
,U32E344235D03EA86={DE='Ralyn Laurel', FR='Ralyn Laurel', EN='Ralyn Laurel', scene={DE='Lothams Schlag', FR='Bosquet de Lotham', EN='Lotham\'s Strike'}, lvl=35}
,U330D3BA72F1F5B17={DE='Tacitus der Ältere', FR='Tacitus l\'Ancien', EN='Tacitus the Elder', lvl=65, x=5472.2598776855, y=481.00998924859, z=5588.9298750777}
,U3333102C5C15083E={DE='Rahn Chuluun', FR='Rahn Chuluun', EN='Rahn Chuluun', scene={DE='Weißfall', FR='Chutes blanches', EN='Whitefall'}, lvl=34, x=3635.0699187499, y=1205.3699730579, z=1750.9299608637}
,U337CFEDA373E579E={DE='Asha Catari', FR='Asha Catari', EN='Asha Catari', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=51, x=6652.4698513057, y=893.55998002738, z=7050.7398424037}
,U3387592876806B8A={DE='Padma Ultan', FR='Padma Ultan', EN='Padma Ultan', scene={DE='Die Manufaktur', FR='La Manufacture', EN='The Manufactory'}, lvl=52, x=5999.7498658951, y=912.65997960046, z=5250.5198826417}
,U33BE255844803A67={DE='Greer Hontz', FR='Greer Hontz', EN='Greer Hontz', lvl=50}
,U33D92BA26FC7FFB1={DE='Koch Alo', FR='Chef Alo', EN='Chef Alo', lvl=50}
,U33EEF8150CDA5462={DE='Henrick Davshal', FR='Henrick Davshal', EN='Henrick Davshal', scene={DE='Tagesblindhöhlen', FR='Vallon du Jour', EN='Dayblind Hollows'}, lvl=33, x=2893.1999353319, y=1234.7999724001, z=2052.099954132}
,U33FA16E91969D019={DE='Suria Batar', FR='Suria Batar', EN='Suria Batar', scene={DE='Glücksküste', FR='Rivage de Fortune', EN='Fortune\'s Shore'}, lvl=52, x=6630.1898518037, y=890.19998010248, z=7093.4298414495}
,U340481956AAA12AE={DE='Nate Thorton', FR='Nate Thorton', EN='Nate Thorton', lvl=50}
,U342B8F0040112DE3={DE='Tam Dolchborn', FR='Tam Portedague', EN='Tam Daggerborne', scene={DE='Ardenburgh-Tor', FR='Porte d\'Ardenburgh', EN='Ardenburgh Gate'}, lvl=5, x=1125.2699748483, y=860.13998077437, z=1158.3199741095}
,U3436867F2A80DBC8={DE='Sanari Masu', FR='Sanari Masu', EN='Sanari Masu', scene={DE='Scheuerschwallhafen', FR='Havre de Hurlegrain', EN='Gritsquall Haven'}, lvl=50, x=5593.3798749782, y=880.7499803137, z=6629.3498518225}
,U3442C7B771A205AE={DE='Sualuune', FR='Sualuune', EN='Sualuune', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=4880.0998909213, y=1058.8299763333, z=4941.629889546}
,U344B58F54C907D8B={DE='Ayra Runenglaube', FR='Ayra Runefoi', EN='Ayra Runefaith', scene={DE='Der Untergang von Laternenhaken', FR='La Chute de Saillant de Lanterne', EN='The Fall of Lantern Hook'}, lvl=44}
,U349915D94134AA77={DE='Justus Grün', FR='Eustace Green', EN='Eustace Green', scene={DE='Hammerfürst-Posten', FR='Poste de Fiefmarteau', EN='Hammerlord Post'}, lvl=39}
,U34AEB3BE18A708F6={DE='Markwart Denegar', FR='Garde de Libremarche Denegar', EN='March Warden Denegar', scene={DE='Denegars Stand', FR='Bastion de Denegar', EN='Denegar\'s Stand'}, lvl=19, x=7263.4898376483, y=876.0299804192, z=5419.9898788538}
,U34BB14B671B612A1={DE='Jillian Rale', FR='Jillian Rale', EN='Jillian Rale', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7616.7998297513, y=915.32997954078, z=6391.1298571471}
,U34D44C1E1174255E={DE='Vigoth Phar', FR='Vigoth Phar', EN='Vigoth Phar', scene={DE='Wachfeste', FR='Donjon de Surplomb', EN='Overwatch Keep'}, lvl=19, x=6392.9098571073, y=901.64997984655, z=3169.4999291562}
,U34D4FE5B197C51B9={DE='Rudi Tanlop', FR='Rudi Tanlop', EN='Rudi Tanlop', scene={DE='Silberhöhen', FR='Monts Solides', EN='Sterling Hills'}, lvl=8, x=6213.9598611072, y=821.07998164743, z=3590.009919757}
,U34E79DED6EB39129={DE='Trevon Frendell', FR='Trevon Frendell', EN='Trevon Frendell', scene={DE='Trappers Rast', FR='Refuge du Trappeur', EN='Trapper\'s Rest'}, lvl=36}
,U3519C3FF6D9A2D4C={DE='Kommandant Xavier', FR='Commandant Xavier', EN='Commander Xavier', lvl=50}
,U351CEF161D9DDE37={DE='Gretta Greene', FR='Gretta Greene', EN='Gretta Greene', lvl=18}
,U3528744025BCBABE={DE='Adriana Weber', FR='Adriana Tisserand', EN='Adriana Weaver', scene={DE='Felsgrat', FR='Crêteroc', EN='Rock Ridge'}, lvl=30, x=4475.5398999639, y=903.95997979492, z=3712.8899170104}
,U35479A8C15231906={DE='Annette Kostral', FR='Annette Kostral', EN='Annette Kostral', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6021.769865403, y=832.94998138212, z=3122.5799302049}
,U354F40A10D8C3EEB={DE='Tacitus der Ältere', FR='Tacitus l\'Ancien', EN='Tacitus the Elder', lvl=65}
,U35532DE72D877D88={DE='Andra Sonari', FR='Andra Sonari', EN='Andra Sonari', scene={DE='Tristmoor', FR='Marécage de la Désolation', EN='Forlorn Fen'}, lvl=52}
,U3559294F270F7470={DE='Ralyn Laurel', FR='Ralyn Laurel', EN='Ralyn Laurel', scene={DE='Verseuchtes Feld', FR='Prairie infestée', EN='Infested Range'}, lvl=35}
,U35745F7E26D938E0={DE='Matius Serin', FR='Matius Serin', EN='Matius Serin', scene={DE='Laternenplateau', FR='Plateau de Lanterne', EN='Lantern Plateau'}, lvl=35, x=7382.9698349778, y=914.57997955754, z=6212.1198611483}
,U35BA549E22EFE7CE={DE='Keldum Revan', FR='Keldum Revan', EN='Keldum Revan', scene={DE='Glutwacht', FR='Guet de Braise', EN='Ember Watch'}, lvl=52}
,U35C1F879164BC05E={DE='Leutnant Fergon', FR='Lieutenant Fergon', EN='Lieutenant Fergon', scene={DE='Kahlschlägerlager', FR='Emprise du Récupérateur', EN='Reclaimer\'s Hold'}, lvl=40}
,U35EB251B083AE35E={DE='Schutzherr Nimto', FR='Seigneur-protecteur Nimto', EN='Lord-Protector Nimto', scene={DE='Altar der Arbeit', FR='Le Chœur des Labeurs', EN='The Chancel of Labors'}, lvl=60}
,U3611CC2276DCD477={DE='Adriana Weber', FR='Adriana Tisserand', EN='Adriana Weaver', scene={DE='Ewige Wacht', FR='Garde Éternelle', EN='Endless Watch'}, lvl=45}
,U3622AA5214B69704={DE='Amelia Monala', FR='Amelia Monala', EN='Amelia Monala', lvl=60}
,U363861521E98B1CC={DE='Tendrick Hugh', FR='Tendrick Hugh', EN='Tendrick Hugh', scene={DE='Nomadenofen', FR='Fournaise du Nomade', EN='Nomad\'s Furnace'}, lvl=44, x=7000.5498435255, y=886.13998019323, z=7086.9398415945}
,U056D571065EA1A65={DE='Dacia Ultan', FR='Dacia Ultan', EN='Dacia Ultan', scene={DE='Ekelkaskade', FR='Cascade infecte', EN='Foul Cascade'}, lvl=30}
,U364C707E13BFAD20={DE='Lester Eisenwalze', FR='Lester Ironbole', EN='Lester Ironbole', scene={DE='Güldenstein-Heiligtum', FR='Sanctuaire de la Pierre parfaite', EN='Gildstone Sanctum'}, lvl=45}
,U367C4291622571F3={DE='Asha Catari', FR='Asha Catari', EN='Asha Catari', scene={DE='Lothams Schlag', FR='Bosquet de Lotham', EN='Lotham\'s Strike'}, lvl=35}
,U36F1C24D0F60C61E={DE='Quartiermeister Timminsen', FR='Intendant Timminsen', EN='Quartermaster Timminsen', scene={DE='Steinkrone', FR='Canyon écarlate', EN='Stonecrest'}, lvl=26, x=3848.0399139896, y=974.93997820839, z=3051.3399317972}
,U377FC3B56E6C575F={DE='Temur Arslan', FR='Temur Arslan', EN='Temur Arslan', scene={DE='Die Manufaktur', FR='La Manufacture', EN='The Manufactory'}, lvl=52, x=5970.8798665404, y=916.42997951619, z=5207.1798836105}
,U379701F65ADB32BF={DE='Robyn Sturmgrab', FR='Robyn Tombetempête', EN='Robyn Stormgrave', scene={DE='Wolfsbann', FR='Aconit', EN='Wolfsbane'}, lvl=50}
,U37A6A06F74076A9B={DE='Ieros', FR='Ieros', EN='Ieros', scene={DE='Atia', FR='Atia', EN='Atia'}, lvl=52}
,U37F267547265725C={DE='Serge Iakov', FR='Serge Iakov', EN='Serge Iakov', scene={DE='Granitwache', FR='Guet de Granite', EN='Granite Watch'}, lvl=32}
,U37F5DB205A61A109={DE='Dehni Elphmen', FR='Dehni Elphmen', EN='Dehni Elphmen', scene={DE='Perspice', FR='Poivremord', EN='Perspice'}, lvl=35, x=3690.3199175149, y=1097.6799754649, z=4454.2099004406}
,U37FF8748759718EA={DE='Hauptmann Envris', FR='Capitaine Envris', EN='Captain Envris', lvl=50}
,U3805365A4D87B452={DE='Da Vidmoore', FR='Da Vidmoore', EN='Da Vidmoore', scene={DE='Arche der Auserwählten', FR='Arche des Élus', EN='Ark of the Ascended'}, lvl=8, x=6248.7598603293, y=820.69998165593, z=4345.4399028718}
,U381ED44A220929CF={DE='Alyete Bathsube', FR='Alyete Bathsube', EN='Alyete Bathsube', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=52, x=6008.3098657038, y=949.47997877747, z=5148.5998849198}
,U38591BC14AB9014C={DE='Dragomir Rakovic', FR='Dragomir Rakovic', EN='Dragomir Rakovic', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1622.4399637356, y=1074.0499759931, z=2625.6799413115}
,U386588A9216849BC={DE='Umi Kakra', FR='Umi Kakra', EN='Umi Kakra', scene={DE='Khaliti-Zeile', FR='Passage des Khalitis', EN='Khaliti Row'}, lvl=46, x=6566.5598532259, y=930.53997920081, z=7306.7198366821}
,U3875BDC4714E084F={DE='Niala Swald', FR='Niala Swald', EN='Niala Swald', scene={DE='Epochenplatz', FR='Place d\'Epoch', EN='Epoch Plaza'}, lvl=52}
,U3880A53725A7E8DC={DE='Sergeant Perdaro', FR='Sergent Perdaro', EN='Sergeant Perdaro', scene={DE='Heulendes Plateau', FR='Plateau Mugissant', EN='Howling Plateau'}, lvl=30, x=3622.4199190326, y=1104.879975304, z=3485.0999221019}
,U3894FAD214444A77={DE='Rolant Hennel', FR='Rolant Hennel', EN='Rolant Hennel', scene={DE='Verwildertes Dickicht', FR='Taillis Sauvage', EN='Untamed Copse'}, lvl=16, x=6052.4398647174, y=829.7699814532, z=2818.1599370092}
,U38A4C68052DE08BB={DE='Bewahrer Kiernan', FR='Protectrice Kiernan', EN='Warden Kiernan', scene={DE='Denegars Stand', FR='Bastion de Denegar', EN='Denegar\'s Stand'}, lvl=18, x=7251.1898379233, y=876.45998040959, z=5440.7098783907}
,U38B65D7E0FF30A15={DE='Kerasta', FR='Kerasta', EN='Kerasta', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=52}
,U38BA3C2F13E0CB1A={DE='Garam der Architekt', FR='Architecte Garam', EN='Garam the Architect', scene={DE='Leestein-Posten', FR='Pierre-sous-le-vent', EN='Leestone Stand'}, lvl=48, x=6731.9898495283, y=919.19997945428, z=7377.859835092}
,U39254FEE34E135E7={DE='Albahri Batu', FR='Albahri Batu', EN='Albahri Batu', scene={DE='Kommandozentrale Catari', FR='Centre de Commandement Catari', EN='Catari Command Center'}, lvl=52}
,U05B6FEA65A2E8AF4={DE='Rollo', FR='Rollo', EN='Rollo', lvl=52}
,U39268F32295BD69A={DE='Garret Hafenschmied', FR='Garret Portsmith', EN='Garret Portsmith', scene={DE='Dreienquell', FR='Trois-Sources', EN='Three Springs'}, lvl=37, x=7200.0598390661, y=879.84998033382, z=2122.3099525627}
,U3927E85B00984D9A={DE='Earl Balik', FR='Earl Balik', EN='Earl Balik', lvl=50}
,U3957CDE62A48A82C={DE='Evangar Havenson', FR='Evangar Havenson', EN='Evangar Havenson', scene={DE='Prüfung der Schildwache', FR='Épreuve de la Sentinelle', EN='Trial of the Sentinel'}, lvl=50}
,U395DC3900D2A3A75={DE='Tintalis', FR='Tintalis', EN='Tintalis', lvl=50}
,U396F821526DB04BD={DE='Weghüterin Ienja', FR='Garde-voie Ienja', EN='Waykeeper Ienja', scene={DE='Knorzwaldposten', FR='Poste de Bois-noueux', EN='Gnarlwood Post'}, lvl=26}
,U396F8E492C80C32C={DE='Havrica Ko', FR='Havrica Ko', EN='Havrica Ko', scene={DE='Phönixhöhe', FR='Butte du Phénix', EN='Phoenix Rise'}, lvl=50}
,U397CDDDC6A1DCB49={DE='Barlo Dregg', FR='Barlo Dregg', EN='Barlo Dregg', scene={DE='Gezeitenbrunnen-Zufluss', FR='Anse de Bellemarée', EN='Tidewell Inlet'}, lvl=52}
,U39B00CB239AB9A57={DE='Furias Talwin', FR='Furias Talwin', EN='Furias Talwin', scene={DE='Sumpfhaus', FR='Maison du Marais', EN='Marsh House'}, lvl=12, x=6507.2698545512, y=828.37998148426, z=3290.1499264594}
,U05CF889971AEA09B={DE='Mardain Weiden', FR='Mardain Willows', EN='Mardain Willows', scene={DE='Silberfeld', FR='Clairière d\'Argent', EN='Argent Glade'}, lvl=10, x=6038.1898650359, y=817.21998173371, z=3004.0899328534}
,U3A202B205A266B4A={DE='Nuna Falkenschwinge', FR='Nuna Ailedefaucon ', EN='Nuna Hawkwing ', lvl=1}
,U3A3987831453A81B={DE='Zenturio Morris', FR='Centurion Morris', EN='Centurion Morris', scene={DE='Dolchgrat', FR='Fil de la dague', EN='Dagger\'s Edge'}, lvl=37}
,U3A3C58B87C37745E={DE='Aziz Kafriti', FR='Aziz Kafriti', EN='Aziz Kafriti', scene={DE='Phönixhöhe', FR='Butte du Phénix', EN='Phoenix Rise'}, lvl=50}
,U05D5F79B6888F612={DE='Joyce Daley', FR='Joyce Daley', EN='Joyce Daley', scene={DE='Granitsturz', FR='Chutes de Granite', EN='Granite Falls'}, lvl=25, x=4947.1598894224, y=1057.4899763633, z=4922.1798899807}
,U3A64EB9C5E2C32B7={DE='Kara Brogan', FR='Kara Brogan', EN='Kara Brogan', scene={DE='Trollpesthöhlen', FR='Cavernes des Craspecs', EN='Trollblight Caverns'}, lvl=34}
,U3A6632B4078C4BD1={DE='Shyla Sternfeuer', FR='Shyla du Foyer Étoilé', EN='Shyla Starhearth', lvl=50}
,U3A6A8E0F16ED74B6={DE='Elija Teefus', FR='Elija Teefus', EN='Elija Teefus', scene={DE='Allerheiligstes der Vigilie', FR='Sanctum des Veilleurs', EN='Sanctum of the Vigil'}, lvl=52, x=7455.3098333608, y=904.69997977838, z=3064.9599314928}
,U3A8B9996451A4D99={DE='Uriel Chuluun', FR='Uriel Chuluun', EN='Uriel Chuluun', scene={DE='Orphiels Turm', FR='Aiguille d\'Orphiel', EN='Orphiel\'s Spire'}, lvl=52, x=5996.1398659758, y=1011.4499773923, z=5137.6798851639}
,U3AB93351773C540D={DE='Optio Merrik', FR='Optio Merrik', EN='Optio Merrik', scene={DE='Dunkelfeuerhain', FR='Bosquet de Noirfeu', EN='Darkfire Grove'}, lvl=29, x=4620.8998967148, y=924.34997933917, z=3503.9199216813}
,U05E091603C0BCFE9={DE='Valeria Tazin', FR='Valeria Tazin', EN='Valeria Tazin', scene={DE='Zarephs Wiederkehr', FR='Retour de Zareph', EN='Zareph\'s Return'}, lvl=50, x=1602.5099641811, y=1073.7699759994, z=2613.129941592}
,U3AD26F474632D4F2={DE='Kira Thanos', FR='Kira Thanos', EN='Kira Thanos', scene={DE='Seuchenlande', FR='Bois-Brisé', EN='Blightweald'}, lvl=40}
,U3AF85FFA601BF09B={DE='Sally Callens', FR='Sally Callens', EN='Sally Callens', scene={DE='Laternenhaken', FR='Saillant de Lanterne', EN='Lantern Hook'}, lvl=40, x=7611.6898298655, y=915.32997954078, z=6408.3098567631}
,U3B05765B389FCC9F={DE='Sylver Valis', FR='Sylver Valis', EN='Sylver Valis', scene={DE='Lebensfabrik', FR='Usine de la Vie', EN='Life Factory'}, lvl=5, x=998.12997769006, y=71.989998390898, z=1020.5999771878}
,U3B14BC670B416039={DE='Borrin Gammult', FR='Borrin Gammult', EN='Borrin Gammult', scene={DE='Glutrand', FR='Gouffre Incandescent', EN='Searing Brink'}, lvl=52}
,U05EBF1656F51C529={DE='Leesi Nalan', FR='Leesi Nalan', EN='Leesi Nalan', scene={DE='Thedeors Zirkel', FR='Cercle de Thedeor', EN='Thedeor\'s Circle'}, lvl=52, x=7410.9598343521, y=863.5299806986, z=2890.0499354023}
,U3B3A058C1DE61D9E={DE='Sylver Valis', FR='Sylver Valis', EN='Sylver Valis', scene={DE='Zaubererkessel', FR='Caldera du Charmeur', EN='Charmer\'s Caldera'}, lvl=51}
,U3B41C26218FCDB92={DE='Deeps', FR='Deeps', EN='Deeps', lvl=15}
,U05EE8F3A311EF549={DE='Charlie', FR='Charlie', EN='Charlie', scene={DE='Tavril-Plaza', FR='Place de Tavril', EN='Tavril Plaza'}, lvl=50}
,U3B53344356AE5E52={DE='Glitscher', FR='L\'Anguille', EN='Slither', scene={DE='Der Flachhof', FR='La Cour-plate', EN='The Flatyard'}, lvl=46}
,U3B827FF05D1FF6D9={DE='Gwyddon Düsterblatt', FR='Gwyddon Feuille-du-Couchant', EN='Gwyddon Duskenleaf', scene={DE='Dämmerscheid', FR='Pins du Bois du Crépuscule', EN='Gloamwood Pines'}, lvl=26, x=5180.3198842108, y=952.09997871891, z=3227.5999278575}
}) end