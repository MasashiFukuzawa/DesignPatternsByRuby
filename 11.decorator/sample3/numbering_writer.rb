module NumberingWriter < WriterDecorator
  attr_reader :line_number

  def write_line(line)
    @line_number = 1 if !@line_number
    super("#{@line_number}: #{line}")
    @line_number += 1
  end
end