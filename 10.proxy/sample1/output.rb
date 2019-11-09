require './bank_account'
require './bank_account_proxy'

account = BankAccount.new(100)
puts account.deposite(50)
puts account.withdraw(20)

proxy = BankAccountProxy.new(account)
puts proxy.balance
puts proxy.deposite(10)
puts proxy.withdraw(100)