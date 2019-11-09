require './report'
require './formatter'
require './html_formatter'
require './plain_text_formatter'

report = Report.new(HTMLFormatter.new)
report.output_report

report = PlainTextFormatter.new
report.output_report