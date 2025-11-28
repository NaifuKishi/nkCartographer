local addonInfo, privateVars = ...

---------- init namespace ---------

if not EnKai then EnKai = {} end

---------- library public function block ---------

function EnKai.doc (name, parent) -- wird nur von nkRebuff genutzt

	local doc = EnKai.uiCreateFrame("nkWindowModern", name, parent)
	
	local docEmbedded = EnKai.docEmbedded(name .. '.doc', doc)
	docEmbedded:SetPoint("TOPLEFT", doc:GetContent(), "TOPLEFT")
	docEmbedded:Layout(20)
	
	doc:SetHeight(docEmbedded:GetHeight() + 20)	
	
	local oSetWidth, oSetHeight = doc.SetWidth, doc.SetHeight
		
	function doc:SetWidth(newWidth)
		oSetWidth(self, newWidth)
		docEmbedded:SetWidth(doc:GetContent():GetWidth())
	end
	
	function doc:SetHeight(newHeight)
		oSetHeight(self, newHeight)
		docEmbedded:SetHeight(doc:GetContent():GetHeight())
	end
	
	function doc:AddChapter(parentChapter, newTitle, newContent, updateFlag)
		docEmbedded:AddChapter(parentChapter, newTitle, newContent, updateFlag)
	end
	
	return doc

end 