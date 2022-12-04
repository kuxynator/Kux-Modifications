if mods then -- data stage
	print("\n################################################################################\n")
	print(DataStage)

	if(DataStage == "data") then
		local deliveryCannonChest = data.raw["container"]["se-delivery-cannon-chest"]
		if deliveryCannonChest then
			deliveryCannonChest.inventory_size = 100
		end

		--se-core-miner-dril
		local coreMinerDrill = data.raw["mining-drill"]["se-core-miner-drill"]
		if coreMinerDrill then
			coreMinerDrill.mining_speed = 300 --150
			coreMinerDrill.module_specification={
				module_slots = 4 --0
			}
			coreMinerDrill.allowed_effects = {"speed", "productivity", "consumption", "pollution"} -- none
		end
	end

	if DataStage == "data-final-fixes" then
		local seDeliveryCannonCapsuleItem = data.raw.item["se-delivery-cannon-capsule"]
		local seDeliveryCannonCapsuleRecipe = data.raw.recipe["se-delivery-cannon-capsule"]
		
		--print("se-delivery-cannon-capsule:".."\n"..serpent.block(seDeliveryCannonCapsuleItem))
		--print("se-delivery-cannon-capsule:".."\n"..serpent.block(seDeliveryCannonCapsuleRecipe))
		if seDeliveryCannonCapsuleItem and seDeliveryCannonCapsuleRecipe then
			if true then
				local item = table.deepcopy(seDeliveryCannonCapsuleItem)
				local recipe = table.deepcopy(seDeliveryCannonCapsuleRecipe)
			
				item.name = "kux-delivery-capsule"
				item.energy_required = 200 --10
				item.icons = {
					{
						icon = item.icon,
						tint = { a = 0,  b = 255, g = 128, r = 128 }
					}
				}
				item.icon = nil
				recipe.name = "kux-deliveryCapsule"
				recipe.result = item.name
				recipe.enabled = true --TODO enable with technology
	
				local entity = {
					name = item.name,
					type = "simple-entity",
					icons = item.icons
				}
	
				data:extend{item,recipe}
				print("kux-deliveryCapsule:".."\n"..serpent.block(item))
				print("kux-deliveryCapsule:".."\n"..serpent.block(recipe))
			end

			if true then
				local assemblingMachine1Entity = data.raw["assembling-machine"]["assembling-machine-1"]
				local assemblingMachine1Item = data.raw.item["assembling-machine-1"]
				local assemblingMachine1Recipe = data.raw.recipe["assembling-machine-1"]
				item = table.deepcopy(assemblingMachine1Item)
				entity = table.deepcopy(assemblingMachine1Entity)
				recipe = table.deepcopy(assemblingMachine1Recipe)

				item.name = "kux-energy-consuming-assembling-machine-1"
				entity.name = item.name
				recipe.name = item.name

				data:extend{item,recipe,entity}
				print("### "..item.name.." item\n"..serpent.block(item))
				print("### "..recipe.name.." recipe\n"..serpent.block(recipe))
				print("### "..entity.name.." entity\n"..serpent.block(entity))
			end
			
		

		end
	end
end