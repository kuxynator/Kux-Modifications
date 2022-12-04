if mods then
	print("surfacesReloaded data")
	--local item1 = data.raw["simple-entity"]["sky-entrance"]
	--local item2 = data.raw["simple-entity"]["sky-exit"]
	--local item3 = data.raw["simple-entity"]["underground-entrance"]
	--local item4 = data.raw["simple-entity"]["underground-exit"]

	--table.insert(data.raw["recipe"]["sky-entrance"].ingredients, {"coin","10000"})
	--data.raw["recipe"]["sky-entrance"].enabled=false
	--table.insert(data.raw["recipe"]["sky-exit"].ingredients, {"coin","10000"})
	--data.raw["recipe"]["sky-exit"].enabled=false
	--table.insert(data.raw["recipe"]["underground-entrance"].ingredients, {"coin","10000"})
	--data.raw["recipe"]["underground-entrance"].enabled=false
	--table.insert(data.raw["recipe"]["underground-exit"].ingredients, {"coin","10000"})
	--data.raw["recipe"]["underground-exit"].enabled=false
else
	print("surfacesReloaded control")
	local doEnableDisableSurfaceLadders = function ()
		--disbale all ladders if multiplayer
		local mp = game.is_multiplayer()
		for _, force in pairs(game.forces) do
			for recipeName, recipe in pairs(force.recipes) do
				if recipeName == "sky-entrance" or recipeName == "sky-exit" or recipeName == "underground-entrance" or recipeName == "underground-exit" then
					recipe.enabled = mp == false
				end
			end
		end
	end

	table.insert(EventDistributor.on_init, doEnableDisableSurfaceLadders)
	table.insert(EventDistributor.on_configuration_changed, doEnableDisableSurfaceLadders)
end