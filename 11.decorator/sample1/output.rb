require './simple_writer'
require './numbering_writer'
require './writer_decorator'
require './check_summing_writer'
require './time_stamping_writer'

writer = CheckSummingWriter.new(
  TimeStampingWriter.new(
    NumberingWriter.new(
      SimpleWriter.new('final.txt')
    )
  )
)