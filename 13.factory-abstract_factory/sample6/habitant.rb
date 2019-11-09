class Habitant
  def initialize(number_animals, number_plants, organism_factory)
    @organism_factory = organism_factory

    @animals = []
    number_animals.times do |i|
      @animals << @organism_factory.new_animal("動物#{i}")
    end

    @plants = []
    number_plants.times do |i|
      @plants << @organism_factory.new_plant("植物#{i}")
    end
  end

  def simulate_one_day
    @plants.each {|plant| plant.grow}
    @animals.each {|animal| animal.eat}
    @animals.each {|animal| animal.speak}
    @animals.each {|animal| animal.sleep}
  end
end