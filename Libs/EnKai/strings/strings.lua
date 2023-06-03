local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.strings then EnKai.strings = {} end

---------- make global functions local ---------

local _sMatch  = string.match
local _sFind   = string.find
local _sSub    = string.sub
local _sLen    = string.len

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

  local delim_from, delim_to = _sFind( text, delimiter, from )
  
  while delim_from do
    table.insert( result, _sSub( text, from , delim_from-1 ) )
    from = delim_to + 1
    delim_from, delim_to = _sFind( text, delimiter, from )
  end
  table.insert( result, _sSub( text, from ) )
  return result
  
end

function EnKai.strings.left (value, delimiter)

	local pos = _sFind ( value, delimiter)
	return _sSub ( value, 1, pos-1)

end

function EnKai.strings.leftBack (value, delimiter)

	local temp = EnKai.strings.split(value, delimiter)
	
	local pos = _sFind ( value, temp[#temp])
	return _sSub ( value, 1, pos - _sLen(delimiter))

end

function EnKai.strings.rightBack (value, delimiter)

	local temp = EnKai.strings.split(value, delimiter)
	
	local pos = _sFind ( value, temp[#temp])
	return _sSub ( value, pos)

end

function EnKai.strings.right (value, delimiter, start, plainFlag)

	local pos = _sFind ( value, delimiter, start or 1, plainFlag or true)
	if pos == nil then return value end
	
	return _sSub ( value, pos + _sLen(delimiter))

end

function EnKai.strings.rightRegEx (value, delimiter)
	local pos, len = _sFind ( value, delimiter)
	if pos == nil then return value end
	
	pos = pos + len
	return _sSub ( value, pos)
end

function EnKai.strings.formatNumber (value)
	
	local gsub = string.gsub
	
	local formatted, k = value, nil
	while true do  
		formatted, k = gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
		if (k==0) then break end
	end
	return formatted
	
end

function EnKai.strings.startsWith(value, startValue)
	local compare = _sSub(value, 1, _sLen(startValue))
	return compare == startValue 
end

function EnKai.strings.endsWith(value, endValue)
   return endValue == '' or _sSub(value, - _sLen(endValue)) == endValue
end