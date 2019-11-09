require './report'
require './html_formatter'
require './plain_text_formatter'

report1 = Report.new(HTMLFormatter.new)
report1.output_report

report2 = Report.new(PlainTextFormatter.new)
report2.output_report