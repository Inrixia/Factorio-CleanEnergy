require "defines"
require "util"


script.on_event(defines.events.on_tick, function(event)

	manage_temperature() --/ Runs temperature managing script for generator.

end)

script.on_event(defines.events.on_chunk_generated, function(event)
 	for _,entity in pairs(game.get_surface(1).find_entities_filtered{ area=event.area, name="geothermal-deposit"}) do 
 		entity.amount = 34000 * (math.random(100, 200)/100)
 	end

end)

script.on_event(defines.events.on_built_entity, function(event) --/ Runs following code when entity is built
	if event.created_entity.name == "hydro-generator" then
		local hydro_generator = event.created_entity
			if global.hydro_generator == nil then
				global.hydro_generator = {}
			end
		table.insert(global.hydro_generator, hydro_generator) --/ Adds created hydro generator to global table of hydro generators
		hydro_generator.fluidbox[1] = {type="water", amount=1, temperature=20} --/ Sets custom  fluid level and temperature for created hydro generator
	elseif event.created_entity.name == "geothermal-generator" then
		local geothermal_generator = event.created_entity
			if global.geothermal_generator == nil then
				global.geothermal_generator = {}
			end
		table.insert(global.geothermal_generator, geothermal_generator) --/ Adds created hydro generator to global table of hydro generators
		geothermal_generator.fluidbox[1] = {type="water", amount=1, temperature=20} --/ Sets custom  fluid level and temperature for created hydro generator
	end
end)

script.on_event(defines.events.on_robot_built_entity, function(event) --/ Same as above but for robots
	if event.created_entity.name == "hydro-generator" then
		local hydro_generator = event.created_entity
			if global.hydro_generator == nil then
				global.hydro_generator = {}
			end
		table.insert(global.hydro_generator, hydro_generator) --/ Adds created hydro generator to global table of hydro generators
		hydro_generator.fluidbox[1] = {type="water", amount=1, temperature=20} --/ Sets custom  fluid level and temperature for created hydro generator
	elseif event.created_entity.name == "geothermal-generator" then
		local geothermal_generator = event.created_entity
			if global.geothermal_generator == nil then
				global.geothermal_generator = {}
			end
		table.insert(global.geothermal_generator, geothermal_generator) --/ Adds created hydro generator to global table of hydro generators
		geothermal_generator.fluidbox[1] = {type="water", amount=1, temperature=20} --/ Sets custom  fluid level and temperature for created hydro generator
	end
end)

function manage_temperature() --/ Manipulates fluids inside hydro generators
	local first_player = game.players[1]
   	if global.hydro_generator ~= nil then
  	    for k,tid in pairs(global.hydro_generator) do --/ For every hydro generator in the global hydro generator table
				if tid.valid then
         			if tid.fluidbox[1] ~= nil then --/ If the fluidbox is not empty
         				fluid = tid.fluidbox[1] --/ Copy feilds from fluidbox of hydro generator to tidgen
						pos = tid.position
  						tile = game.get_surface(1).get_tile(pos.x, pos.y)
 						if tile.name == "water" then
 							fluid.amount = 10
							fluid.temperature = 50 --/ Manipluate the temperature of tidgens fluid box
						elseif tile.name == "deepwater" then
							fluid.amount = 10
							fluid.temperature = 100 --/ Manipluate the temperature of tidgens fluid box
						end
						tid.fluidbox[1] = fluid --/ Copy the updated feilds from tidgens fluid box to hydro gen (Overwriting and creating the new value/temperature)
					end
				end
			end
	end
	if global.geothermal_generator ~= nil then
  	    for k,tid in pairs(global.geothermal_generator) do --/ For every hydro generator in the global hydro generator table
				if tid.valid then
         			if tid.fluidbox[1] ~= nil then --/ If the fluidbox is not empty
         				fluid = tid.fluidbox[1] --/ Copy feilds from fluidbox of hydro generator to tidgen
						pos = tid.position
 						for _,entity in pairs(game.get_surface(1).find_entities_filtered{ area={{pos.x-1, pos.y-1},{pos.x+1, pos.y+1}}, name="geothermal-deposit"}) do 
 							if (game.tick % 125) == 0 then
 								if fluid.amount > 1 then
 									entity.amount = entity.amount - 1
 								end
 							end
							fluid.temperature = 100
							if entity.amount == 1 then
								entity.destroy()
							end
 						end
						tid.fluidbox[1] = fluid --/ Copy the updated feilds from tidgens fluid box to hydro gen (Overwriting and creating the new value/temperature)
					end
				end
			end
	end
end