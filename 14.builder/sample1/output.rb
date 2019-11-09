require './computer'
require './computer_builder'
require './motherboard'
require './cpu'
require './basic_cpu'
require './turbo_cpu'
require './drive'

builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disc(100000)

computer = builder.computer
puts computer.display
puts computer.motherboard
puts computer.drives