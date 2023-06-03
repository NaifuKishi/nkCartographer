local addonInfo, privateVars = ...

if ( EnKai.tools.lang.getLanguage() == "English"  ) then

	nkItemBase.texts = {	
				recipe		= 'Recipe: %s',
				recipeUse	= 'Teaches you how to create %s',
				requires	= 'Requires %s %d',
				cost		= 'Costs: ',
				upgrade		= 'Upgrade result using ',
				
				profession = {	alchemist = 'alchemist',
								runecrafter = 'runecrafter',
								artificer = 'artificer',
								outfitter = 'outfitter',
								armorsmith = 'armorsmith',
								weaponsmith = 'weaponsmith' }
			}
	
end