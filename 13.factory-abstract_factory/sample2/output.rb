require './pond'
require './duck_pond'
require './frog_pond'
require './duck'
require './frog'

pond = DuckPond.new(3)
pond.simulate_one_day

pond = FrogPond.new(3)
pond.simulate_one_day