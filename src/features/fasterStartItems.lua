local on_init = function ()
	local items = {
		["Kux-PowerPoles-big-electric-pole-grid-64"] = 50,
		["Kux-PowerPoles-big-electric-pole-line-64"] = 50,
		["logistic-chest-passive-provider"] = 50,
		["logistic-chest-requester"] = 50,
		["logistic-chest-storage"] = 50,
		["flying-roboport"] = 1,
		["logistic-robot"] = 100,
		["mining-depot"] = 4,
		["mining-drone"] = 20,
		["transport-belt-loader"] = 20
	}
	-- Add items
	local created_items = remote.call("freeplay", "get_created_items")
	for k,v in pairs(items) do
		created_items[k] = (created_items[k] or 0) + v
	end
	remote.call("freeplay", "set_created_items", created_items)
end

if mods then
	--TODO crash-site-spaceship fill slots with items
	data.raw["container"]["crash-site-spaceship"].inventory_size = 30

	if mods["Krastorio2"] then
		--print(serpent.block(data.raw["electric-energy-interface"]["kr-crash-site-generator"]))
		local generator = data.raw["electric-energy-interface"]["kr-crash-site-generator"]
		generator.energy_production               = "20MW" -- "240kW"
		generator.energy_source.buffer_capacity   = "20MJ" -- "240kJ"
		generator.energy_source.output_flow_limit = "20MW" -- "240kW"
	end
else
	EventHandler = EventHandler or {}
	EventHandler.on_init = EventHandler.on_init or {}
	table.insert(EventHandler.on_init, on_init)
end