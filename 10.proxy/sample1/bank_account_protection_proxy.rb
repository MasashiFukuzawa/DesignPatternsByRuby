require 'etc'

class BankAccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  def balance
    check_access
    @subject.balance
  end

  def deposite(amount)
    check_access
    @subject.deposite(amount)
  end

  def withdraw(amount)
    check_access
    @subject.withdraw(amount)
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannnot access account"
    end
  end
end