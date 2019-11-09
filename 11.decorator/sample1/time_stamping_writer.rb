class TimeStampingWriter < WriterDecorator
  def write_line(line)
    @real_twriter.write_line("#{Time.new}: #{line}")
  end
end