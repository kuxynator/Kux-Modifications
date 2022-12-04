DataStage = "data-final-fixes"
require "features.robots"
require "features.setMaxUndergroundLength"
require "features.spaceExploration"

--[[
print("##################################################################################")
for _, type in pairs(data.raw) do
	for _, value in pairs(type) do
		if value.name == "sawmill" or value.name == "collect-wood" then
			print(value.name, value.type)
			print(serpent.block(value))
		end
	end
end
]]