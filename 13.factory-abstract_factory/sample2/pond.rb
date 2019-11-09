class Pond
  def initialize(number_animals)
    @animals = []
    number_animals.times do |i|
      @animals << new_animal("動物#{i}")
    end
  end

  def simulate_one_day
    @animals.each {|animal| animal.eat}
    @animals.each {|animal| animal.speak}
    @animals.each {|animal| animal.sleep}
  end
end