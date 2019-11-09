require './report'
require './formatter'

report = Report.new(&HTML_FORMATTER)
report.output_report