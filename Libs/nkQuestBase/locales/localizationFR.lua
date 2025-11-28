local addonInfo, privateVars = ...

if ( EnKai.tools.lang.getLanguage() == "French"  ) then

	nkItemBase.texts = {	
				recipe		= 'Recette: %s',
				recipeUse	= 'Vous apprend � cr�er : %s',
				requires	= '%s %d n�cessaire',
				cost		= 'Costs: ',	
				upgrade		= 'Upgrade result using ',	
				
				profession = {	alchemist = 'Apothicaire',
								runecrafter = 'Fabricant de runes',
								artificer = 'Artificier',
								outfitter = 'Tailleur',
								armorsmith = 'Armorsmith',
								weaponsmith = "Fabricant d'armes" }
			}
	
end