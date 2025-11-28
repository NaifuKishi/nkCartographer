local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

if not privateVars.uiFunctions then privateVars.uiFunctions = {} end

local uiFunctions   = privateVars.uiFunctions
local internal      = privateVars.internal
local oFuncs	  	= privateVars.oFuncs

local _InspectMouse = Inspect.Mouse

---------- addon internal function block ---------

local function _uiGrid(name, parent) 
  
  local debugId
  if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai _uiGrid") end

	--if EnKai.internal.checkEvents (name, true) == false then return nil end

	-- pre-define ui elements --
	
	local grid = EnKai.uiCreateFrame ('nkFrame', name, parent)
	local progressBar = EnKai.uiCreateFrame('nkProgressBar', name .. '.progressBar', parent)
	
	local LayoutHeaders = {}
	local LayoutRows = {}
	
	local properties = {}

	function grid:SetValue(property, value)
		properties[property] = value
	end
	
	function grid:GetValue(property)
		return properties[property]
	end
	
	-- default values --
	
	local font = nil
	local fontSize = 13
	local headerFontSize = 13
	local fontSizeMod = 6
	local headerHeight = headerFontSize + fontSizeMod
	local cellHeight = fontSize + fontSizeMod
		
	local borderColor =  EnKai.art.GetThemeColor('gridColor')[1]
	local bodyColor = EnKai.art.GetThemeColor('gridColor')[2]
	local labelColor = EnKai.art.GetThemeColor('gridColor')[3]
	local headerLabelColor = EnKai.art.GetThemeColor('gridColor')[4]
	local labelHighlightColor = EnKai.art.GetThemeColor('gridColor')[5]
	local bodyHighlightColor = EnKai.art.GetThemeColor('gridColor')[6]
	local labelSelectedColor = EnKai.art.GetThemeColor('gridColor')[7]
	local bodySelectedColor = EnKai.art.GetThemeColor('gridColor')[8]
	local transparentHeader = false
	
	local rowPos = 1
	local cellValues = {}
	local lastValueCount = 0
		
	local highlightedRow = nil
	local selectedRow = nil
	local selectable = false
	local rows = 0	
	local cols
	local sortable = false
	local sortAscending = false
	local backupFilter
	
	-- fill ui elements with live

	progressBar:SetLayer(9999)
	progressBar:SetFontSize(20)
	progressBar:SetWidth(300)
	progressBar:SetHeight(30)
	progressBar:SetBorderColor(borderColor.r, borderColor.g, borderColor.b, borderColor.a)
	progressBar:SetBackgroundColor(bodyColor.r, bodyColor.g, bodyColor.b, bodyColor.a)
	progressBar:SetFillColor(bodyHighlightColor.r, bodyHighlightColor.g, bodyHighlightColor.b, bodyHighlightColor.a)
	progressBar:SetFontColor(labelHighlightColor.r, labelHighlightColor.g, labelHighlightColor.b, labelHighlightColor.a)
	progressBar:SetPoint("CENTER", grid, "CENTER")
	progressBar:SetVisible(false)
	
	function grid:SetFont (addonId, fontName)
		font = { addonId = addonId, fontName = fontName}
	end
	
	function grid:SetHeaderHeight(newHeight)
		headerHeight = newHeight
		for idx = 1, #LayoutHeaders, 1 do
			LayoutHeaders[idx]:SetHeight(newHeight)
		end
		
		local height = headerHeight + (rows * cellHeight) + 1
		grid:SetHeight(height)
	end
	
	function grid:SetHeaderLabelColor (r, g, b, a)
	  if type(r) == 'table' then -- V2.1.0 compatability check
	    headerLabelColor = r
	  else
		  headerLabelColor = {r = r, g = g, b = b, a = a}
		end  
		
		for idx = 1, #LayoutHeaders, 1 do
			LayoutHeaders[idx]:SetLabeLColor(headerLabelColor)
		end
	end
	
	function grid:SetBorderColor(r, g, b, a)
	  if type(r) == 'table' then -- V2.1.0 compatability check
	    borderColor = r
		else
		  borderColor = {r = r, g = g, b = b, a = a}
		end
		
		local tempColor = borderColor
		tempColor.thickness = 1		
		
		for idx = 1, #LayoutHeaders, 1 do
			LayoutHeaders[idx]:SetBorderColor(tempColor)
		end
		
		for idx = 1, #LayoutRows, 1 do
			for idx2 = 1, #LayoutRows[idx], 1 do
				LayoutRows[idx][idx2]:SetBorderColor(tempColor)
			end
		end
	end
	
	function grid:SetBodyColor(r, g, b, a)
    if type(r) == 'table' then -- V2.1.0 compatability check	
      bodyColor = r
    else
      bodyColor = {r = r, g = g, b = b, a = a}
    end
	 
		for idx = 1, #LayoutRows, 1 do
			for idx2 = 1, #LayoutRows[idx], 1 do
				LayoutRows[idx][idx2]:SetBodyColor(bodyColor)
			end
		end
	end
	
	function grid:SetBodyHighlightColor (r, g, b, a)
    if type(r) == 'table' then -- V2.1.0 compatability check  
		  bodyHighlightColor = r
		else
		  bodyHighlightColor = { r = r, g = g, b = b, a = a}
		end
	end
	
	function grid:SetLabelHighlightColor (r, g, b, a)
	  if type(r) == 'table' then -- V2.1.0 compatability check
	    labelHighlightColor = r	label:SetFont(addonId, fontName)
	  else
	    labelHighlightColor = { r = r, g = g, b = b, a = a}
	  end
	end
	
	function grid:SetBodySelectedColor (r, g, b, a)
	  if type(r) == 'table' then -- V2.1.0 compatability check
      bodySelectedColor = r
    else
      bodySelectedColor = { r = r, g = g, b = b, a = a}
    end
	end
		
	function grid:SetLabelSelectedColor (r, g, b, a)
	  if type(r) == 'table' then -- V2.1.0 compatability check
      labelSelectedColor = r
    else
      labelSelectedColor = { r = r, g = g, b = b, a = a}
    end
	end
	
	-- layout function --
	
	function grid:Layout (newCols, newRows)

		if newCols == nil or newRows == nil then return end
		
		local debugId
		if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:Layout") end
		
		if newCols ~= nil then cols = newCols end
		if newRows ~= nil then rows = newRows end
		
		local width = 0
		local height = (headerHeight) + (rows * (cellHeight)) + 1
		
		for k, v in pairs (cols) do
			width = width + v.width
		end
		
		grid:SetHeight(height)
		grid:SetWidth(width)
		
		LayoutHeaders = {}	-- would prefer to delete existing frames but not yet implemented in API
		LayoutRows = {}   -- would prefer to delete existing frames but not yet implemented in API
			
		local from, object, to, x = "TOPLEFT", grid, "TOPLEFT", 0
		local parent, nextParent = grid, nil
		
		for idx = 1, #cols, 1 do
			local thisHeader = EnKai.uiCreateFrame('nkGridHeaderCell', name .. 'HeaderCell' .. idx, parent)
			
			if idx == 1 then nextParent = thisHeader end
			
			thisHeader:SetWidth(cols[idx].width)
			thisHeader:SetBorderColor (borderColor)
			
			thisHeader:SetBodyColor (bodyColor)
			thisHeader:SetLabelColor (headerLabelColor)
			thisHeader:SetAlign(cols[idx].align)
			thisHeader:SetFontSize(headerFontSize)

			if font ~= nil then
				thisHeader:SetFont(font.addonId, font.fontName)
			end
			
			if cols[idx].header ~= nil then thisHeader:SetText(cols[idx].header) end
			thisHeader:SetPoint(from, object, to, x, 0)
			thisHeader:SetHeight(headerHeight)
			
			parent, object, to, x = thisHeader, thisHeader, "TOPRIGHT", 0
			
			table.insert (LayoutHeaders, thisHeader)
		end
		
		parent = nextParent
		
		if transparentHeader == true then
			grid:SetTransparentHeader()
		end
		
		local gridCoRoutine = coroutine.create(
			function ()

				progressBar:SetRange(1, rows)
				progressBar:SetVisible(true)
		   
				for idx = 1, rows, 1 do
					progressBar:SetValue(idx)
				
					local object, to, x, y
					local count = #LayoutRows
					
					if count == 0 then
						object, to, x, y = LayoutHeaders[1], "BOTTOMLEFT", 0, 0
					else
						object, to, x, y = LayoutRows[count][1], "BOTTOMLEFT", 0, 0
					end
					
					local thisRow = {}
					
					for idx2 = 1, #cols, 1 do
						local thisCell = EnKai.uiCreateFrame('nkGridCell', name .. 'cell' .. idx .. '.' .. idx2, parent)
						
						if idx2 == 1 then nextParent = thisCell end
						
						thisCell:SetBorderColor (borderColor)
						thisCell:SetBodyColor (bodyColor)
						thisCell:SetFontSize(fontSize)
						thisCell:SetWidth(cols[idx2].width)
						thisCell:SetAlign(cols[idx2].align)

						if font ~= nil then
							thisCell:SetFont(font.addonId, font.fontName)
						end
						
						if cols[idx2].texture == true then
							thisCell:SetTexture(cols[idx2].textureType, cols[idx2].texturePath)
							
							if cols[idx2].textureWidth ~= nil then thisCell:SetTextureWidth(cols[idx2].textureWidth) end
							if cols[idx2].textureHeight ~= nil then thisCell:SetTextureHeight(cols[idx2].textureHeight) end
						end
						
						thisCell:SetPoint("TOPLEFT", object, to, x, y)
						parent, object, to, x, y = thisCell, thisCell, "TOPRIGHT", 0, 0
						table.insert (thisRow, thisCell)
					end
					
					parent = nextParent
					
					table.insert (LayoutRows, thisRow)
					
					if idx == rows then
						progressBar:SetVisible(false)
						EnKai.eventHandlers[name]["GridFinished"]()
					end
					
					coroutine.yield(idx)
				end
			end)

		EnKai.coroutines.add ({ func = gridCoRoutine, counter = rows, active = true })
		--progressText:SetVisible(true)
		
		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:Layout", debugId) end

	end
	
	function grid:GetBorderCell(side, includeHeader)
    if side == "topright" then
      if includeHeader == true then
        for idx = 1, #LayoutHeaders, 1 do
          if (LayoutHeaders[idx]:GetVisible() == false) then
            return LayoutHeaders[idx-1]
          end
        end
        return LayoutHeaders[#LayoutHeaders]
      else
        local row = LayoutRows[1]
        for idx = 1, #row, 1 do
           if (row[idx]:GetVisible() == false) then
            return row[idx-1]
          end
        end
        return row[#row]
      end
    end
  end
	
	function grid:ReLayout()
	
		local debugId
		if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:ReLayout") end
			
		local height = headerHeight + (rows * cellHeight) + 1
		grid:SetHeight(height)
		
		for idx = 1, #cols, 1 do
			local thisHeader = LayoutHeaders[idx]
						
			thisHeader:SetBorderColor (borderColor)
			thisHeader:SetBodyColor (bodyColor)
			thisHeader:SetLabelColor (headerLabelColor)
			thisHeader:SetAlign(cols[idx].align)
			thisHeader:SetFontSize(headerFontSize)
			thisHeader:SetHeight(headerHeight)
		end
			
		local gridCoRoutine = coroutine.create(
		   function ()
		   
		   	progressBar:SetRange(1, rows)
		   	progressBar:SetVisible(true)
		   
				for idx = 1, rows, 1 do
					--progressText:SetText(string.format ('%03d%%', math.floor(100 / rows * idx)))
					progressBar:SetValue(idx)
				
					local count = #LayoutRows

					local thisRow = {}
					
					for idx2 = 1, #cols, 1 do
						local thisCell = LayoutRows[idx][idx2]
						thisCell:SetBorderColor (borderColor)
						thisCell:SetBodyColor (bodyColor)
						thisCell:SetFontSize(fontSize)
					end
					
					if idx == rows then
						progressBar:SetVisible(false)
						EnKai.eventHandlers[name]["GridFinished"]()
					end
					
					coroutine.yield(idx)
				end
		end)

		EnKai.coroutines.add ({ func = gridCoRoutine, counter = rows, active = true })
		--progressText:SetVisible(true)
		
		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:ReLayout", debugId) end
	
	end
	
	function grid:UpdateLayout(newCols)
	
		if newCols == nil then return end

		local debugId
		if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:UpdateLayout") end
		
		local height = (headerHeight) + (rows * (cellHeight)) + 1
		local width = 0
		
		for k, v in pairs (newCols) do
			width = width + v.width
		end
		
		grid:SetHeight(height)
		grid:SetWidth(width)

		for idx = 1, #newCols, 1 do
			local thisHeader = LayoutHeaders[idx]

			if thisHeader ~= nil then

				thisHeader:SetBorderColor (borderColor)
				thisHeader:SetBodyColor (bodyColor)
				thisHeader:SetLabelColor (headerLabelColor)
				thisHeader:SetAlign(newCols[idx].align)
				thisHeader:SetFontSize(headerFontSize)
				thisHeader:SetWidth(newCols[idx].width)
				thisHeader:SetVisible(true)

				if newCols[idx].header ~= nil then thisHeader:SetText(newCols[idx].header) end

				parent = thisHeader
			else
				EnKai.tools.error.display ("EnKai", 'Error in grid:UpdateLayout(): cannot increase number of cols after creation!', 1)
				return
			end
		end

		if #newCols < #LayoutHeaders then
			for idx = #newCols+1, #LayoutHeaders, 1 do
				LayoutHeaders[idx]:SetVisible(false)
			end
		end

		if transparentHeader == true then grid:SetTransparentHeader() end

		local gridCoRoutine = coroutine.create(
			function ()

				progressBar:SetRange(1, rows)
				progressBar:SetVisible(true)

				for idx = 1, rows, 1 do
					progressBar:SetValue(idx)

					local count = #LayoutRows

					local thisRow = {}
					local nextParent

					for idx2 = 1, #newCols, 1 do
						local thisCell = LayoutRows[idx][idx2]
						thisCell:SetFontSize(fontSize)
						thisCell:SetWidth(newCols[idx2].width)
						thisCell:SetAlign(newCols[idx2].align)
						thisCell:SetVisible(true)
						parent = thisCell
					end

					if #newCols < #LayoutHeaders then
						for idx2 = #newCols+1, #LayoutHeaders, 1 do
							local thisCell = LayoutRows[idx][idx2]
							thisCell:SetVisible(false)
						end
					end

					if idx == rows then progressBar:SetVisible(false) end

					coroutine.yield(idx)
				end
			end)

		cols = newCols

		EnKai.coroutines.add ({ func = gridCoRoutine, counter = rows, callBack = function () EnKai.eventHandlers[name]["LayoutUpdated"]() end, active = true })

		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:UpdateLayout", debugId) end
	
	end
	
	-- transparent header
	
	function grid:SetTransparentHeader()
		
		transparentHeader = true
		
		for idx = 1, #LayoutHeaders, 1 do
			LayoutHeaders[idx]:SetBorderColor({ r = 0, g = 0, b = 0, a = 0})
			LayoutHeaders[idx]:SetBodyColor({ r = 0, g = 0, b = 0, a = 0})
		end
		
	end
	
	function grid:SetHeaderFontSize(newFontSize)
		if headerHeight == headerFontSize + fontSizeMod then headerHeight = newFontSize + fontSizeMod end
		headerFontSize = newFontSize
		 
		if #LayoutRows > 0 then grid:ReLayout() end
	end
	
	function grid:SetFontSize(newFontSize)
		fontSize = newFontSize
		cellHeight = fontSize + fontSizeMod
		if #LayoutRows > 0 then grid:ReLayout() end
	end
	
	-- fill values ---

	function grid:SetCellValue(row, coll, newValue)
	
	  local debugId
	  if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:SetCellValue") end
	 
		if cellValues == nil then return end
		if cellValues[row] == nil then return end
		
		if type (cellValues[row][coll]) ~= 'table' then
			cellValues[row][coll] = newValue
		else
			cellValues[row][coll].value = newValue
		end
		
		if row >= rowPos and row <= rowPos + ( rows -1) then grid:UpdateGrid() end
		
		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:SetCellValue", debugId) end
		
	end
	
	function grid:SetCellValues(values, updatePos)
		
		if values ~= nil then 
			if #values == 0 then
				grid:ClearGrid()
				return
			else
				cellValues = values 
			end
		end
		
		if updatePos ~= false then
			grid:SetRowPos(1, true)
		else
			grid:UpdateGrid()
		end
		
	end
	
	function grid:GetCellValue(row, col)
		
		if cellValues == nil then return nil end
		if cellValues[row] == nil then return nil end
		
		if type (cellValues[row][col]) ~= 'table' then
			return cellValues[row][col]
		else
			return cellValues[row][col].value
		end
		
	end
	
	function grid:GetCellValues() return cellValues end
	
	function grid:ClearGrid()
	
		cellValues = {}
		grid:SetRowPos(1)
		grid:UpdateGrid()
	
	end
	
	local function _fctClearRow (row)
	  
	  if LayoutRows[row] ~= nil then      
      for idx2 = 1, #LayoutRows[row], 1 do
        local cell = LayoutRows[row][idx2]
        cell:SetBodyColor (bodyColor)
        if cell:IsTexture() == true then
          cell:SetVisible(false)
        else
          cell:SetText('')
        end
      end
    end
	  
	end
	
	function grid:UpdateGrid()
		
		if LayoutRows == nil then return end
		
		local debugId
		if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:UpdateGrid") end
		
		local v, thisRow
		
		for idx = rowPos, rowPos + ( rows -1 ), 1 do

      v = cellValues[idx]
      thisRow = idx - rowPos + 1

			if v == nil then
			  if lastValueCount ~= #cellValues then _fctClearRow(thisRow) end
			else
			
        if LayoutRows[thisRow] ~= nil then
        
          local cell
			
          for idx2 = 1, #v, 1 do
				  
						cell = LayoutRows[thisRow][idx2]
  					
  					cell:SetBorderColor (borderColor)
  					cell:SetBodyColor (bodyColor)
					
						local autowidth, width = nil, cell:GetWidth() 

  					if cell:GetOrientation() ~= 'CENTERLEFT' then
  						width, autowidth = nil, nil
  					end
							
						if cell:IsTexture() == true then
							cell:SetVisible(true)
							if type(v[idx2]) ~= 'table' then							
								cell:SetTexture (cols[idx2].textureType, tostring(v[idx2]))
							else
								cell:SetTexture (cols[idx2].textureType, tostring(v[idx2].value))
							end
						else
  						if type(v[idx2]) ~= 'table' then
  							cell:SetText(tostring(v[idx2]))
  						elseif v[idx2].color ~= nil then
  							cell:SetText(tostring(v[idx2].value))
  							
  						  if v[idx2].color.r == nil then -- V2.1.0 compatability check
  							  cell:SetLabelColor({r = v[idx2].color[1], g = v[idx2].color[2], b = v[idx2].color[3], a = v[idx2].color[4]})
  							else
  							  cell:SetLabelColor(v[idx2].color)
  							end
  						else
  							cell:SetLabelColor(labelColor)
  							cell:SetText(tostring(v[idx2].value))
  						end
  					end
					end
				end
				
				if #v < #LayoutRows[thisRow] then
				
					for idx2 = #v+1, #LayoutRows[thisRow], 1 do
						local cell = LayoutRows[thisRow][idx2]						
						if cell:IsTexture() then
							cell:SetVisible(false)
						else
							cell:SetText('')
						end
					end
				end
				
			end
		end
		
		if highlightedRow ~= nil then grid:RowHighlight(highlightedRow, true) end		
		if selectedRow ~= nil and selectedRow >= rowPos and selectedRow <= rowPos + (rows -1) then 		
			grid:RowSelect(selectedRow, true) 
		end
		
		lastValueCount = #cellValues
		
		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:UpdateGrid", debugId) end
		
	end
	
	-- row highlighting --
	
	function grid:RowHighlight (row, active)
		if LayoutRows == nil or LayoutRows[row] == nil then return end 
		
		local debugId
    if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:RowHighlight") end
	
		for idx = 1, #LayoutRows[row], 1 do
		
			local cell = LayoutRows[row][idx]		
			local specColor = nil
			
			if rowPos ~= nil then
				if cellValues[rowPos + row - 1] == nil then return end
				local cellValue = cellValues[rowPos + row - 1][idx] 
				if cellValue ~= nil then
					if type(cellValue) == 'table' and cellValue.color ~= nil and cellValue.color ~= bodyHighlightColor then 
					  specColor = cellValue.color
					  if specColor.r == nil then -- V2.1.0 compatability check
					    specColor = {r = specColor[1], g = specColor[2], b = specColor[3], a = specColor[4]}
					  end 
					end
				end
			end
			
			if active == true then
				cell:SetBodyColor(bodyHighlightColor)

				if specColor == nil then
					cell:SetLabelColor (labelHighlightColor)
				else
					if specColor.r == bodyHighlightColor.r and specColor.g == bodyHighlightColor.g and specColor.b == bodyHighlightColor.b and specColor.a == bodyHighlightColor.a then
						cell:SetLabelColor (labelHighlightColor)
					else
					  cell:SetLabelColor(specColor)
					end
				end
			else
				cell:SetBodyColor(bodyColor)

				if specColor == nil then
					cell:SetLabelColor (labelColor)
				else
					cell:SetLabelColor (specColor)
				end
			end
		end
		
		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:RowHighlight", debugId) end
		
	end

	function grid:GetHighlightedRow() 
		if highlightedRow ~= nill then
            return rowPos + highlightedRow - 1 
        end
	end
		
	-- row selection --
	
	function grid:RowSelect (row, active)
	
	  local debugId
    if nkDebug then debugId = nkDebug.traceStart (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:RowSelect") end

		if active == true and selectedRow ~= nil and selectedRow >= rowPos and selectedRow <= rowPos + (rows -1) then grid:RowSelect(selectedRow, false) end
		
		if active == true then 
			selectedRow = row 
		else
			selectedRow = nil
		end		
	
		local gridRow = row - rowPos + 1
		
		if LayoutRows[gridRow] == nil then return end
		
		for idx = 1, #LayoutRows[gridRow], 1 do
		
			local cell = LayoutRows[gridRow][idx]		
			local specColor = nil
			
			if rowPos ~= nil then
				if cellValues[gridRow] == nil then return end
				local cellValue = cellValues[gridRow][idx] 
				if cellValue ~= nil then
					if type(cellValue) == 'table' and cellValue.color ~= nil and cellValue.color ~= bodySelectedColor then
					  if cellValue.color.r == nil then 
					    specColor = {r = cellValue.color[1], g = cellValue.color[2], b = cellValue.color[3], a = cellValue.color[4]}
					  else
					    specColor = cellValue.color
					  end 
					end
				end
			end
			
			if active == true then
				cell:SetBodyColor(bodySelectedColor)

				if specColor == nil then
					cell:SetLabelColor (labelSelectedColor)
				else
				  cell:SetLabelColor (specColor)
				end
			else
				cell:SetBodyColor(bodyColor)

				if specColor == nil then
					cell:SetLabelColor (labelColor)
				else
					cell:SetLabelColor (specColor)
				end
			end
		end
		
		if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "EnKai uiGrid:RowSelect", debugId) end
		
	end
	
	function grid:SetSelectable (flag) 
		selectable = flag 
		if selectable == false and selectedRow ~= nil then grid:RowSelect(selectedRow, false) end
	end

	function grid:GetSelectedRow() return selectedRow end
	
	-- rowPos functions
	
	function grid:GetRowPos()
		return rowPos
	end
	
	function grid:SetRowPos(setToPos, doUpdateGrid)

		if setToPos == nil or setToPos < 1 then return end
		if cellValues == nil then return end

		local checkMax = #cellValues - rows + 1
		if checkMax < 0 then checkMax = #cellValues end
		
		if setToPos > checkMax then return end
		
		rowPos = setToPos
		
		if doUpdateGrid == true then grid:UpdateGrid() end

	end
		
	function grid:GetKey(rowPos) 

		if cellValues == nil then return nil end
		if cellValues[rowPos] == nil then return nil end

		for k, v in pairs (cellValues[rowPos]) do
			if v.key ~= nil then return v.key end
		end

		return nil

	end
	
	function grid:GetCell(row, cell)
		return LayoutRows[row][cell]
	end
	
	function grid:SetSortable(flag)
		sortable = flag
	end
	
	function grid:Sort(col, sortOrder)
	
		if sortOrder == nil then	
			if sortAscending == true then sortAscending = false else sortAscending = true end
		else
			sortAscending = sortOrder
		end
		
		if #cellValues == 0 then return end
		
		local testValue = cellValues[1][col] 
		if type(testValue) == 'table' then
			if sortAscending == true then	 
				table.sort (cellValues, function (v1, v2) return v1[col].value < v2[col].value end )
			else
				table.sort (cellValues, function (v1, v2) return v1[col].value > v2[col].value end )
			end
		else
			if sortAscending == true then	
				table.sort (cellValues, function (v1, v2) return v1[col] < v2[col] end )
			else
				table.sort (cellValues, function (v1, v2) return v1[col] > v2[col] end )
			end
		end
		
		grid:SetRowPos(1, false)
		grid:SetCellValues()		
		
	end
	
	function grid:filter (searchValue, col, reset)

		if searchValue == nil or (reset ~= true and searchValue == '') or cellValues == nil then return end
		if col == nil or col == 0 or col > #LayoutRows[1] then return end	
		if reset == true and backupFilter == nil then return end
		
		if reset ~= true then 
			if backupFilter == nil then backupFilter = EnKai.tools.table.copy(cellValues) end
		end
		
		local values = {}
		
		for k, v in pairs(backupFilter) do
		
			if reset == true then
				table.insert (values, v)
			else
				local compareValue = nil
				if type(v[col]) == 'table' then		
					compareValue = string.upper(v[col].value)
				else
					compareValue = string.upper(v[col])
				end
				
				if string.find(compareValue, string.upper(searchValue)) ~= nil then table.insert (values, v) end
			end
		end
		
		if reset == true then backupFilter = nil end
		
		grid:SetCellValues(values)
	end
	
	function grid:ScrollUp()
	  if rowPos == nil then return nil end
    rowPos = rowPos -1
    if rowPos <= 0 then rowPos = 1 end
    
    if highlightedRow ~= nil then grid:RowHighlight(highlightedRow, false) end
    
    grid:UpdateGrid()
    EnKai.eventHandlers[name]["WheelForward"](rowPos)      
	end
	
	function grid:ScrollDown()
	  if rowPos == nil then return nil end
    rowPos = rowPos + 1
    local max = #cellValues - (rows - 1)
    if max < 1 then max = 1 end
    if rowPos > max then rowPos = max end
    
    if highlightedRow ~= nil then  grid:RowHighlight(highlightedRow, false) end
    grid:UpdateGrid()
    EnKai.eventHandlers[name]["WheelBack"](rowPos)
	end
	
	-- set grid events --
	
	grid:EventAttach(Event.UI.Input.Mouse.Cursor.Move, function ()
		
		local mouse = _InspectMouse()
		if mouse.y < grid:GetTop() + headerHeight then return end
		
		local rowNo = math.floor((mouse.y - (grid:GetTop() + headerHeight)) / (cellHeight)) + 1
		
		if rowNo > rows then rowNo = rows end
		
		if rowNo == highlightedRow then return end
		if highlightedRow ~= nil then
			if (highlightedRow + rowPos - 1)== selectedRow then
				grid:RowSelect(selectedRow, true) 
			else
				grid:RowHighlight(highlightedRow, false) 
			end
		end
		
		grid:RowHighlight(rowNo, true)
		highlightedRow = rowNo
		
		EnKai.eventHandlers[name]["MouseOver"](rowNo)
				
	end, name .. "_MouseCursorMove")
	
	grid:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function ()
		if highlightedRow ~= nil then 
			if highlightedRow == selectedRow then
				grid:RowSelect(selectedRow, true) 
			else
				grid:RowHighlight(highlightedRow, false) 
			end
		end
		EnKai.eventHandlers[name]["MouseOut"]()
	end, name .. "_MouseCursorOut")
	
	grid:EventAttach(Event.UI.Input.Mouse.Left.Click, function ()
		local mouse = _InspectMouse()
		if mouse.y < grid:GetTop() + headerHeight then
			if sortable == false then return end
			local pos = mouse.x - grid:GetLeft()
			local start = 0
			for idx = 1, #cols, 1 do
				if pos >= start and pos <= start + cols[idx].width then
					grid:Sort(idx)
					return
				end
				start = start + cols[idx].width
			end
		else
			local rowNo = math.floor((mouse.y - (grid:GetTop() + headerHeight)) / (cellHeight )) + rowPos
			
			if selectable == true then
				if rowNo == selectedRow then
					grid:RowSelect(rowNo, false)
				else
					grid:RowSelect(rowNo, true)
				end
			end
			
			EnKai.eventHandlers[name]["LeftClick"](rowNo)
		end
	end, name .. "LeftClick")
	
	grid:EventAttach(Event.UI.Input.Mouse.Right.Click, function ()
		local mouse = _InspectMouse()
		if mouse.y < grid:GetTop() + headerHeight then return end
		local rowNo = math.floor((mouse.y - (grid:GetTop() + headerHeight)) / (cellHeight -1)) + rowPos
		EnKai.eventHandlers[name]["RightClick"](rowNo)
	end, name .. "RightClick")
	
	grid:EventAttach(Event.UI.Input.Mouse.Wheel.Forward, function ()
		grid:ScrollUp()
	end, name .. "_MouseWheelForward")
	
	grid:EventAttach(Event.UI.Input.Mouse.Wheel.Back, function ()
		grid:ScrollDown()
	end, name .. "_MouseWheelBack")
	
	grid:EventAttach(Event.UI.Input.Mouse.Cursor.In, function (_, key)
    grid:SetKeyFocus(true)
  end, name .. ".Input.Mouse.Cursor.In")
  
  grid:EventAttach(Event.UI.Input.Mouse.Cursor.Out, function (_, key)
    grid:SetKeyFocus(false)
  end, name .. ".Input.Mouse.Cursor.Out")
  
  grid:EventAttach(Event.UI.Input.Key.Repeat, function (_, a, key)
    if key == "Up" then
      grid:ScrollUp()
    elseif key == "Down" then
      grid:ScrollDown()
    end
  end, name .. ".Input.Key.Repeat")        
  
  grid:EventAttach(Event.UI.Input.Key.Down, function (_, a, key)
    if key == "Up" then
      grid:ScrollUp()
    elseif key == "Down" then
      grid:ScrollDown()
    end
  end, name .. ".Input.Key.Down")        
	
	EnKai.eventHandlers[name]["GridFinished"], EnKai.events[name]["GridFinished"] = Utility.Event.Create(addonInfo.identifier, name .. "GridFinished")
	EnKai.eventHandlers[name]["LayoutUpdated"], EnKai.events[name]["LayoutUpdated"] = Utility.Event.Create(addonInfo.identifier, name .. "LayoutUpdated")
	EnKai.eventHandlers[name]["LeftClick"], EnKai.events[name]["LeftClick"] = Utility.Event.Create(addonInfo.identifier, name .. "LeftClick")
	EnKai.eventHandlers[name]["RightClick"], EnKai.events[name]["RightClick"] = Utility.Event.Create(addonInfo.identifier, name .. "RightClick")
	EnKai.eventHandlers[name]["MouseOver"], EnKai.events[name]["MouseOver"] = Utility.Event.Create(addonInfo.identifier, name .. "MouseOver")
	EnKai.eventHandlers[name]["MouseOut"], EnKai.events[name]["MouseOut"] = Utility.Event.Create(addonInfo.identifier, name .. "MouseOut")
	EnKai.eventHandlers[name]["WheelForward"], EnKai.events[name]["WheelForward"] = Utility.Event.Create(addonInfo.identifier, name .. "WheelForward")
	EnKai.eventHandlers[name]["WheelBack"], EnKai.events[name]["WheelBack"] = Utility.Event.Create(addonInfo.identifier, name .. "WheelBack")
	
	if nkDebug then nkDebug.traceEnd (oFuncs.oInspectAddonCurrent(), "_uiGrid", debugId) end
	
	return grid
	
end

uiFunctions.NKGRID = _uiGrid
