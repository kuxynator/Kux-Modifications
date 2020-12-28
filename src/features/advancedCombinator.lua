if mods["advanced-combinator"] then
	local advancedCombinatorRecipe = data.raw.recipe["advanced-combinator"]
	advancedCombinatorRecipe.ingredients = {
		{ "constant-combinator", 1 },
		{ "arithmetic-combinator", 1 },
		{ "green-wire", 1 },
		{ "red-wire", 1 }
	}
	local advancedCombinatorEntity = data.raw["constant-combinator"]["advanced-combinator"]
	advancedCombinatorEntity.active_energy_usage = "50KW" --500KW
	advancedCombinatorEntity.circuit_wire_max_distance = 32
end