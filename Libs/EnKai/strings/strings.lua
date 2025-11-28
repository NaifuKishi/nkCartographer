local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.strings then EnKai.strings = {} end

---------- make global functions local ---------

local stringMatch   = string.match
local stringFind    = string.find
local stringSub     = string.sub
local stringLen     = string.len
local stringGSub    = string.gsub
	

---------- library public function block ---------

function EnKai.strings.find(source, pattern)

	if source == nil then return nil end
	
	return string.find(source, pattern)

end

function EnKai.strings.trim (text)

	return text:match'^()%s*$' and '' or text:match'^%s*(.*%S)'

end

function EnKai.strings.split(text, delimiter)
  
  local result = { }
  local from = 1

  local delim_from, delim_to = stringFind( text, delimiter, from )
  
  while delim_from do
    table.insert( result, stringSub( text, from , delim_from-1 ) )
    from = delim_to + 1
    delim_from, delim_to = stringFind( text, delimiter, from )
  end
  table.insert( result, stringSub( text, from ) )
  return result
  
end

function EnKai.strings.left (value, delimiter)

	local pos = stringFind ( value, delimiter)
	return stringSub ( value, 1, pos-1)

end

function EnKai.strings.leftBack (value, delimiter)

	local temp = EnKai.strings.split(value, delimiter)
	
	local pos = stringFind ( value, temp[#temp])
	return stringSub ( value, 1, pos - stringLen(delimiter))

end

function EnKai.strings.rightBack (value, delimiter)

	local temp = EnKai.strings.split(value, delimiter)
	
	local pos = stringFind ( value, temp[#temp])
	return stringSub ( value, pos)

end

function EnKai.strings.right (value, delimiter, start, plainFlag)

	local pos = stringFind ( value, delimiter, start or 1, plainFlag or true)
	if pos == nil then return value end
	
	return stringSub ( value, pos + stringLen(delimiter))

end

function EnKai.strings.rightRegEx (value, delimiter)
	local pos, len = stringFind ( value, delimiter)
	if pos == nil then return value end
	
	pos = pos + len
	return stringSub ( value, pos)
end

function EnKai.strings.formatNumber (value)
		
	local formatted, k = value, nil
	while true do  
		formatted, k = stringGSub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
		if (k==0) then break end
	end
	return formatted
	
end

function EnKai.strings.startsWith(value, startValue)
	local compare = stringSub(value, 1, stringLen(startValue))
	return compare == startValue 
end

function EnKai.strings.endsWith(value, endValue)
   return endValue == '' or stringSub(value, - stringLen(endValue)) == endValue
end

function EnKai.strings.Capitalize(inputString)
    -- Split the string into words
    local words = {}
    for word in inputString:gmatch("%S+") do
        table.insert(words, word)
    end

    -- Capitalize the first letter of each word
    for i, word in ipairs(words) do
        if #word > 0 then
            local firstChar = string.sub(word, 1, 1)
            local restOfWord = string.sub(word, 2)
            words[i] = string.upper(firstChar) .. restOfWord
        end
    end

    -- Join the words back into a single string
    local result = table.concat(words, " ")

    return result
end