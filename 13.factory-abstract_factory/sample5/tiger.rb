class Tiger
  def initialize(name)
    @name = name
  end

  def eat
    puts "トラ #{@name} は食事中です"
  end

  def speak
    puts "トラ #{@name} はガオーと吠えています"
  end

  def sleep
    puts "トラ #{@name} は静かに眠っています"
  end
end