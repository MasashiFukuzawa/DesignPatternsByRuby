module TimeStampingWriter < WriterDecorator
  def write_line(line)
    super("#{Time.new}: #{line}")
  end
end