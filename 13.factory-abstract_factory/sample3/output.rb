require './pond'
require './duck_water_lily_pond'
require './frog_algae_pond'
require './duck'
require './frog'
require './water_lily'
require './algae'

pond = DuckWaterLilyPond.new(1, 1)
pond.simulate_one_day

pond = FrogAlgaePond.new(1, 1)
pond.simulate_one_day