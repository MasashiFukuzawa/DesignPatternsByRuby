require './computer'
require './desktop_computer'
require './laptop_computer'
require './computer_builder'
require './computer_builder'
require './desktop_builder'
require './laptop_builder'
require './motherboard'
require './cpu'
require './basic_cpu'
require './turbo_cpu'
require './drive'
require './laptop_drive'

desktop_builder = DesktopBuilder.new
desktop_builder.turbo
desktop_builder.add_cd(true)
desktop_builder.add_dvd
desktop_builder.add_hard_disc(100000)

desktop_computer = desktop_builder.computer
puts desktop_computer.display
puts desktop_computer.motherboard
puts desktop_computer.drives

laptop_builder = LaptopBuilder.new
laptop_builder.turbo
laptop_builder.add_cd(true)
laptop_builder.add_dvd
laptop_builder.add_hard_disc(100000)

laptop_computer = laptop_builder.computer
puts laptop_computer.display
puts laptop_computer.motherboard
puts laptop_computer.drives