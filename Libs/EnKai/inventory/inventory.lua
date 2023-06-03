local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.inventory then EnKai.inventory = {} end

local data		= privateVars.data
local oFuncs	= privateVars.oFuncs

---------- make global functions local ---------

local _iInspectItemList           = Inspect.Item.List
local _iUtilityItemSlotInventory  = Utility.Item.Slot.Inventory
local _iUtilityItemSlotQuest      = Utility.Item.Slot.Quest

---------- init local variables ---------

local _invManager = false

---------- local function block ---------

local function _storeItem (slot, details)

	if not details then return end

	local inventory = EnKaiInv[EnKai.unit.getPlayerDetails().name].inventory
	local itemCache = EnKaiInv[EnKai.unit.getPlayerDetails().name].itemCache
	
	if not details.type then details.type = "t" .. details.id end
	if details.stack == nil then details.stack = 1 end

	local prevId = nil
	if inventory.bySlot[slot] ~= nil then prevId = inventory.bySlot[slot].id end
	
	inventory.bySlot[slot] = { id = details.id, stack = details.stack }
	itemCache[details.id] = { typeId = details.type, stack = details.stack, category = details.category, cooldown = details.cooldown, name = details.name, icon = details.icon }
				
	if not inventory.byType[details.type] then
		inventory.byType[details.type] = details.stack
	elseif prevId == details.id then -- just more of the same, details contains new total
		inventory.byType[details.type] = details.stack
	else
		inventory.byType[details.type] = inventory.byType[details.type] + details.stack
	end

	inventory.byID[details.id] = details.type

end

local function _removeItem (slot)

	local inventory = EnKaiInv[EnKai.unit.getPlayerDetails().name].inventory
	local itemCache = EnKaiInv[EnKai.unit.getPlayerDetails().name].itemCache
	
	--print ('removing item in slot: ' .. slot)
	--dump (inventory.bySlot[slot])
	
	local slotDetails = inventory.bySlot[slot]
	local cacheDetails = itemCache[slotDetails.id]
	
	if cacheDetails == nil then -- wie auch immer das passieren kann
		local details = oFuncs.oInspectItemDetail(slotDetails.id)
		if not details then details = { id = slotDetails.id } end
				
		if not details.type then details.type = "t" .. details.id end
		if details.stack == nil then details.stack = 1 end
		cacheDetails = { typeId = details.type, stack = details.stack, category = details.category, cooldown = details.cooldown, name = details.name, icon = details.icon }

	end
	
	if not inventory.byType[cacheDetails.typeId] then
		inventory.byType[cacheDetails.typeId] = 0
	end
	
	inventory.byType[cacheDetails.typeId] = inventory.byType[cacheDetails.typeId] - slotDetails.stack
	if inventory.byType[cacheDetails.typeId] < 0 then inventory.byType[cacheDetails.typeId] = 0 end
	
	inventory.bySlot[slot] = nil
	itemCache[slotDetails.id] = nil
	inventory.byID[slotDetails.id] = nil
	
end

local function _processItems (list)

	local itemList = oFuncs.oInspectItemDetail(list)
	
	for slot, v in pairs(itemList) do
		if v.id ~= nil then
			_storeItem (slot, v)
		end
	end   

end

local function _fctGetInventory ()

	if oFuncs.oInspectSystemSecure() == false then Command.System.Watchdog.Quiet() end

	if (not EnKaiInv[EnKai.unit.getPlayerDetails().name]) or (not EnKaiInv[EnKai.unit.getPlayerDetails().name].inventory) then
		EnKaiInv[EnKai.unit.getPlayerDetails().name] = {}
	end
	
	EnKaiInv[EnKai.unit.getPlayerDetails().name].inventory = { byID = {}, byType = {}, bySlot = {} }
	EnKaiInv[EnKai.unit.getPlayerDetails().name].itemCache = {}

	local slots = { _iInspectItemList(_iUtilityItemSlotInventory()), 
					_iInspectItemList(Utility.Item.Slot.Equipment()), 
					_iInspectItemList(Utility.Item.Slot.Bank()), 
					_iInspectItemList(Utility.Item.Slot.Vault()), 
					_iInspectItemList(_iUtilityItemSlotQuest()) }

	for idx = 1, #slots, 1 do
	
		local lu = {}
		
		for slot, key in pairs(slots[idx]) do
		  if key ~= nil and key ~= false then lu[slot] = true end
		end
		
		_processItems (lu)
		
	end
	  
