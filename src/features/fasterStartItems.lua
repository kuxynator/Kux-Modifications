local spaceShipInventory = {
	--{"flying-roboport", 1},
	--{"logistic-robot", 50},
	--{"logistic-chest-requester", 50},
	--{"logistic-chest-storage", 50},
	--{"logistic-chest-passive-provider", 50},
	{"Kux-PowerPoles-big-electric-pole-grid-64", 50},
	{"Kux-PowerPoles-big-electric-pole-line-64", 50},
	{"mining-depot", 4},
	{"mining-drone", 20},
	{"transport-belt-loader", 20},
	{"green-wire", 200},
	{"inserter", 100},
	{"fast-inserter", 50},
	{"kr-crash-site-assembling-machine-1-repaired", 6},
	--{"kr-crash-site-assembling-machine-2-repaired", 5}
}

local setSpaceshipInventory = function () --TODO use freeplay API
	if settings.global["Kux-Modifications-EnableSpaceshipStartItems"].value then
		local spaceship = game.surfaces["nauvis"].find_entity("crash-site-spaceship", {-5,-6})
		--TODO find spaceship at another position
		--TODO place in player inventory
		if spaceship then
			local inventory = spaceship.get_inventory(defines.inventory.chest)
			for _, item in ipairs(spaceShipInventory) do
				local stack = {name = item[1], count = item[2]}
				if game.item_prototypes[stack.name] then
					inventory.insert(stack)
				end
			end
		else
			log("crash-site-spaceship not found. can not fill inventory.")
		end

		if (spaceship) then
			if game.item_prototypes["flying-roboport"] then
				local roboport = game.surfaces["nauvis"].create_entity{name = "flying-roboport", position = {0,0}, force = game.forces["player"]}
				--local inventory = roboport.get_inventory(defines.inventory.roboport_robot)
				--inventory.insert({name = "logistic-robot", count = 50})
				roboport.insert({name = "logistic-robot", count = 50})
			end
		end
	end
end

local on_init = function ()
	--if settings.global["Kux-Modifications-EnableStartItems"].value then
	--	local addPlayerItems = {
	--		--["burner-inserter"] = 100,
	--		--["movement-fuel"] = 1000 -- TODO move to kux running
	--	}
	--	-- [BUG] Unknown interface: freeplay. -- I can not reproduce this
	--	local items = remote.call("freeplay", "get_created_items")
	--	for k,v in pairs(addPlayerItems) do items[k] = (items[k] or 0) + v end
	--	remote.call("freeplay", "set_created_items", items)
	--end
end

if mods then
	--if settings.global["Kux-Modifications-EnableSpaceshipStartItems"].value then
		-- tweak spaceship to have enough slots for the items
		local spaceship = data.raw["container"]["crash-site-spaceship"]
		spaceship.inventory_size = spaceship.inventory_size + 15
	--end
else
	table.insert(EventDistributor.on_init, on_init)
end