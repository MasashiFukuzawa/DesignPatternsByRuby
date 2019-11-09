require 'etc'

class BankAccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  # method_missingをオーバーライドするメリット・デメリット
  # メリット: シンプルな記述が可能、煩雑な委譲の記述が楽になる
  # デメリット: 可読性が下がること
  def method_missing(name, *args)
    check_access
    @subject.send(name, *args)
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannnot access account"
    end
  end
end