local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.items then EnKai.items = {} end

local lang        = privateVars.langTexts

---------- init local variables ---------

local _itemTypeTranslation = { 
    ['twohanded:staff'] = lang.items.txtTwoHand .. ' ' .. lang.items.txtStaff,
    ['twohanded:hammer'] = lang.items.txtTwoHand .. ' ' .. lang.items.txtHammer, 
    ['twohanded:polearm'] = lang.items.txtTwoHand .. ' ' .. lang.items.txtPolearm, 
    ['twohanded:sword'] = lang.items.txtTwoHand .. ' ' .. lang.items.txtSword, 
    ['twohanded:axe'] = lang.items.txtTwoHand .. ' ' .. lang.items.txtAxe, 
    ['twohanded:mace'] = lang.items.txtTwoHand .. ' ' .. lang.items.txtMace, 
    ['essence:lesser'] = lang.items.txtEssenceLesser, 
    ['essence:greater'] = lang.items.txtEssenceGreater, 
    ['mainhand:sword'] = lang.items.txtMainhand .. ' ' .. lang.items.txtSword, 
    ['mainhand:mace'] = lang.items.txtMainhand .. ' ' .. lang.items.txtMace, 
    ['mainhand:dagger'] = lang.items.txtMainhand .. ' ' .. lang.items.txtDagger,
    ['mainhand:axe'] = lang.items.txtMainhand .. ' ' .. lang.items.txtAxe,
    ['onehand:dagger'] = lang.items.txtOneHand .. ' ' .. lang.items.txtDagger,
    ['onehand:axe'] = lang.items.txtOneHand .. ' ' .. lang.items.txtAxe, 
    ['onehand:sword'] = lang.items.txtOneHand .. ' ' .. lang.items.txtSword, 
    ['onehand:mace'] = lang.items.txtOneHand .. ' ' .. lang.items.txtMace, 
    ['onehanded:dagger'] = lang.items.txtOneHand .. ' ' .. lang.items.txtDagger, 
    ['onehanded:axe'] = lang.items.txtOneHand .. ' ' .. lang.items.txtAxe, 
    ['onehanded:sword'] = lang.items.txtOneHand .. ' ' .. lang.items.txtSword, 
    ['onehanded:mace'] = lang.items.txtOneHand .. ' ' .. lang.items.txtMace, 
    ['onehanded:dagger'] = lang.items.txtOneHand .. ' ' .. lang.items.txtDagger,
    ['ranged:wand_life'] = lang.items.txtWand, 
    ['ranged:wand_air'] = lang.items.txtWand, 
    ['ranged:wand_fire'] = lang.items.txtWand, 
    ['ranged:wand_water'] = lang.items.txtWand, 
    ['ranged:wand_earth'] = lang.items.txtWand, 
    ['ranged:wand'] = lang.items.txtWand, 
    ['ranged:ranged_gun'] = lang.items.txtGun, 
    ['ranged:ranged_bow'] = lang.items.txtBow,
    ['ranged:gun'] = lang.items.txtGun,
    ['ranged:bow'] = lang.items.txtBow,
    ['helmet:plate'] = lang.items.txtHelmet .. ' ' .. lang.items.txtPlate, 
    ['helmet:chain'] = lang.items.txtHelmet .. ' ' .. lang.items.txtChain, 
    ['helmet:leather'] = lang.items.txtHelmet .. ' ' .. lang.items.txtLeather, 
    ['helmet:cloth'] = lang.items.txtHelmet .. ' ' .. lang.items.txtCloth,
    ['helmet:items'] = lang.items.txtHelmet,
    ['shoulders:plate'] = lang.items.txtShoulders .. ' ' .. lang.items.txtPlate, 
    ['shoulders:chain'] = lang.items.txtShoulders .. ' ' .. lang.items.txtChain, 
    ['shoulders:leather'] = lang.items.txtShoulders .. ' ' .. lang.items.txtLeather, 
    ['shoulders:cloth'] = lang.items.txtShoulders .. ' ' .. lang.items.txtCloth,
    ['shoulders:items'] = lang.items.txtShoulders,
    ['chest:plate'] = lang.items.txtChest .. ' ' .. lang.items.txtPlate, 
    ['chest:chain'] = lang.items.txtChest .. ' ' .. lang.items.txtChain, 
    ['chest:leather'] = lang.items.txtChest .. ' ' .. lang.items.txtLeather, 
    ['chest:cloth'] = lang.items.txtChest .. ' ' .. lang.items.txtCloth, 
    ['chest:items'] = lang.items.txtChest,
    ['gloves:plate'] = lang.items.txtGloves .. ' ' .. lang.items.txtPlate, 
    ['gloves:chain'] = lang.items.txtGloves .. ' ' .. lang.items.txtChain, 
    ['gloves:leather'] = lang.items.txtGloves .. ' ' .. lang.items.txtLeather, 
    ['gloves:cloth'] = lang.items.txtGloves .. ' ' .. lang.items.txtCloth,
    ['gloves:items'] = lang.items.txtGloves,
    ['belt:plate'] = lang.items.txtBelt .. ' ' .. lang.items.txtPlate, 
    ['belt:chain'] = lang.items.txtBelt .. ' ' .. lang.items.txtChain, 
    ['belt:leather'] = lang.items.txtBelt .. ' ' .. lang.items.txtLeather, 
    ['belt:cloth'] = lang.items.txtBelt .. ' ' .. lang.items.txtCloth,
    ['belt:items'] = lang.items.txtBelt,
    ['legs:plate'] = lang.items.txtLegs .. ' ' .. lang.items.txtPlate, 
    ['legs:chain'] = lang.items.txtLegs .. ' ' .. lang.items.txtChain, 
    ['legs:leather'] = lang.items.txtLegs .. ' ' .. lang.items.txtLeather, 
    ['legs:cloth'] = lang.items.txtLegs .. ' ' .. lang.items.txtCloth,
    ['legs:items'] = lang.items.txtLegs,
    ['feet:plate'] = lang.items.txtFeet .. ' ' .. lang.items.txtPlate, 
    ['feet:chain'] = lang.items.txtFeet .. ' ' .. lang.items.txtChain, 
    ['feet:leather'] = lang.items.txtFeet .. ' ' .. lang.items.txtLeather, 
    ['feet:cloth'] = lang.items.txtFeet .. ' ' .. lang.items.txtCloth, 
    ['feet:items'] = lang.items.txtFeet,
    ['ring:items'] = lang.items.txtRing, 
	['earring:items'] = lang.items.txtEarring, 
    ['offhand:items'] = lang.items.txtOffhand,
    ['offhand:totem'] = lang.items.txtOffhand,  
    ['offhand:shield'] = lang.items.txtShield,
    ['neck:items'] = lang.items.txtNeck, 
    ['shield:items'] = lang.items.txtShield, 
    ['trinket:items'] = lang.items.txtTrinket,
    ['pets:items'] = lang.items.txtPet, 
    ['currency:items'] = lang.items.txtCurrency, 
    ['mount:items'] = lang.items.txtMount, 
    ['other:items'] = lang.items.txtOther,
    ['synergycrystal:items'] = lang.items.txtSynergyCrystal, 
    ['focus:items'] = lang.items.txtFocus,
    ['recipe:artificer'] = lang.items.txtRecipe .. ' ' .. lang.profession.txtArtificer,  
    ['recipe:runecrafter'] = lang.items.txtRecipe .. ' ' .. lang.profession.txtRunecrafter, 
    ['recipe:weaponsmith'] = lang.items.txtRecipe .. ' ' .. lang.profession.txtWeaponsmith, 
    ['recipe:outfitter'] = lang.items.txtRecipe .. ' ' .. lang.profession.txtOutfitter,  
    ['recipe:armorsmith'] = lang.items.txtRecipe .. ' ' .. lang.profession.txtArmorsmith,
    ['recipe:alchemist'] = lang.items.txtRecipe .. ' ' .. lang.profession.txtApothecary, 
    ['recipe:ent reagent'] = lang.items.txtReagent,
    ['recipe:ent rift'] = lang.items.txtConsumable,
    ['consumable:lure'] = lang.items.txtLure, 
    ['consumable:husk'] = lang.items.txtHusk, 
    ['consumable:runes'] = lang.items.txtRune, 
    ['consumable:food'] = lang.items.txtConsumable,
    ['consumable:other'] = lang.items.txtConsumable,
    ['consumable:vial'] = lang.items.txtConsumable, 
    ['consumable:generic'] = lang.items.txtConsumable, 
    ['consumable:potion'] = lang.items.txtConsumable, 
    ['consumable:items'] = lang.items.txtConsumable,
    ['consumable:weaponenchant'] = lang.items.txtConsumable, 
    ['consumable:recipe'] = lang.items.txtRecipe,
    ['costume:helmet'] = lang.items.txtCostume .. ' ' .. lang.items.txtHelmet, 
    ['costume:shoulders'] = lang.items.txtCostume .. ' ' .. lang.items.txtShoulders, 
    ['costume:chest'] = lang.items.txtCostume .. ' ' .. lang.items.txtChest, 
    ['costume:legs'] = lang.items.txtCostume .. ' ' .. lang.items.txtLegs,
    ['costume:onehand'] = lang.items.txtCostume .. ' ' .. lang.items.txtOneHand, 
    ['costume:twohanded'] = lang.items.txtCostume .. ' ' .. lang.items.txtTwoHand, 
    ['costume:feet'] = lang.items.txtCostume .. ' ' .. lang.items.txtFeet, 
    ['costume:gloves'] = lang.items.txtCostume .. ' ' .. lang.items.txtGloves, 
    ['costume:items'] = lang.items.txtCostume,
    ['title:items'] = lang.items.txtTitle,
    ['container:items'] = lang.items.txtContainer,
    ['seal:items'] = lang.items.txtSeal,
    ['cape:items'] = lang.items.txtCape .. ' ' .. lang.items.txtCloth,
    ['cape:cloth'] = lang.items.txtCape .. ' ' .. lang.items.txtCloth,
    ['consumable:upgradeitem'] = lang.items.txtConsumable,
    ['dimension:items'] = lang.items.txtDimension,
    ['consumable:rune'] = lang.items.txtRune, 
    ['consumable:itemupgrade'] = lang.items.txtItemUpgrade,
    ['misc:other'] = lang.items.txtOther
}

