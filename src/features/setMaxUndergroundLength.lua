local undergroundLength = 255 --TODO create configuration

local function getUntergroundPipes()
	local prototypes = {}
	for _, prototype in pairs(data.raw["pipe-to-ground"]) do
		local fluid_box = prototype.fluid_box
		local pipe_connections = fluid_box and fluid_box.pipe_connections
		if pipe_connections and #pipe_connections == 2 then
			local conection = pipe_connections[2]
			if conection and conection.max_underground_distance then
				table.insert(prototypes, prototype)
			end
		end
	end	
	return prototypes
end

local function modifyUndergroundPipes()
	local prototypes = getUntergroundPipes()
	for _, prototype in ipairs(prototypes) do
		local conection = prototype.fluid_box.pipe_connections[2]
		conection.max_underground_distance = undergroundLength
	end
end

local function getUndergroundBelts()
	local prototypes = {}
	for _, prototype in pairs(data.raw["underground-belt"]) do
		if prototype and prototype.max_distance then
			table.insert(prototypes, prototype)
		end
	end
	return prototypes
end

local function modifyUndergroundBelts()
	local prototypes = getUndergroundBelts()
	for _, prototype in pairs(prototypes) do
		prototype.max_distance = undergroundLength
	end
end

modifyUndergroundPipes()
modifyUndergroundBelts()