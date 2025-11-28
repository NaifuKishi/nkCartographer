local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal
local oFuncs	  = privateVars.oFuncs

---------- addon internal function block ---------

local function _uiImageGallery(name, parent) -- used by nkRebuff

	--if EnKai.internal.checkEvents (name, true) == false then return nil end
  
  local elementColor = EnKai.art.GetThemeColor("elementMainColor")
  local labelColor = EnKai.art.GetThemeColor("labelColor")
  local borderColor = EnKai.art.GetThemeColor("elementSubColor2")
  
	local imageGallery = EnKai.uiCreateFrame ('nkFrame', name, parent)	
	local inner = EnKai.uiCreateFrame ('nkFrame', name .. '.inner', imageGallery)
	local counter = EnKai.uiCreateFrame ('nkText', name .. '.counter', inner)
	local refresh = EnKai.uiCreateFrame ('nkTexture', name .. '.refresh.', inner)
	
	local smallImages = {}
	local smallImagesBorder = {}
	
	local to, object, x, y = "TOPLEFT", inner, 1, 1
	
	for idx = 1, 5, 1 do
		local smallBorder = EnKai.uiCreateFrame ('nkFrame', name .. '.smallBorder.' .. idx, inner)
		local smallImage = EnKai.uiCreateFrame ('nkTexture', name .. '.smallImage.' .. idx, smallBorder)
		
		smallBorder:SetWidth(28)
		smallBorder:SetHeight(28)
		smallBorder:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
		
		smallBorder:SetPoint("TOPLEFT", object, to, x, y)
		smallImage:SetPoint("TOPLEFT", smallBorder, "TOPLEFT", 1, 1)
		smallImage:SetPoint("BOTTOMRIGHT", smallBorder, "BOTTOMRIGHT", -1, -1)
		
		smallImage:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
			imageGallery:Rotate(idx - 3)
		end, name .. '.smallImage.' .. idx .. ".Left_Click")
		
		to, object, x, y = "TOPRIGHT", smallBorder, 1, 0

		table.insert(smallImagesBorder, smallBorder)
		table.insert(smallImages, smallImage)
	end

	local rotateLeft = EnKai.uiCreateFrame ('nkTexture', name .. '.rotateLeft', inner)
	local rotateRight = EnKai.uiCreateFrame ('nkTexture', name .. '.rotateRight', inner)
	
	local textureBorder = EnKai.uiCreateFrame ('nkTexture', name .. '.textureBorder', inner)
	local texture = EnKai.uiCreateFrame ('nkTexture', name .. '.texture', textureBorder)
	
	
	local properties = {}

	function imageGallery:SetValue(property, value)
		properties[property] = value
	end
	
	function imageGallery:GetValue(property)
		return properties[property]
	end
	
	local currentPos = 1
	local imageList = {}
	
	imageGallery:SetWidth(148)
	imageGallery:SetHeight(99)
	imageGallery:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)

	inner:SetPoint("TOPLEFT", imageGallery, "TOPLEFT", 1, 1)
	inner:SetPoint("BOTTOMRIGHT", imageGallery, "BOTTOMRIGHT", -1, -1)
	inner:SetBackgroundColor(elementColor.r, elementColor.g, elementColor.b, elementColor.a)
					
	rotateLeft:SetPoint("CENTERLEFT", inner, "CENTERLEFT", 15, 0)
	rotateLeft:SetTextureAsync("EnKai", "gfx/icons/small-arrowLeft.png")
	
	rotateRight:SetPoint("CENTERRIGHT", inner, "CENTERRIGHT", -15, 0)
	rotateRight:SetTextureAsync("EnKai", "gfx/icons/small-arrowRight.png")
	
	counter:SetPoint("BOTTOMCENTER", inner, "BOTTOMCENTER", 0, -1)
	counter:SetFontSize(12)
	counter:SetHeight(16)
	counter:SetFontColor(labelColor.r, labelColor.g, labelColor.b, labelColor.a)
	counter:SetText(currentPos .. ' / ' .. #imageList)
	
	textureBorder:SetPoint("BOTTOMCENTER", counter, "TOPCENTER", 0, -1)
	textureBorder:SetWidth(50)
	textureBorder:SetHeight(50)
	textureBorder:SetBackgroundColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
	
	texture:SetPoint("TOPLEFT", textureBorder, "TOPLEFT", 1, 1)
	texture:SetPoint("BOTTOMRIGHT", textureBorder, "BOTTOMRIGHT", -1, -1)
	
	refresh:SetPoint("BOTTOMLEFT", inner, "BOTTOMLEFT", 3, -3)
	refresh:SetWidth(15)
	refresh:SetHeight(15)
	refresh:SetTextureAsync("EnKai", "gfx/icons/small-iconRefresh.png")
	
	refresh:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		imageGallery:SetDefaultImages(true)
	end, name .. "refresh.Left_Click")
	
	rotateLeft:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		imageGallery:Rotate(-1)
	end, name .. "rotateLeft.Left_Click")
	
	rotateRight:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		imageGallery:Rotate(1)
	end, name .. "rotateRight.Left_Click")
	
	function imageGallery:Rotate(change)
	
		currentPos = currentPos + change
		if currentPos > #imageList then 
			currentPos = currentPos - #imageList
		elseif currentPos < 1 then 
			currentPos = #imageList + currentPos
		end
		
		imageGallery:ShowImages()
		
	end
	
	function imageGallery:AddImages( newImageList, showImagesFlag )
		if #imageList + #newImageList < 5 then return end
	
		for k, v in pairs (newImageList) do
			if imageGallery:FindImagePos(v.textureType, v.texturePath) == nil then
				table.insert(imageList, v)
			end
		end

		if showImagesFlag == true then 
			currentPos = math.floor(#imageList/2) + 1
			imageGallery:ShowImages() 
		end
	end
	
	function imageGallery:GetImagePos ()
		return currentPos
	end
	
	function imageGallery:GetImage(pos)
		return imageList[pos]
	end
	
	function imageGallery:FindImagePos (textureType, texturePath)
	
		for k, image in pairs (imageList) do
			if image.textureType == textureType and image.texturePath == texturePath then
				return k
			end
		end
		
		return nil
		
	end
	
	function imageGallery:SetImagePos( newImagePos )
		if newImagePos == nil then return end	
		currentPos = newImagePos
		if currentPos < 1 then currentPos = 1 end
		if currentPos > #imageList then currentPos = #imageList end
		imageGallery:ShowImages()
	end
	
	function imageGallery:SetImages( newImageList, showImagesFlag)
		if #newImageList < 5 then return end
	
		imageList = newImageList
		currentPos = math.floor(#imageList/2) + 1
		if showImagesFlag == true then imageGallery:ShowImages() end
	end
	
	function imageGallery:SetDefaultImages(showImagesFlag)
	
		if oFuncs.oInspectSystemSecure() == false then Command.System.Watchdog.Quiet() end
	
		imageList = {}
	
		local slot = Utility.Item.Slot.All()
		local items = oFuncs.oInspectItemDetail (slot)
		
		for k, v in pairs (items) do
			table.insert (imageList, { texturePath = v.icon, textureType = 'Rift' })
		end
		
		local abilityList = Inspect.Ability.New.List()
		local abilities = Inspect.Ability.New.Detail(abilityList)
		
		for k, v in pairs (abilities) do
			table.insert (imageList, { texturePath = v.icon, textureType = 'Rift' })
		end		
		
		if showImagesFlag == true then 
			currentPos = math.floor(#imageList/2) + 1
			imageGallery:ShowImages()
		else
			counter:SetText(currentPos .. ' / ' .. #imageList)
		end	
	end
	
	function imageGallery:ShowImages ()
	
		if imageList[currentPos].textureType == nil or imageList[currentPos].texturePath == nil then
			texture:SetTexture( 'EnKai.ui', 'gfx/iconMissing.png')
		else
			texture:SetTexture( imageList[currentPos].textureType, imageList[currentPos].texturePath)
		end
	
		for idx = -2, 2, 1 do
			local image = nil
		
			if currentPos + idx < 1 then
				image = imageList[#imageList + currentPos + idx]
			elseif currentPos + idx > #imageList then
				image = imageList[idx + 3]
			else
				image = imageList[currentPos + idx]
			end
			
			if image.textureType == nil or image.texturePath == nil then
				smallImages[idx + 3]:SetTextureAsync('EnKai.ui', 'gfx/iconMissing.png')
			else
				smallImages[idx + 3]:SetTextureAsync(image.textureType, image.texturePath)
			end			
		end
		
		counter:SetText(currentPos .. ' / ' .. #imageList)
	
	end
	
	return imageGallery
	
end

uiFunctions.NKIMAGEGALLERY = _uiImageGallery