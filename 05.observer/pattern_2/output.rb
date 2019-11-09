require './employee'
require './payroll'
require './tax_man'

fred = Employee.new('fred', 'Crane Operator', '30000')

payroll = Payroll.new
fred.add_observer(payroll)

tax_man = TaxMan.new
fred.add_observer(tax_man)

fred.salary=5000