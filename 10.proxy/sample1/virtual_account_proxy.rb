class VirtualAccountProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  def deposite(amount)
    s = subject
    s.deposite(amount)
  end

  def withdraw(amount)
    s = subject
    s.withdraw(amount)
  end

  def balance
    s = subject
    s.balance
  end

  def subject
    @subject || (@subject = @creation_block.call)
  end
end