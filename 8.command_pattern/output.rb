require './command'
require './composite_command'
require './create_file'
# require './copy_file'
require './delete_file'

cmds = CompositeCommand.new
add_command(CreateFile.new('file1.txt', "hello world\n"))
# add_command(CopyFile.new('file1.txt', 'file2.txt'))
# add_command(DeleteFile.new('file1.txt'))

cmds.execute
puts cmds.description

# cmds.unexecute
# puts cmds.description