local _riftCategoryToType = {  
    ['weapon onehand dagger'] = 'onehand:dagger', ['weapon onehand axe'] = 'onehand:axe', ['weapon onehand mace'] = 'onehand:mace', ['weapon onehand sword'] = 'onehand:sword',
    ['weapon ranged bow'] = 'ranged:bow', ['weapon ranged gun'] = 'ranged:gun', ['weapon ranged wand'] = 'ranged:wand', ['weapon totem'] = 'offhand:items', 
    ['weapon twohand staff'] = 'twohanded:staff', ['weapon twohand sword'] = 'twohanded:sword', ['weapon twohand hammer'] = 'twohanded:hammer', ['weapon twohand polearm'] = 'twohanded:polearm', ['weapon twohand axe'] = 'twohanded:axe', ['weapon twohand mace'] = 'twohanded:mace', 
    ['armor leather head'] = 'helmet:leather', ['armor leather chest'] = 'chest:leather', ['armor leather shoulders'] = 'shoulders:leather', ['armor leather hands'] = 'gloves:leather', ['armor leather waist'] = 'belt:leather', ['armor leather legs'] = 'legs:leather', ['armor leather feet'] = 'feet:leather',
    ['armor chain head'] = 'helmet:chain', ['armor chain chest'] = 'chest:chain', ['armor chain shoulders'] = 'shoulders:chain', ['armor chain hands'] = 'gloves:chain', ['armor chain waist'] = 'belt:chain', ['armor chain legs'] = 'legs:chain', ['armor chain feet'] = 'feet:chain',
    ['armor plate head'] = 'helmet:plate', ['armor plate chest'] = 'chest:plate', ['armor plate shoulders'] = 'shoulders:plate', ['armor plate hands'] = 'gloves:plate', ['armor plate waist'] = 'belt:plate', ['armor plate legs'] = 'legs:plate', ['armor plate feet'] = 'feet:plate',
    ['armor cloth head'] = 'helmet:cloth', ['armor cloth chest'] = 'chest:cloth', ['armor cloth shoulders'] = 'shoulders:cloth', ['armor cloth hands'] = 'gloves:cloth', ['armor cloth waist'] = 'belt:cloth', ['armor cloth legs'] = 'legs:cloth', ['armor cloth feet'] = 'feet:cloth',
    ['armor accessory ring'] = 'ring:items', ['armor accessory neck'] = 'neck:items', ['armor accessory trinket'] = 'trinket:items', ['armor cape'] = 'cape:items',
	['armor accessory earring'] = 'earring:items', 
    ['planar lesser'] = 'essence:lesser',['planar greater'] = 'essence:greater', ['weapon shield'] = 'offhand:shield', ['armor accessory seal'] = 'seal:items',
    ['misc pet'] = 'pets:items', ['consumable enchantment'] = 'consumable:rune', ['misc other'] = 'misc:other', ['consumable food'] = 'consumable:food', ['consumable consumable'] = 'consumable:generic'
}

