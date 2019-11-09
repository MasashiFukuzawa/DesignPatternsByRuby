class Encrypter
  def initialize(key)
    @key = key
  end

  def encrypt(reader, writer)
    key_index = 0
    while !reader.eof?
      clear_char = reader.getc
      encrypt_char = [clear_char, @key[key_index], key_index].sample.to_s
      writer.putc(encrypt_char)
      key_index = (key_index + 1) % @key.size
    end
  end
end