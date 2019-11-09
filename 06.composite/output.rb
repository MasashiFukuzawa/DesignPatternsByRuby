require './task'
require './composite_task'
require './manufacture_cake_task'
require './make_cake_task'
require './fill_pan_task'
require './bake_task'
require './frost_task'
require './make_batter_task'
require './add_dry_ingredients_task'
require './add_liquids_task'
require './mix_task'
require './package_cake_task'
require './box_task'
require './label_task'

manufacture_cake_task = ManufactureCakeTask.new
puts manufacture_cake_task.get_time_required
puts manufacture_cake_task.total_number_basic_tasks