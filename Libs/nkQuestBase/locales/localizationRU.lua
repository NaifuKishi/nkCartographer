local addonInfo, privateVars = ...

if ( EnKai.tools.lang.getLanguage() == "Russian"  ) then

	nkItemBase.texts = {	
				recipe		= 'Рецепт: %s',
				recipeUse	= '%s своими руками',
				requires	= 'Требуется %s %d',
				cost		= 'Costs: ',
				upgrade		= 'Upgrade result using ',
				
				profession = {	alchemist = 'Фармацевт',
								runecrafter = 'Рунодел',
								artificer = 'Ювелир',
								outfitter = 'Портной',
								armorsmith = 'Бронник',
								weaponsmith = "Оружейник" }
			}
	
end