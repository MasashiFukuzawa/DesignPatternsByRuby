class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def deposite(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end