local _armorTypeByClass = {
	rogue		= {'cloth', 'leather'},
	mage		= {'cloth'},
	warrior		= {'cloth', 'leather', 'chain', 'plate'},
	cleric		= {'cloth', 'leather', 'chain'},
	primalist	= {'cloth', 'leather'}
}

local _weaponMidTypeByClass = {
	rogue		= {'onehand'},
	mage		= {'onehand', 'twohand'},
	warrior		= {'onehand', 'twohand'},
	cleric		= {'onehand', 'twohand'},
	primalist	= {'onehand', 'twohand'}
}

local _slotToCategory = {
	helmet			= {mainType = 'armor', classType = _armorTypeByClass, subType = {'head'}},
	cape			= {mainType = 'armor', subType = {'cape'}},
	shoulders		= {mainType = 'armor', classType = _armorTypeByClass, subType = {'shoulders'}},
	chest			= {mainType = 'armor', classType = _armorTypeByClass, subType = {'chest'}},
	gloves			= {mainType = 'armor', classType = _armorTypeByClass, subType = {'hands'}},
	belt			= {mainType = 'armor', classType = _armorTypeByClass, subType = {'waist'}},
	legs			= {mainType = 'armor', classType = _armorTypeByClass, subType = {'legs'}},
	feet			= {mainType = 'armor', classType = _armorTypeByClass, subType = {'feet'}},
	focus			= {mainType = 'planar', subType = {'vessel'}},
	handmain		= {mainType = 'weapon', classType = _weaponMidTypeByClass, subType = {'axe', 'dagger', 'mace', 'sword', 'hammer', 'polearm'}},
	handoff			= {mainType = 'weapon', midType = {'onehand'}, subType = {'axe', 'dagger', 'mace', 'sword', 'hammer'}, exceptions = {'weapon shield'}},
	ranged			= {mainType = 'weapon', midType = {'ranged'}, subType = {'bow', 'gun', 'wand', 'totem'}},
	earring1		= {mainType = 'armor', midType = {'accessory'}, subType = {'earring'}},
	earring2		= {mainType = 'armor', midType = {'accessory'}, subType = {'earring'}},
	neck			= {mainType = 'armor', midType = {'accessory'}, subType = {'neck'}},
	trinket			= {mainType = 'armor', midType = {'accessory'}, subType = {'trinket'}},
	ring1			= {mainType = 'armor', midType = {'accessory'}, subType = {'ring'}},
	ring2			= {mainType = 'armor', midType = {'accessory'}, subType = {'ring'}},
	synergy			= {mainType = 'armor', midType = {'accessory'}, subType = {'synergy'}},
	seal			= {mainType = 'armor', midType = {'accessory'}, subType = {'seal'}}
}

