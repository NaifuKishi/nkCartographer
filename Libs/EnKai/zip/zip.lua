local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end
if not EnKai.zip then EnKai.zip = {} end

---------- library public function block ---------

function EnKai.zip.compress (data)

	local zippedData = zlib.deflate(zlib.BEST_COMPRESSION)(data, "finish")
	local encodedData = EnKai.zip.encodeBase64(zippedData)
	
	return EnKai.zip.checksum(encodedData), encodedData
	
end 

function EnKai.zip.uncompress (zippedData)

	local decodedData = EnKai.zip.decodeBase64(zippedData)
	local data, eof = zlib.inflate()(decodedData)
	
	return data
	
end 

function EnKai.zip.checksum(data)

	local checksum = Utility.Storage.Checksum(data)
	local shortCheck = string.sub(checksum, -6)
	
	local bytes = {}
	for hexPair in shortCheck:gmatch("(%x%x)") do
    	table.insert(bytes, string.char(tonumber(hexPair, 16)))
	end
	
	return EnKai.zip.encodeBase64(table.concat(bytes))
	
end
