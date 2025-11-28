local addonInfo, privateVars = ...

if privateVars.itemLoader == nil then
privateVars.itemLoader = {}
end

privateVars.itemLoader["nt"] =
function() privateVars.internal.loadItems({
['I2CA3C70DD03CCDCB,0C57FD6A73DC07FC,,,,,,'] = {qKey='q016EE9D3D24B9328'}
,['I08890CE4BE2FE569,B6597B54954D92DF,,,,,,'] = {qKey='q16CA67CBA0552474'}
,['IFC04200059BF7CD2,0E888748F371B1D5,,,,,,'] = {qKey='qFD1DF76ACEAF5753',useDE='Erzeugt eine Aura, die Vergrabene Testsubjekte in der Wüste der Lebensgießerei freilegt.', useEN='Applies an aura that will expose Buried Test Subjects in the deserts of the Biofoundry.', useFR='Génère une aura faisant apparaître les Cobayes enterrés dans les déserts de la Biofonderie.'}
,['I6946EEC491C1192E,4824BF6E44C0A8B7,,,,,,'] = {qKey='q53D8244BE17F06F7'}
,['I0403D2EC56A3E3F6,353DC4DB8FBF20EF,,,,,,'] = {qKey='q1262679FC36E2EEF'}
,['I0A7940A02DB39B6F,FEB374E8270B8F97,,,,,,'] = {qKey='q61FE6FEE9FF3BEA5',useDE='Lässt gestrandete Meerjungfrauen schrumpfen, damit sie sicher zur Atragarianischen Quelle gebracht werden können.', useEN='Shrinks Beached Mermaids into itself so that can be safely carried to the Atragarian Well.', useFR='Réduit la taille des Sirènes échouées afin de pouvoir les transporter jusqu\'au Puits Atragarian en toute sécurité.'}
,['IFB09D7EC4ABAEEBB,F047AC229D95B97F,,,,,,'] = {qKey='qFCE0B5906DB37D7F'}
,['I35517273AB3596F7,DB929A9EC44E3A7D,,,,,,'] = {qKey='q5B00871B72841089'}
,['I5F6D2BA360A7D720,016E88C4633E2C49,,,,,,'] = {qKey='q6C959AEE9EF91DB6'}
,['I701A83888CBD3DCB,C8FAF3C3AC3A267E,,,,,,'] = {qKey='q6D1AFAEA06887261'}
,['I2EE9DAF758AB05FE,39DF287CDE3AF89C,,,,,,'] = {qKey='q75BF5EF31CD40EAF',useDE='Enthüllt die wahre Aura von nahegelegenen Onir.', useEN='Reveals the true aura of nearby Onir.', useFR='Dévoile la véritable aura des Onir proches.'}
,['I5603F43788C408CF,261F04DCF6C86265,,,,,,'] = {qKey='q4DCAC0A2C3EE82E0'}
,['I2AE4541351F62A9E,CF7CB79AE1FD6E9B,,,,,,'] = {qKey='q52EA07672EC87055'}
,['I56BEDFB497BDD030,1A5C7CE50ACFDA2E,,,,,,'] = {qKey='q546FFDADC31FBD28'}
,['I26016B365ACA13AA,6C63940EAB4EA3FC,,,,,,'] = {qKey='q7294A69592F017DE',useDE='Überprüft das Geschlecht von Mutanten in der Venefic-Stätte.', useEN='Checks the gender of mutants in Venific Locus.', useFR='Vérifie le sexe des mutants dans le Territoire Vénéfique.'}
,['I73C36840C73FF1CE,35838CD7A684FAB4,,,,,,'] = {qKey='q704F44D80FED0167'}
,['I580D35AD27E50414,C09D0609B9281298,,,,,,'] = {qKey='q77E1D0FCD1C4DF34'}
,['I7E1E2B5C826BE5AD,FF1CEB84CF56B861,,,,,,'] = {qKey='q7D5A40C9E1793BBF'}
,['I35AAFC9ABDA44990,1557599E584100AD,,,,,,'] = {qKey='q6F5B05F55176709C'}
,['IFB86F34AADC3C087,BFBD7C3636663F2A,,,,,,'] = {qKey='qFD608BFE162ACDDB',useDE='Vor dem Kampf auf Zyklonische Böen anwenden, damit sich ihre Körper in Gasförmige Hüllen verwandeln.', useEN='Use on Cyclonic Squalls prior to combat so their bodies turn into Gaseous Husks.', useFR='À utiliser sur les Bourrasques cycloniques avant de combattre, pour que leurs corps se transforment en Enveloppes gazeuses.'}
,['I7E9FE98FE3D97667,5C6C8462303A936B,,,,,,'] = {qKey='q1834EAEA2EBA431D',useDE='Beschwört den Vertrauter-Traum.', useEN='Summons the Familiar Dream.', useFR='Invoque le Rêve familier.'}
,['I33DA255E603E18EF,3EE449C5D24737A9,,,,,,'] = {qKey='q6D96AD96A10543D9',useDE='Verändert die Realität.', useEN='Alters reality.', useFR='Altère la réalité.'}
,['I5FF77B769607A03F,254E3904DFFFBDB0,,,,,,'] = {qKey='q5290B511B6AB76B1',useDE='Bewirkt, dass die Leichen der Architekten in der Daazez-Ödnis mit neuem Leben erfüllt werden.', useEN='Causes Architect corpses in Daazez Wastes to spring forth with life.', useFR='Donne vie aux cadavres des Architectes du Désert de Daazez.'}
,['I12471AD185CC39F4,D007F4E4B53ABBF2,,,,,,'] = {qKey='q479C132F86B19438'}
,['I672A3A353052B981,129D28FA28C2B1AC,,,,,,'] = {qKey='q33B28855ADE70C47',useDE='Beschwört Kondraums Leber.', useEN='Summons Kondraum\'s Liver.', useFR='Invoque le Foie de Kondraum.'}
,['IFC8D68DE32A2D782,3D932FBC3D03BADB,,,,,,'] = {qKey='qFE97E9F69CDC1B27'}
,['IFEE45F875852DF47,A17D0CCB07544758,,,,,,'] = {qKey='qFE5EBD346E8DC840',useDE='Testet die Auswirkungen des Stabilisators an einem Planarchen in einem Großen Jagdriss.', useEN='Tests the effects of the Stabilizer on a Planarch within a Great Hunt rift.', useFR='Teste les effets du Stabilisateur sur un Planarche dans une Faille de grande chasse.'}
,['I483F2D5AB2470006,744D29F16022AD26,,,,,,'] = {qKey='q3935C0B9F1CAE50F',useDE='Beschwört einen speziellen Yarnosaurier!', useEN='Summons a special Yarnosaur!', useFR='Invoque un yarnosaure spécial comme compagnon !'}
,['I23751B9F7DFEF19C,EAD19C1E4EBFA4E9,,,,,,'] = {qKey='q62CFBD35C0D38BC7',useDE='Feuert einen Fischstrahl auf Haie im Goboro-Riff.', useEN='Shoots a Fish Ray at sharks in Goboro Reef.', useFR='Tire un Piscirayon sur les Requins du Récif de Goboro.'}
,['I6D10BAD49D51D215,CABF1D8EA50A500D,,,,,,'] = {qKey='qFC764D5FBDC7E8ED'}
,['IFDC695C99704597F,EF8042BE7C2CBA0A,,,,,,'] = {qKey='q1A2C1565872754E8',useDE='Beschwört den Vertrauter-Traum.', useEN='Summons the Familiar Dream.', useFR='Invoque le Rêve familier.'}
,['I1FAD2B1A858EC24E,0EC7F492C24DC98B,,,,,,'] = {qKey='q3D429B18E991A799'}
}) end