require './simple_writer'
require './numbering_writer'
require './writer_decorator'
require './time_stamping_writer'

w = SimpleWriter.new('out')
w.extend(NumberingWriter)
w.extend(TimeStampingWriter)

w.write_line('hello')