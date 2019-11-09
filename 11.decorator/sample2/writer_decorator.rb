require 'forwardable'

class WriterDecorator
  extend Forwardable

  # 対象のオブジェクト（@real_writer）にメソッドを委譲
  # ここで宣言していないメソッドは委譲先（@real_writer）を見に行くことになる
  # missing_methodのオーバーライドでも同様のことができる
  def_delegators :@real_writer, :write_line, :pos, :rewind, :close

  def initialize(real_writer)
    @real_writer = real_writer
  end
end