local _slotText = {
	helmet			= lang.items.txtHelmet,
	cape			= lang.items.txtCape,
	shoulders		= lang.items.txtShoulders,
	chest			= lang.items.txtChest,
	gloves			= lang.items.txtGloves,
	belt			= lang.items.txtBelt,
	legs			= lang.items.txtLegs,
	feet			= lang.items.txtFeet,
	focus			= lang.items.txtFocus,
	handmain		= lang.items.txtMainhand,
	handoff			= lang.items.txtOffhand,
	ranged			= lang.items.txtRanged,
	earring1		= lang.items.txtEarring .. " 1",
	earring2		= lang.items.txtEarring .. " 2",
	neck			= lang.items.txtNeck,
	trinket			= lang.items.txtTrinket,
	ring1			= lang.items.txtRing .. ' 1',
	ring2			= lang.items.txtRing .. ' 2',
	synergy			= lang.items.txtSynergyCrystal,
	seal			= lang.items.txtSeal
}

local itemRarityColor = {trash = {0.502, 0.502, 0.502, 1}, sellable = {1, 1, 1, 1}, uncommon = {0.149, 0.498, 0, 1}, rare = { 0.278, 0.467, 0.718, 1 }, epic = { 0.596, 0.365, 0.788, 1 }, relic = { 1, 0.416, 0, 1 }, transcendent = {1, 0.8, 0.2, 1}, quest = {1, 0.847, 0, 1}, ascended = {0.93, 0.51, 0.93, 1}}

