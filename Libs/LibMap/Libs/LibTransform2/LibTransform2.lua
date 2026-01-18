if not Libs then Libs = {} end 

Libs.Transform2 = {}

local Transform2 = Libs.Transform2

local Transform2_mt = { __index = Transform2 }

local cos = math.cos
local sin = math.sin
local tan = math.tan

function Transform2:new(old)
	local newmatrix = {1, 0, 0, 0, 1, 0, 0, 0, 1}
	if old ~= nil and old.matrix ~= nil then
		newmatrix = oldmatrix
	end
	return setmetatable( {matrix = newmatrix}, Transform2_mt)
end

function Transform2:Identity()
	self.matrix = {1, 0, 0, 0, 1, 0, 0, 0, 1}
end

function Transform2:Mult(m)
	local temp = {}
	for i = 0,2 do
		for j = 0,2 do
			temp[i*3+j+1] = (self.matrix[i*3+0+1] * m.matrix[0+j+1] + self.matrix[i*3+1+1] * m.matrix[3+j+1] + self.matrix[i*3+2+1] * m.matrix[6+j+1])
		end
	end
	self.matrix = temp
end

function Transform2:Translate(x, y)
	local temp = Transform2:new()
	temp.matrix[3] = x
	temp.matrix[6] = y
	self:Mult(temp)
end

function Transform2:Scale(x, y)
	local temp = Transform2:new()
	temp.matrix[1] = x
	temp.matrix[5] = y
	self:Mult(temp)
end

function Transform2:Rotate(angle)
	local temp = Transform2:new()
	temp.matrix[1] = cos(angle)
	temp.matrix[2] = sin(angle)
	temp.matrix[4] = -sin(angle)
	temp.matrix[5] = cos(angle)
	self:Mult(temp)
end

function Transform2:Skew(x, y)
	local temp = Transform2:new()
	temp.matrix[2] = tan(x)
	temp.matrix[4] = tan(y)
	self:Mult(temp)
end

function Transform2:Get()
	local temp = {}
	for i = 1,6 do
		temp[i] = self.matrix[i]
	end
	return temp
end

function Transform2:Transform(x,y)
	return { x = (self.matrix[1] * x + self.matrix[2] * y + self.matrix[3]), y = (self.matrix[4] * x + self.matrix[5] * y + self.matrix[6]) }
end
