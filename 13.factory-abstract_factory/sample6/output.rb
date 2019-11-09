require './habitant'
require './jungle_organism_factory'
require './pond_organism_factory'
require './frog'
require './tiger'
require './algae'
require './tree'

jungle_organism_factory = JungleOrganismFactory.new(Tree, Tiger)
pond_organism_factory = PondOrganismFactory.new(Algae, Frog)

habitant = Habitant.new(1, 3, jungle_organism_factory)
habitant.simulate_one_day

habitant = Habitant.new(1, 3, pond_organism_factory)
habitant.simulate_one_day