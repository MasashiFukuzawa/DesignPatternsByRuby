class Frog
  def initialize(name)
    @name = name
  end

  def eat
    puts "カエル #{@name} は食事中です"
  end

  def speak
    puts "カエル #{@name} はゲロッゲロッと鳴いています"
  end

  def sleep
    puts "カエル #{@name} は静かに眠っています"
  end
end