---------- library public function block ---------
            
function EnKai.items.getRessource (ID, subID) 

  if ID == 'itemTypeTranslation' then    
    return _itemTypeTranslation[subID]	
  elseif ID == 'slotText' then
	return _slotText[subID]
  else
    return nil
  end
--
--	if subID == nil then
--		return privateVars.items[ID]
--	else
--		return privateVars.items[ID][subID]
--	end
		
end

function EnKai.items.translateRiftCategoryToSlot (ID)

	for k, v in pairs(_slotToCategory) do
		if string.find(ID, v.mainType) ~= nil then
			for l, w in pairs(v.subType) do
				if string.find(ID, w) ~= nil then
					return k
				end
			end
		end
	end

end

function EnKai.items.translateRiftCategory (ID) 

	if ID == nil then return nil end

	local retValue = _riftCategoryToType[ID]
	
	if retValue == nil then
		if string.find(ID, 'dimension') == 1 then
			retValue = 'dimension:items'
		elseif string.find(ID, 'crafting') == 1 then
			local profession = string.sub(ID, string.len("crafting recipe")+2)
			if profession == 'apothecary' then profession = 'alchemist' end
			if profession == 'runecrafting' then profession = 'runecrafter' end
			retValue = 'recipe:' .. profession
		end
	end
	
	return retValue
		
end

function EnKai.items.translateRiftSlotToCategory (slot, class)

	local info = _slotToCategory[slot]
	local categoryList = {}
	
	if info.classType ~= nil then
		for k, v in pairs(info.classType[class]) do
			for l, w in pairs(info.subType) do
				table.insert(categoryList, info.mainType .. " " .. v .. " " .. w)
			end			
		end
	elseif info.midType == nil then
		for l, w in pairs(info.subType) do
			table.insert(categoryList, info.mainType .. " " .. w)
		end		
	else
		for k, v in pairs(info.midType) do
			for l, w in pairs(info.subType) do
				table.insert(categoryList, info.mainType .. " " .. v .. " " .. w)
			end			
		end
	end
	
	if info.exceptions then
		for k, v in pairs (info.exceptions) do
			table.insert(categoryList, info.exceptions)
		end
	end
	
	return categoryList

end

function EnKai.items.getRarityColor (rarity)

	if itemRarityColor[string.lower(rarity)] == nil then
		EnKai.tools.error.display ("EnKai", "Could not find color definition for rarity " .. rarity, 1)
	else
		return itemRarityColor[string.lower(rarity)]
	end

end