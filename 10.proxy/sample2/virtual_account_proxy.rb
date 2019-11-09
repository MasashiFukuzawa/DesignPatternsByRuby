class VirtualAccountProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  # method_missingをオーバーライドするメリット・デメリット
  # メリット: シンプルな記述が可能、煩雑な委譲の記述が楽になる
  # デメリット: 可読性が下がること
  def method_missing(name, *args)
    s = subject
    s.send(name, &args)
  end

  def subject
    @subject || (@subject = @creation_block.call)
  end
end