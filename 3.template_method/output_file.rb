require './report'
require './html_report'
require './plain_report'

report1 = HTMLReport.new
report1.output_report

report2 = PlainTextReport.new
report2.output_report