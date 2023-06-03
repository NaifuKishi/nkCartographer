local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.tools then EnKai.tools = {} end

function EnKai.tools.uuid ()

	local random = math.random

	local function uuid()
		
		local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
		
		return string.gsub(template, '[xy]', function (c)
			local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
			return string.format('%x', v)
		end)
		
	end

	return uuid()

end