require "lib.Version"

--COMPATIBILITY 1.1.0 rename "layer-11" to "rail-layer"
local signpostEntity_collision_mask = "rail-layer"
if Version.compare(mods["base"],"1.1.0") < 0 then signpostEntity_collision_mask = "layer-11" end

if mods["attach-notes"] then
	local signpostEntity = data.raw["storage-tank"]["signpost"]
	signpostEntity.collision_mask =  {signpostEntity_collision_mask}	
	--signpostEntity.collision_box = {{0, 0}, {0, 0}} --{{-0.2, -0.2}, {0.2, 0.2}}
	signpostEntity.selection_box = {{-0.5, -0.5}, {0.5, 0.2}} --{{-0.5, -0.5}, {0.5, 0.5}}
end