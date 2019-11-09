require './encrypter'
require './string_io_adapter'

reader = File.open('message.txt')
writer = File.open('message_encrypted.txt', 'w')
file_encrypter = Encrypter.new('my secret key')
file_encrypter.encrypt(reader, writer)

word_encrypter = Encrypter.new('my secret key')
reader = StringIOAdapter.new('We attack at dawn')
writer = File.open('out.txt', 'w')
word_encrypter.encrypt(reader, writer)