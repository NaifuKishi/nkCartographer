local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal
local lang          = privateVars.langTexts

local InspectItemDetail	= Inspect.Item.Detail

local itemCache = {}

---------- addon internal function block ---------

local function _uiItemTooltip(name, parent) 

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	local defaultTitleColor = {1, 1, 1, 1}
	local defaultSubTitleColor = {1, 1, 1, 1}	
	local defaultLinesColor = {1, 1, 1, 1}	
	local defaultBorderColor = { 0.557, 0.553, 0.431, 1 }
	
	local defaultWidth = 225

	local tooltip = LibEKL.UICreateFrame ('nkFrame', name, parent)
	local tooltipInner = LibEKL.UICreateFrame ('nkFrame', name .. '.inner', tooltip)
	local isEquipped = LibEKL.UICreateFrame('nkText', name .. '.isEquipped', tooltipInner)
	local title = LibEKL.UICreateFrame('nkText', name .. '.title', tooltipInner)
	local bound = LibEKL.UICreateFrame('nkText', name .. '.bop', tooltipInner)	
	local itemCat = LibEKL.UICreateFrame('nkText', name .. '.cat', tooltipInner)
	local itemType = LibEKL.UICreateFrame('nkText', name .. '.type', tooltipInner)
	local description = LibEKL.UICreateFrame('nkText', name .. '.desc', tooltipInner)
	local dps = LibEKL.UICreateFrame('nkText', name .. '.dps', tooltipInner)	
	local equip = LibEKL.UICreateFrame('nkText', name .. '.equip', tooltipInner)
	local use = LibEKL.UICreateFrame('nkText', name .. '.use', tooltipInner)
	local level = LibEKL.UICreateFrame('nkText', name .. '.level', tooltipInner)
	local faction = LibEKL.UICreateFrame('nkText', name .. '.faction', tooltipInner)
	local calling = LibEKL.UICreateFrame('nkText', name .. '.calling', tooltipInner)
	local set = LibEKL.UICreateFrame('nkText', name .. '.set', tooltipInner)
	local costLabel = LibEKL.UICreateFrame('nkText', name .. '.costLabel', tooltipInner)
	local costCurrencyIcon = LibEKL.UICreateFrame('nkTexture', name .. '.costCurrencyIcon', tooltipInner)
	local costCurrencyText = LibEKL.UICreateFrame('nkText', name .. '.costCurrency', tooltipInner)
	local costShopIcon = LibEKL.UICreateFrame('nkTexture', name .. '.costShopIcon', tooltipInner)
	local costShopText = LibEKL.UICreateFrame('nkText', name .. '.costShop', tooltipInner)
	local upgradeText =  LibEKL.UICreateFrame('nkText', name .. '.upgradeText', tooltipInner)
	local upgradeItem1 = LibEKL.UICreateFrame('nkTexture', name .. '.upgradeItem1', tooltipInner)
	local upgradeCount1 = LibEKL.UICreateFrame('nkText', name .. '.upgradeCount1', tooltipInner)
	local upgradeItem2 = LibEKL.UICreateFrame('nkTexture', name .. '.upgradeItem2', tooltipInner)
	local upgradeCount2 = LibEKL.UICreateFrame('nkText', name .. '.upgradeCount2', tooltipInner)
	local upgradeItem3 = LibEKL.UICreateFrame('nkTexture', name .. '.upgradeItem3', tooltipInner)
	local upgradeCount3 = LibEKL.UICreateFrame('nkText', name .. '.upgradeCount3', tooltipInner)
	
	local stats = {}
	
	local riftDetails = nil
	local nkDetails = nil
	local thisItemID = nil

	local properties = {}

	function tooltip:SetValue(property, value)
		properties[property] = value
	end
	
	function tooltip:GetValue(property)
		return properties[property]
	end
	
	tooltip:SetValue("name", name)
	tooltip:SetValue("parent", parent)
	
	tooltip:SetWidth(defaultWidth)
	tooltip:SetBackgroundColor (defaultBorderColor[1], defaultBorderColor[2], defaultBorderColor[3], defaultBorderColor[4])
	
	tooltipInner:SetPoint ("TOPLEFT", tooltip, "TOPLEFT", 1, 1)
	tooltipInner:SetPoint ("BOTTOMRIGHT", tooltip, "BOTTOMRIGHT", -1, -1)
	tooltipInner:SetBackgroundColor (0, 0, 0, 1)
	
	isEquipped:SetFontSize(12)
	isEquipped:SetFontColor(0.58, 0.58, 0.58, 1)
	isEquipped:SetPoint("TOPLEFT", tooltip, "TOPLEFT")	
	EnKai.ui.setFont(isEquipped, addonInfo.id, "MontserratSemiBold")
	
	title:SetWordwrap(true)
	title:SetFontSize(15)
	title:SetFontColor(defaultTitleColor[1], defaultTitleColor[2], defaultTitleColor[3], defaultTitleColor[4])
	EnKai.ui.setFont(title, addonInfo.id, "Montserrat")
		
	bound:SetPoint ("TOPLEFT", title, "BOTTOMLEFT", 0, -3)
	bound:SetFontSize(12)
	bound:SetFontColor(1, 1, 1, 1)
	bound:SetWidth(defaultWidth- 4)
	EnKai.ui.setFont(bound, addonInfo.id, "Montserrat")
	
	itemCat:SetPoint("TOPLEFT", bound, "BOTTOMLEFT", 0, -3)
	itemCat:SetFontSize(12)
	itemCat:SetFontColor(1, 1, 1, 1)
	itemCat:SetWidth(defaultWidth- 4)
	EnKai.ui.setFont(itemCat, addonInfo.id, "Montserrat")
	
	itemType:SetPoint("CENTERRIGHT", itemCat, "CENTERRIGHT")
	itemType:SetFontSize(12)
	itemType:SetFontColor(1, 1, 1, 1)
	EnKai.ui.setFont(itemType, addonInfo.id, "Montserrat")
	
	description:SetFontSize(12)
	description:SetFontColor (1,1,1,1)
	description:SetWidth(defaultWidth-4)
	description:SetWordwrap(true)
	EnKai.ui.setFont(description, addonInfo.id, "Montserrat")
	
	dps:SetPoint("TOPLEFT", itemCat, "BOTTOMLEFT", 0, 10)
	dps:SetFontSize(12)
	dps:SetWordwrap(true)
	dps:SetWidth(defaultWidth-4)
	dps:SetFontColor(1, 1, 1, 1)
	EnKai.ui.setFont(dps, addonInfo.id, "Montserrat")
	
	equip:SetFontSize(12)
	equip:SetFontColor (1,1,1,1)
	equip:SetWidth(defaultWidth-4)
	equip:SetWordwrap(true)
	EnKai.ui.setFont(equip, addonInfo.id, "Montserrat")
	
	use:SetFontSize(12)
	use:SetFontColor (1,1,1,1)
	use:SetWidth(defaultWidth-4)
	use:SetWordwrap(true)
	EnKai.ui.setFont(use, addonInfo.id, "Montserrat")
	
	set:SetFontSize(12)
	set:SetFontColor(0.455, 0.929, 0.882, 1)
	set:SetWidth(defaultWidth-4)
	set:SetWordwrap(true)
	EnKai.ui.setFont(set, addonInfo.id, "Montserrat")
		
	costLabel:SetFontSize(12)
	costLabel:SetFontColor(1, 1, 1, 1)
	costLabel:SetWordwrap(false)
	EnKai.ui.setFont(costLabel, addonInfo.id, "Montserrat")
	if nkItemBase then costLabel:SetText(nkItemBase.texts.cost) end
	
	costCurrencyIcon:SetWidth(14)
	costCurrencyIcon:SetHeight(14)
	
	costCurrencyText:SetFontSize(12)
	costCurrencyText:SetFontColor(1, 1, 1, 1)
	EnKai.ui.setFont(costCurrencyText, addonInfo.id, "Montserrat")
	
	costCurrencyText:SetWordwrap(false)
	costCurrencyText:SetPoint("CENTERLEFT", costCurrencyIcon, "CENTERRIGHT", 2, 0)
	
	costShopIcon:SetTextureAsync("LibMap", "gfx/shopCurrency.png")
	costShopIcon:SetWidth(14)
	costShopIcon:SetHeight(14)
	
	costShopText:SetFontSize(12)
	costShopText:SetFontColor(1, 1, 1, 1)
	costShopText:SetWordwrap(false)
	costShopText:SetPoint("CENTERLEFT", costShopIcon, "CENTERRIGHT", 2, 0)
	EnKai.ui.setFont(costShopText, addonInfo.id, "Montserrat")
	
	upgradeText:SetFontSize(12)
	upgradeText:SetFontColor(1, 1, 1, 1)
	upgradeText:SetWordwrap(false)
	EnKai.ui.setFont(upgradeText, addonInfo.id, "Montserrat")
	if nkItemBase then upgradeText:SetText(nkItemBase.texts.upgrade) end
	
	upgradeItem1:SetPoint("CENTERLEFT", upgradeText, "CENTERRIGHT", 2, 0)
	upgradeItem1:SetWidth(16)
	upgradeItem1:SetHeight(16)
	
	upgradeCount1:SetPoint("CENTERLEFT", upgradeItem1, "CENTERRIGHT", 2, 0)
	upgradeCount1:SetFontColor(1, 1, 1, 1)
	upgradeCount1:SetWordwrap(false)
	EnKai.ui.setFont(upgradeCount1, addonInfo.id, "Montserrat")
	
	upgradeItem2:SetPoint("CENTERLEFT", upgradeCount1, "CENTERRIGHT", 2, 0)
	upgradeItem2:SetWidth(16)
	upgradeItem2:SetHeight(16)
	
	upgradeCount2:SetPoint("CENTERLEFT", upgradeItem2, "CENTERRIGHT", 2, 0)
	upgradeCount2:SetFontColor(1, 1, 1, 1)
	upgradeCount2:SetWordwrap(false)
	EnKai.ui.setFont(upgradeCount2, addonInfo.id, "Montserrat")
	
	upgradeItem3:SetPoint("CENTERLEFT", upgradeCount2, "CENTERRIGHT", 2, 0)
	upgradeItem3:SetWidth(16)
	upgradeItem3:SetHeight(16)
	
	upgradeCount3:SetPoint("CENTERLEFT", upgradeItem3, "CENTERRIGHT", 2, 0)
	upgradeCount3:SetFontColor(1, 1, 1, 1)
	upgradeCount3:SetWordwrap(false)
	EnKai.ui.setFont(upgradeCount3, addonInfo.id, "Montserrat")
	
	--level:SetPoint("TOPLEFT", dps, "BOTTOMLEFT")
	level:SetFontSize(12)
	level:SetFontColor (1,1,1,1)
	EnKai.ui.setFont(level, addonInfo.id, "Montserrat")
	
	faction:SetFontSize(12)
	faction:SetFontColor (1,1,1,1)
	faction:SetWordwrap(true)
	EnKai.ui.setFont(faction, addonInfo.id, "Montserrat")
	
	calling:SetPoint("TOPLEFT", level, "BOTTOMLEFT")
	calling:SetFontSize(12)
	calling:SetFontColor (1,1,1,1)
	EnKai.ui.setFont(calling, addonInfo.id, "Montserrat")
	
	function tooltip:SetItem(itemID, itemLibDetails, equipped, equipSlot)
	
		thisItemID = itemID
		if itemID == nil then return end		

		local err, details = pcall (InspectItemDetail, itemID)

		if err == true then tooltip:SetItemDetails(details, itemLibDetails, equipped, equipSlot) end

		local tooltipCoRoutine = coroutine.create(
		   function ()
				for idx = 1, 10, 1 do
					local err, details = pcall (InspectItemDetail, itemID)
					if err == true then 
						tooltip:SetItemDetails(details, itemLibDetails, equipped, equipSlot)
						coroutine.yield(nil)
					end		
					coroutine.yield(idx)
				end
		end)

		LibEKL.CoRoutines.add ({ func = tooltipCoRoutine, counter = 10, active = true })	
	end
	
	function tooltip:SetItemDetails(details, itemLibDetails, equipped, equipSlot)
	
		if not details then return end
	
		local visible = tooltip:GetVisible()
		tooltip:SetVisible(false)
	
		riftDetails = details
		nkDetails = itemLibDetails
		
		local object = title
		local height = 6
		
		title:ClearAll()
		title:SetWidth(defaultWidth - 4)
		
		if equipped == true then
			isEquipped:SetVisible(true)			
			height = height + isEquipped:GetHeight()
			
			if equipSlot ~= nil then
				isEquipped:SetText(string.format(lang.isEquipped, "(" .. equipSlot .. ")"))
			else
				isEquipped:SetText(string.format(lang.isEquipped, ""))
			end
			
			title:SetPoint ("TOPLEFT", isEquipped, "BOTTOMLEFT")
		else
			isEquipped:SetVisible(false)
			title:SetPoint ("TOPLEFT", tooltip, "TOPLEFT")
		end
			
		if itemLibDetails ~= nil and itemLibDetails.augmented == true then	
			title:SetText(itemLibDetails.name)
		else
			title:SetText(details.name)
		end
		
		height = height + title:GetHeight()
		
		local color = EnKai.items.getRarityColor ("uncommon")
		
		if details.rarity ~= nil then
			color = EnKai.items.getRarityColor (details.rarity)
			if color == nil then color = EnKai.items.getRarityColor ("trash") end
		end
		
		title:SetFontColor (color[1], color[2], color[3], color[4])
		
		if details.bound == true or details.bind ~= nil then
			
			if details.bound == true then
				bound:SetText(lang.bound)
			else
				bound:SetText(lang.boundText[details.bind])
			end
			
			height = height + bound:GetHeight() -4
			itemCat:SetPoint("TOPLEFT", bound, "BOTTOMLEFT", 0, -3)
			bound:SetVisible(true)
			object = bound
		else
			bound:SetVisible(false)
			itemCat:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -3)
		end

		local riftSlot, itemTypeText = nil
		
		--if EnKai.items.getRessource ('riftCategoryToType', details.category) ~= nil then riftSlot = EnKai.items.getRessource ('riftCategoryToType', details.category) end

		if EnKai.items.translateRiftCategory (details.category) ~= nil then riftSlot = EnKai.items.translateRiftCategory (details.category) end
		
		if riftSlot ~= nil then
		
		  itemTypeText = EnKai.items.getRessource ('itemTypeTranslation', riftSlot)
			
			if itemTypeText == nil then
				LibEKL.Tools.Error.Display (addonInfo.toc.Identifier, string.format("itemTooltip could not get item type for rift slot %s", riftSlot), 2)
				itemCat:SetVisible(false)
				itemType:SetVisible(false)
			else
			
				if string.find(itemTypeText, " ") == nil then
					itemCat:SetText(itemTypeText)
					itemType:SetText("")
				else
					itemCat:SetText(LibEKL.strings.leftBack (itemTypeText, " "))
					itemType:SetText(LibEKL.strings.rightBack(itemTypeText, " "))
				end			
			
				itemCat:SetVisible(true)
				itemType:SetVisible(true)
			
				height = height + itemCat:GetHeight() -4
				object = itemCat
			end
		elseif details.category ~= nil then
			itemCat:SetText(LibEKL.strings.Capitalize(details.category))
			itemType:SetText("")

			height = height + itemCat:GetHeight() -4
			object = itemCat

			itemCat:SetVisible(true)
			itemType:SetVisible(true)
		else
			itemCat:SetVisible(false)
			itemType:SetVisible(false)
		end
		
		if details.description ~= nil or details.flavor ~= nil then
			local thisDesc
			if details.description ~= nil then thisDesc = details.description end
			if details.flavor ~= nil then
				if thisDesc ~= nil then thisDesc = thisDesc .. "\n\n" .. details.flavor else thisDesc = details.flavor end
			end

			description:SetText (thisDesc)
			description:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, 10)
			description:SetVisible(true)
			height = height + description:GetHeight() + 10
			object = description
		else			
			description:SetVisible(false)			
		end
		
		if details.damageMin ~= nil then		
			local dpsValue = (details.damageMax + details.damageMin) / 2 / details.damageDelay
			dps:SetText (string.format (lang.dps, dpsValue, details.damageMax, details.damageMin, details.damageDelay))
			dps:SetVisible(true)
			object = dps
			height = height + dps:GetHeight() + 10
		else
			dps:SetVisible(false)
		end
		
		local counter = 1
		local y = 10
		
		if (itemLibDetails == nil or itemLibDetails.augmented ~= true) and details.stats ~= nil then
		
			local statList = {	'armor', 'dexterity', 'strength', 'endurance', 'parry', 'intelligence', 'wisdom', 'powerSpell', 'critSpell', 'focus', 'block',
								'toughness', 'powerAttack', 'critAttack', 'critPower', 'hit', 'dodge', 'resistWater', 'resistFire', 'resistEarth',
								'resistLife', 'resistDeath', 'resistAir', 'resistAll', 'valor', 'deflect', 'vengeance' }
				
			for _, v in pairs (statList) do
				
				if details.stats[v] ~= nil then
				
					local statLine = stats[counter]
					if statLine == nil then
						statLine = LibEKL.UICreateFrame('nkText', name .. '.stats.' .. counter, tooltipInner)
						statLine:SetFontSize(12)
						statLine:SetFontColor(1,1,1,1)
						EnKai.ui.setFont(statLine, addonInfo.id, "Montserrat")
						
						table.insert(stats, statLine)				
					end  
					
					statLine:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, y)
					statLine:SetText(string.format("%s: +%d", lang.stats[v], details.stats[v]))
					statLine:SetVisible(true)
					height = height + statLine:GetHeight() + y
					
					object = statLine
					y = -3
					counter = counter + 1
				end
			end	
		
			if counter <= #stats then
				for idx = counter, #stats, 1 do
					stats[idx]:SetVisible(false)
				end
			end
		elseif itemLibDetails ~= nil then
			local statList = {'armor', 'dex', 'str', 'endu', 'parry', 'int', 'wis', 'sp', 'scrit', 'focus', 'block', 'tough', 'atp', 'crit', 'cp', 'hit', 'dodge', 'resiW', 'resiF', 'resiE', 'resiL', 'resiD', 'resiA', 'resiAll', 'hm', 'defl', 'veng' }
			local labelist = {	armor = 'armor', dex = 'dexterity', str = 'strength', endu = 'endurance', parry = 'parry', int = 'intelligence', wis = 'wisdom', sp = 'powerSpell', scrit = 'critSpell', focus = 'focus', block = 'block',
								tough = 'toughness', atp = 'powerAttack', crit = 'critAttack', cp = 'critPower', hit = 'hit', dodge = 'dodge', resiW = 'resistWater', resiF = 'resistFire', resiE = 'resistEarth',
								resiL = 'resistLife', resiD = 'resistDeath', resiA = 'resistAir', resiAll = 'resistAll', hm = 'valor' , defl = 'deflect', veng = 'vengeance' }
			
			for k, v in pairs (statList) do
				if itemLibDetails[v] ~= nil then
					local statLine = stats[counter]
					if statLine == nil then
						statLine = LibEKL.UICreateFrame('nkText', name .. '.stats.' .. counter, tooltipInner)
						statLine:SetFontSize(12)
						statLine:SetFontColor(1,1,1,1)
						
						table.insert(stats, statLine)				
					end  
					
					statLine:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, y)
					statLine:SetText(string.format("%s: +%d", lang.stats[labelist[v]], itemLibDetails[v]))
					statLine:SetVisible(true)
					height = height + statLine:GetHeight() + y
					
					object = statLine
					y = -3
					counter = counter + 1
				end
			end
			
			if counter <= #stats then
				for idx = counter, #stats, 1 do
					stats[idx]:SetVisible(false)
				end
			end
		else
			for idx = 1, #stats, 1 do
				stats[idx]:SetVisible(false)
			end			
		end
		
		y = 10
		
		if itemLibDetails ~= nil then
		
			local useText = itemLibDetails['use' .. LibEKL.Tools.Lang.GetLanguageShort () ]
		
			if useText ~= nil then
				use:SetText (string.format(lang.use, useText))
				use:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, y)
				use:SetVisible(true)
				height = height + use:GetHeight() + y
				object = use
				y = 10
			else
				use:SetVisible(false)
			end
			
			local equipText = itemLibDetails['equip' .. LibEKL.Tools.Lang.GetLanguageShort () ]
			
			if equipText ~= nil then
				equip:SetText (string.format(lang.equip, equipText))
				equip:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, y)
				equip:SetVisible(true)
				height = height + equip:GetHeight() + y
				object = equip
				y = 10
			else
				equip:SetVisible(false)
			end
		else
			use:SetVisible(false)
			equip:SetVisible(false) 			
		end
		
		if itemLibDetails ~= nil then
		
			local setText = itemLibDetails['itemSet' .. LibEKL.Tools.Lang.GetLanguageShort () ]
		
			if setText ~= nil then
				local text = setText
			
				local setBoni = itemLibDetails['itemSetBonus']
				
				if setBoni ~= nil then
					for idx = 1, #setBoni, 1 do
						text = text .. "\n" .. setBoni[idx][1] .. ": "
						if LibEKL.Tools.Lang.GetLanguageShort () == "DE" then
							text = text .. setBoni[idx][2]
						elseif LibEKL.Tools.Lang.GetLanguageShort () == "FR" then
							text = text .. setBoni[idx][4]
						else
							text = text .. setBoni[idx][3]
						end
					end
				end
				
				set:SetText (text)
				set:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, y)
				set:SetVisible(true)
				height = height + set:GetHeight() + y
				object = set
				y = 10
				
				
				
			else
				set:SetVisible(false)
			end
		else
			set:SetVisible(false)
		end
		
		if details.requiredLevel ~= nil then
			level:SetText (string.format(lang.requiredLevel, details.requiredLevel))
			level:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, y)
			level:SetVisible(true)
			height = height + level:GetHeight() + y
			object = level
			y = -3
		else
			level:SetVisible(false)
		end
			
		if details.requiredCalling ~= nil then
			local callingText = nil
			local tempCallings = LibEKL.strings.split(details.requiredCalling, " ")
			for k, v in pairs (tempCallings) do
				if callingText ~= nil then
					callingText = callingText .. ', ' .. lang.callings[v]
				else
					callingText = lang.callings[v]
				end
			end
		
			calling:SetText (string.format(lang.requiredCalling, callingText))
			if calling:GetWidth() > defaultWidth then 
				defaultWidth = calling:GetWidth() 
				if itemCat then itemCat:SetWidth(defaultWidth) end
			end
			calling:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, y)
			calling:SetVisible(true)
			object = calling
			height = height + calling:GetHeight() + y
			y = -3
		else
			calling:SetVisible(false)
		end
		
		if itemLibDetails ~= nil and itemLibDetails.rfl ~= nil then
		  local levelText = lang.factionList[tonumber(itemLibDetails.rfl)]
			if levelText == nil then
			   LibEKL.Tools.Error.Display ("EnKai", "Unknown faction level: " .. itemLibDetails.rfl, 1) 
			end
			local factionText = itemLibDetails.rf
         
      if lang.factionNames ~= nil then   
  			if lang.factionNames[factionText] ~= nil then			 
  			  factionText = lang.factionNames[factionText]
  			else
  			  LibEKL.Tools.Error.Display ("EnKai", "Unknown faction: " .. itemLibDetails.rf, 1) 
  			end
  	  end
			local text = string.format(lang.requiredFaction, factionText, levelText)
			faction:SetText (text)
			faction:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, y)
			faction:SetVisible(true)
			height = height + faction:GetHeight() + y
			object = faction
			y = -3
		else
			faction:SetVisible(false)
		end
		
		costLabel:SetVisible(false)
		costCurrencyIcon:SetVisible(false)
		costCurrencyText:SetVisible(false)
		costShopIcon:SetVisible(false)
		costShopText:SetVisible(false)
		
		upgradeText:SetVisible(false)
		upgradeItem1:SetVisible(false)
		upgradeCount1:SetVisible(false)
		upgradeItem2:SetVisible(false)
		upgradeCount2:SetVisible(false)
		upgradeItem3:SetVisible(false)
		upgradeCount3:SetVisible(false)

		if nkItemBase and itemLibDetails then
		
			if itemLibDetails.isupgrade == 1 then
			
				if itemLibDetails.cost ~= nil and type(itemLibDetails.cost) == 'table' then
					y = 10
				
					upgradeText:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, y)
					upgradeText:SetVisible(true)
				
					local counter = 1
				
					for k, v in pairs (itemLibDetails.cost) do					  
						local upgradeItemDetails = nkItemBase.Query.byKey(k, false, "consumable", false)
						if upgradeItemDetails == nil then upgradeItemDetails = nkItemBase.Query.byKey(k, false, nil, false) end
					
						if upgradeItemDetails ~= nil then
							if counter == 1 then
								upgradeItem1:SetTextureAsync("Rift", string.format('Data/\\UI\\item_icons\\%s.dds', upgradeItemDetails.icon))											
								upgradeCount1:SetText(tostring(v))
								upgradeItem1:SetVisible(true)
								upgradeCount1:SetVisible(true)
							elseif counter == 2 then
								upgradeItem2:SetTextureAsync("Rift", string.format('Data/\\UI\\item_icons\\%s.dds', upgradeItemDetails.icon))
								upgradeCount2:SetText(tostring(v))											
								upgradeItem2:SetVisible(true)
								upgradeCount2:SetVisible(true)
							else
								upgradeItem3:SetTextureAsync("Rift", string.format('Data/\\UI\\item_icons\\%s.dds', upgradeItemDetails.icon))
								upgradeCount3:SetText(tostring(v))											
								upgradeItem3:SetVisible(true)
								upgradeCount3:SetVisible(true)
							end
							
							counter = counter + 1
						end						
					end			
				
					object = upgradeText
					height = height + upgradeText:GetHeight() + y
					y = 5
				end 
				
			elseif itemLibDetails.cost ~= nil and type(itemLibDetails.cost) ~= 'string' then
				y = 10
				costLabel:SetVisible(true)
				costLabel:SetPoint("TOPLEFT", object, "BOTTOMLEFT", 0, y)
	
				local costObject = costLabel
				
				for k, v in pairs (itemLibDetails.cost) do
					if k == "shop" then
						costShopIcon:SetPoint("CENTERLEFT", costObject, "CENTERRIGHT", 5, 0)
						costShopText:SetText(tostring(v))
						costShopText:SetVisible(true)
						costShopIcon:SetVisible(true)
						costObject = costShopText
					else
						local currencyItem = nkItemBase.Query.byKey(k, false, "currency", false)
						
						if currencyItem ~= nil then
							costCurrencyIcon:SetPoint("CENTERLEFT", costObject, "CENTERRIGHT", 5, 0)
							costCurrencyIcon:SetTextureAsync("Rift", string.format('Data/\\UI\\item_icons\\%s.dds', currencyItem.icon))
							costCurrencyText:SetText(tostring(v))
							costCurrencyText:SetVisible(true)
							costCurrencyIcon:SetVisible(true)
							costObject = costCurrencyText
						end
					end
					counter = counter + 1
				end
				
				object = costLabel
				height = height + costLabel:GetHeight() + y
				y = 5
			end
		end
		
		
		tooltip:SetHeight(height)
		tooltip:SetWidth(defaultWidth)
		tooltip:SetVisible(visible)
		
	end
	
	function tooltip:GetDetails()
		return riftDetails, nkDetails
	end
	
	local oSetPoint = tooltip.SetPoint
	
	function tooltip:SetPoint(from, object, to, x, y)
		target = object
		if x == nil or y == nil then
			oSetPoint(self, from, object, to)
		else
			oSetPoint(self, from, object, to, x, y)
		end
	end
	
	local oSetVisible = tooltip.SetVisible
		
	function tooltip:SetVisible(flag)
		if thisItemID == nil then
			oSetVisible(self, false)
		else
			oSetVisible(self, flag)
		end	
	end
	
	function tooltip:GetTarget() return target end
	function tooltip:GetItemID() return thisItemID end
	
	return tooltip
	
end

uiFunctions.NKITEMTOOLTIP = _uiItemTooltip