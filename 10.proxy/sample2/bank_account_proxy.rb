class BankAccountProxy
  def initialize(real_object)
    @real_object = real_object
  end

  # method_missingをオーバーライドするメリット・デメリット
  # メリット: シンプルな記述が可能、煩雑な委譲の記述が楽になる
  # デメリット: 可読性が下がること
  def method_missing(name, *args)
    puts "Delegating #{name} message to subject."
    @subject.send(name, *args)
  end
end