end

local function _fctProcessUpdate (_, updates)

	if EnKai.unit.getPlayerDetails() == nil then return end

	if (not EnKaiInv[EnKai.unit.getPlayerDetails().name]) or (not EnKaiInv[EnKai.unit.getPlayerDetails().name].inventory) then _fctGetInventory() end

	local inventory = EnKaiInv[EnKai.unit.getPlayerDetails().name].inventory
	local itemCache = EnKaiInv[EnKai.unit.getPlayerDetails().name].itemCache

	local updatedKeys = {}

	for slot, key in pairs(updates) do
	
		--print (slot, key)

		if not EnKai.strings.startsWith(slot, 'sg') then

			if key == "nil" then key = false end

			if inventory.bySlot[slot] ~= nil then -- target slot is not empty
			
				if not inventory.bySlot[slot].id then -- content of slot not known => Error
					dump(inventory.bySlot[slot])
				else
					if key ~= inventory.bySlot[slot].id then -- not just more of the same
					if updatedKeys[inventory.bySlot[slot].id] == nil then updatedKeys[inventory.bySlot[slot].id] = 0 end
						
						--print ("remove qty " .. inventory.bySlot[slot].id .. ": " .. inventory.bySlot[slot].stack)
						
						updatedKeys[inventory.bySlot[slot].id] = updatedKeys[inventory.bySlot[slot].id] - inventory.bySlot[slot].stack
						_removeItem (slot)
						
						
					end
				end
			end

			if key ~= false then
				local updateDetails = oFuncs.oInspectItemDetail(key)
				
				if updateDetails ~= nil then
				
					if updateDetails.stack == nil then updateDetails.stack = 1 end
					local qty = 0
					
					if inventory.bySlot[slot] ~= nil and inventory.bySlot[slot].id == updateDetails.id then
						-- more of the same, get update qty
						qty = updateDetails.stack - inventory.bySlot[slot].stack
					end
					
					_storeItem(slot, updateDetails)
					if updatedKeys[inventory.bySlot[slot].id] == nil then updatedKeys[inventory.bySlot[slot].id] = 0 end
					
					if qty == 0 then qty = inventory.bySlot[slot].stack	end
					updatedKeys[inventory.bySlot[slot].id] = updatedKeys[inventory.bySlot[slot].id] + qty
					
				end
				
				--print ("add qty " .. inventory.bySlot[slot].id .. ": " .. qty)
				
			end
			
		end
	end
	
	--dump (updatedKeys)

	EnKai.eventHandlers["EnKai.InventoryManager"]["Update"](updatedKeys)

end

---------- deprecated function block ---------

function EnKai.inventory.querySlotByKey (key)

	return EnKai.inventory.querySlotByType (key)

end

function EnKai.inventory.queryByKey (key)

	return EnKai.inventory.queryQtyById (key)

end

---------- library public function block ---------

function EnKai.inventory.findFreeBagSlot(bag)

	local startBag, endBag = 1, 8
	if bag then startBag, endBag = bag, bag end

	for idx = startBag, endBag, 1 do
		local bagSlot = _iUtilityItemSlotInventory(idx)
		
		if bagSlot then
			local bagInfo = _iInspectItemList(bagSlot)

			for slot, details in pairs (bagInfo) do
				if details == false then return slot end    
			end
		end
	end
	
	return nil

end

function EnKai.inventory.init (updateFlag)

	if not _invManager then
	
		if EnKai.internal.checkEvents ("EnKai.InventoryManager", true) == false then return nil end
		
		if not EnKaiInv then EnKaiInv = {} end
		
		Command.Event.Attach(Event.Item.Slot, _fctProcessUpdate, "EnKai.inventory.Item.Slot")
		Command.Event.Attach(Event.Item.Update, _fctProcessUpdate, "EnKai.inventory.Item.Update")
		
		EnKai.eventHandlers["EnKai.InventoryManager"]["Update"], EnKai.events["EnKai.InventoryManager"]["Update"] = Utility.Event.Create(addonInfo.identifier, "EnKai.InventoryManagerUpdate")

		_invManager = true
		
	end
		
	if updateFlag then EnKai.events.addInsecure(_fctGetInventory, oFuncs.oInspectTimeFrame(), 20) end

