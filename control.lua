require "defines"
require "util"


script.on_event(defines.events.on_tick, function(event)

	manage_temperature() --/ Runs temperature managing script for generator.

end)

script.on_event(defines.events.on_built_entity, function(event) --/ Runs following code when entity is built
	if event.created_entity.name == "tidal-generator" then
		local tidal_generator = event.created_entity
			if global.tidal_generator == nil then
				global.tidal_generator = {}
			end
		table.insert(global.tidal_generator, tidal_generator) --/ Adds created tidal generator to global table of tidal generators
		tidal_generator.fluidbox[1] = {type="water", amount=1, temperature=20} --/ Sets custom  fluid level and temperature for created tidal generator
	end
end)

script.on_event(defines.events.on_robot_built_entity, function(event) --/ Same as above but for robots
	if event.created_entity.name == "tidal-generator" then
		local tidal_generator = event.created_entity
			if global.tidal_generator == nil then
				global.tidal_generator = {}
			end
		table.insert(global.tidal_generator, tidal_generator) --/ Adds created tidal generator to global table of tidal generators
		tidal_generator.fluidbox[1] = {type="water", amount=1, temperature=20} --/ Sets custom  fluid level and temperature for created tidal generator
	end
end)

function manage_temperature() --/ Manipulates fluids inside tidal generators
	local first_player = game.players[1]
	pos = first_player.position
	thing = game.get_surface(1).find_entities_filtered{area = {{pos.x}, {pos.y}}, name= "superheated-steam"}
	first_player.print(thing.name)
   	if global.tidal_generator ~= nil then
  	    for k,tid in pairs(global.tidal_generator) do --/ For every tidal generator in the global tidal generator table
				if tid.valid then
         			if tid.fluidbox[1] ~= nil then --/ If the fluidbox is not empty
         				fluid = tid.fluidbox[1] --/ Copy feilds from fluidbox of tidal generator to tidgen
						pos = tid.position
  						tile = game.get_surface(1).get_tile(pos.x, pos.y)
 						if tile.name == "water" then
 							fluid.amount = 10
							fluid.temperature = 25 --/ Manipluate the temperature of tidgens fluid box
							--first_player.print("Placed In Water")
						elseif tile.name == "deepwater" then
							fluid.amount = 10
							fluid.temperature = 42 --/ Manipluate the temperature of tidgens fluid box
							--first_player.print("Placed In Deep Water")
						end
						first_player.print(tile.name)
						tid.fluidbox[1] = fluid --/ Copy the updated feilds from tidgens fluid box to tidal gen (Overwriting and creating the new value/temperature)
					end
				end
			end
	end
end