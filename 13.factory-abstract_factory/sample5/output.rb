require './habitant'
require './duck'
require './frog'
require './tiger'
require './water_lily'
require './algae'
require './tree'

habitant = Habitant.new(1, Tiger, 3, Tree)
habitant.simulate_one_day