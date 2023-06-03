local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

---------- library public function block ---------

function EnKai.docEmbedded (name, parent) -- wird nur in nkRebuff genutzt

	local doc = EnKai.uiCreateFrame ('nkFrame', name, parent)
	
	local grid = EnKai.uiCreateFrame("nkGrid", name .. '.grid', doc)
	
	local bodyColor = EnKai.art.GetThemeColor('elementMainColor')
			
	grid:SetHeaderHeight(0)
	grid:SetTransparentHeader(true)
	grid:SetFontSize(13)
	grid:SetPoint("TOPLEFT", doc, "TOPLEFT")	
		
	local cols = {	{ align = 'left', width = 300  } }
	local rows = 20
	local width = 500	
	
	local slider = EnKai.uiCreateFrame("nkScrollbox", name .. ".slider", doc)	
	
	slider:SetPoint("TOPLEFT", grid, "TOPRIGHT", -14, 0)
	slider:SetHeight(grid:GetHeight())
	slider:SetRange(1, 1)
	slider:SetVisible(false)
	slider:SetLayer(2)
	
	Command.Event.Attach(EnKai.events[name .. ".slider"].ScrollboxChanged, function ()		
		grid:SetRowPos(math.floor(slider:GetValue('value')), true)
	end, name .. '.slider.ScrollboxChanged')
	
	local scrollPane = EnKai.uiCreateFrame("nkScrollpane", name .. '.scrollPane', doc)
	scrollPane:SetPoint("TOPLEFT", grid, "TOPRIGHT")
	scrollPane:SetWidth(264)
	scrollPane:SetHeight(grid:GetHeight())
		
	local body = EnKai.uiCreateFrame ('nkFrame', name .. '.body', doc)
	body:SetBackgroundColor(bodyColor.r, bodyColor.g, bodyColor.b, bodyColor.a)
	body:SetPoint("TOPLEFT", grid, "TOPRIGHT")
	body:SetHeight(grid:GetHeight())

	local toc = {}
	local content = {}
	local gridInit = false
	
	local uiElements = { header = {}, text = {}, image = {} }

	local function updateGrid()
		
		if gridInit == false then return end
		
		local gridValues = {}
		local l1 = 1
		
		for _, level1 in pairs (toc) do
			table.insert(gridValues, {{ value = string.format("%d %s", l1, level1.title), key = level1.title }})
		
			l2 = 1
			for _, level2 in pairs (level1.subContent) do
				table.insert(gridValues, {{ value = string.format(" %d.%d %s", l1, l2, level2.title), key = level2.title }})
				l3 = 1
			
				for _, level3  in pairs (level2.subContent) do
					
					table.insert(gridValues, {{ value = string.format("  %d.%d.%d %s", l1, l2, l3, level3.title), key = level3.title }})
				
					l4 = 1
					for _, level4 in pairs (level3.subContent) do
						table.insert(gridValues, {{ value = string.format("   %d.%d.%d.%d %s", l1, l2, l3, l4, level4.title), key = level4.title }})
					end
					
					l3 = l3 + 1
				end
				
				l2 = l2 + 1
			end
			
			l1 = l1 + 1	
		end
		
		grid:SetCellValues(gridValues)
		grid:SetRowPos(1, false)
		
		if (#gridValues-rows) > 0 then
			slider:SetRange (1, #gridValues-rows+1)
			slider:AdjustValue(1)
			slider:SetVisible(true)			
		else
			slider:SetVisible(false)
		end
		
	end

	function doc:AddChapter(parentChapter, newTitle, newContent, updateFlag)
		
		if parentChapter == nil then
			table.insert(toc, { title = newTitle, subContent = {} })
		else
			local parentFound = false
		
			for _, level1 in pairs (toc) do
				if level1.title == parentChapter then
					table.insert(level1.subContent, { title = newTitle, subContent = {} })
					parentFound = true
				else
					for _, level2 in pairs (level1.subContent) do
						if level2.title == parentChapter then
							table.insert(level2.subContent, { title = newTitle, subContent = {} })
							parentFound = true
						else
							for _, level3 in pairs (level2.subContent) do
								if level3.ittle == parentChapter then
									table.insert(level3.subContent, { title = newTitle, subContent = {} })
									parentFound = true
									break
								end
							end
						end
						
						if parentFound == true then break end
					end
				end
				if parentFound == true then break end
			end	 
		end

		content[newTitle] = newContent
		
		if updateFlag == true then updateGrid() end		
	end
	
	local function getFreeElement(type)
	
		local retValue = nil
	
		for k, v in pairs(uiElements[type]) do
			if v:GetVisible() == false then 
				retValue = v
				break
			end	
		end
	end
	
	local function createElement (type)
		
		if type == 'text' then
			local text = EnKai.uiCreateFrame('nkText', name .. '.text' .. (#uiElements.text +1), body)
			text:SetWordwrap(true)
			text:SetFontSize(13)
			text:SetWidth(body:GetWidth())
			table.insert(uiElements.text, text)
			return text			
		elseif type == 'image' then
			local image = EnKai.uiCreateFrame ('nkFrame', name .. '.image' .. (#uiElements.image +1), body)
			image:SetBackgroundColor(0,0,0,1)
			image.texture = EnKai.uiCreateFrame ('nkTexture', name .. '.image.texture' .. (#uiElements.image +1), image)
			image.texture:SetPoint("CENTER", image, "CENTER")
			table.insert(uiElements.image, image)
			return image
		elseif type == 'header' then
			local header = EnKai.uiCreateFrame('nkText', name .. '.header' .. (#uiElements.header +1), body)
			header:SetWordwrap(false)
			header:SetFontSize(17)
			header:SetEffectGlow({ offsetX = 2, offsetY = 2})
			header:SetWidth(body:GetWidth())
			table.insert(uiElements.header, header)
			return header			
		end
		
		return nil
		
	end
	
	local function showChapter (key)
	
		if content[key] == nil then return end
		
		local height = 0
		
		for _, sub in pairs (uiElements) do
			for k, v in pairs (sub) do
				v:ClearAll()
				v:SetVisible(false)
			end			
		end
		
		local lastElement = nil
		local parentObject, pointFrom, pointTo, x, y = body, "TOPLEFT", "TOPLEFT", 0, 0
		
		for k, entry in pairs (content[key]) do
			local setParent, addHeight = true, true
		
			local widget = getFreeElement(entry.type)
			if widget == nil then widget = createElement(entry.type) end
			if widget ~= nil then
				if lastElement ~= nil and lastElement.type == 'header' then y = 5 end
							
				if entry.type == 'text' then
					widget:SetText(entry.text, true)					
				elseif entry.type == 'image' then
					widget:SetWidth(entry.width + 4)
					widget:SetHeight(entry.height + 4)
					
					widget.texture:SetWidth(entry.width)
					widget.texture:SetHeight(entry.height)
					widget.texture:SetTextureAsync(entry.textureType, entry.texturePath)
					
					if entry.align == 'lastright' then						
						pointFrom, pointTo = "TOPLEFT", "TOPRIGHT"						
						x = 5
						parentObject:SetWidth (parentObject:GetWidth() - 7 - widget:GetWidth())
						setParent = false
						--addHeight = false
					end
					
				elseif entry.type == 'header' then
					widget:SetText(entry.text, true)
					y = 5
				end
				
				widget:SetPoint(pointFrom, parentObject, pointTo, x, y)
				widget:SetVisible(true)
				if addHeight == true then height = height + widget:GetHeight() end
												
				lastElement = entry

				if setParent == true then parentObject = widget end
				pointFrom, pointTo, x, y = "TOPLEFT", "BOTTOMLEFT", 0, 0
				
				if entry.type == 'image' and entry.align == 'lastright' then
					if widget:GetHeight() > parentObject:GetHeight() then
						pointFrom, pointTo = "TOPRIGHT", "BOTTOMRIGHT"
						parentObject = widget
					end
				end
				
			end			
		end
		
		if height < grid:GetHeight() then height = grid:GetHeight() end 
		body:SetHeight(height)
		scrollPane:SetContent(body)
				
	end
	
	local oSetWidth = doc.SetWidth
		
	function doc:SetWidth(newWidth)
		width = newWidth
		oSetWidth(self, newWidth)
		scrollPane:SetWidth(newWidth - grid:GetWidth())
		body:SetWidth(scrollPane:GetWidth()-14)
	end	
	
	function doc:Layout(newRows)
		rows = newRows
		grid:Layout (cols, rows)
	end
	
	Command.Event.Attach(EnKai.events[name .. ".grid"].LeftClick, function (_, rowNo)
		showChapter(grid:GetKey(rowNo))
	end, name .. ".grid.LeftClick")
	
	Command.Event.Attach(EnKai.events[name .. ".grid"].GridFinished, function ()
		doc:SetHeight(grid:GetHeight())
		scrollPane:SetHeight(grid:GetHeight())
		body:SetHeight(grid:GetHeight())		
		doc:SetWidth(width)
		slider:SetHeight(grid:GetHeight())
		grid:SetVisible(true)
		gridInit = true
		updateGrid()
	end, name .. ".grid.GridFinished")
	
	Command.Event.Attach(EnKai.events[name .. '.grid'].WheelForward, function (_, rowPos)			
		slider:AdjustValue (rowPos)
	end, name .. 'grid.Grid.WheelForward')
		
	Command.Event.Attach(EnKai.events[name .. '.grid'].WheelBack, function (_, rowPos)
		slider:AdjustValue (rowPos)
	end, name .. 'grid.Grid.WheelBack')	
				
	return doc

end 