end

function EnKai.inventory.updateDB ()

	if not _invManager then 
		EnKai.tools.error.display ("EnKai", "Inventory manager not initialzed", 1)
	else
		_fctGetInventory()
	end

end


function EnKai.inventory.getAllItems ()

	return EnKaiInv[EnKai.unit.getPlayerDetails().name].itemCache
	
end

function EnKai.inventory.querySlotById (id)

	if not _invManager then 
		EnKai.tools.error.display ("EnKai", "Inventory manager not initialzed", 1)
		return
	end
	
	local inventory = EnKaiInv[EnKai.unit.getPlayerDetails().name].inventory

	for slot, v in pairs(inventory.bySlot) do
		if v.id ~= nil and EnKai.strings.startsWith(id, v.id) then return slot end
	end

	-- try with typeID if available
	
	if inventory.byID[id] ~= nil then
		return EnKai.inventory.querySlotByType (inventory.byID[id])
	end
	
	return nil

end

function EnKai.inventory.querySlotByType (typeId)

	if _invManager == false then 
		EnKai.tools.error.display ("EnKai", "Inventory manager not initialzed", 1)
		return
	end
	
	local inventory = EnKaiInv[EnKai.unit.getPlayerDetails().name].inventory
	local itemCache = EnKaiInv[EnKai.unit.getPlayerDetails().name].itemCache

	for slot, v in pairs(inventory.bySlot) do
		if itemCache[v.id] ~= nil and EnKai.strings.startsWith(typeId, itemCache[v.id].typeId) then return slot end
	end

	return nil

end

function EnKai.inventory.queryQtyById (key)

	if not _invManager then 
		EnKai.tools.error.display ("EnKai", "Inventory manager not initialzed", 1)
		return
	end
	
	if (not EnKaiInv[EnKai.unit.getPlayerDetails().name]) or (not EnKaiInv[EnKai.unit.getPlayerDetails().name].inventory) then _fctGetInventory() end
	
	if not string.find(key, ',') then
		-- key is an id, get type			
		key = inventory.byID[key]
	end
	
	local inventory = EnKaiInv[EnKai.unit.getPlayerDetails().name].inventory
	
	if inventory.byType[key] ~= nil then
		return inventory.byType[key]
	end
	
	return 0

end

function EnKai.inventory.queryByCategory (category)

	if not _invManager then 
		EnKai.tools.error.display ("EnKai", "Inventory manager not initialzed", 1)
		return
	end

	if EnKaiInv[EnKai.unit.getPlayerDetails().name] == nil then _fctGetInventory() end
	
	local retValues = {}
	
	local itemCache = EnKaiInv[EnKai.unit.getPlayerDetails().name].itemCache
	
	for id, details in pairs(itemCache) do
		if details.category == category then			
			local err, details = pcall(oFuncs.oInspectItemDetail, id)
			if err and details then
				retValues[id] = details
			else
				EnKai.tools.error.display ("EnKai", "Getting item information for " .. id .. " failed", 1)				
			end
		end
			
	end
	
	return retValues
	
end

function EnKai.inventory.getAvailableSlots()

	local availSlots = {}
	local allSlots = nil
	
	local slots = _iInspectItemList(_iUtilityItemSlotInventory())
	local initOk = false
	
	for slot, details in pairs (slots) do
		if not EnKai.strings.startsWith(slot, "sibg.") then initOk = true end 		
		if details == false then table.insert (availSlots, slot) end
	end
	
	if not initOk then return false end
	
	return availSlots

end

function EnKai.inventory.getQuestItems ()

	local slots = _iInspectItemList(_iUtilityItemSlotQuest())
	local lu = {}
	
	for slot, key in pairs(slots) do
		if key ~= nil then lu[slot] = true end
	end
	
	return oFuncs.oInspectItemDetail(lu)		

end

 function EnKai.inventory.getQuestItemSlot (typeId)
 
 	local info = EnKai.inventory.getQuestItems ()
 	
 	for slot, details in pairs(info) do
 		if details.type == typeId then
 			return slot
 		end
 	end
 
 	return nil
 
 end 