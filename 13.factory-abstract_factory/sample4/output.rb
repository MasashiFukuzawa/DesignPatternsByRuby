require './pond'
require './duck'
require './frog'
require './water_lily'
require './algae'

pond = Pond.new(1, Duck, 3, WaterLily)
pond.simulate_one_day