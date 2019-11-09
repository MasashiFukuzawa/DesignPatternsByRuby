name = 'John'
proc = Proc.new do
  name = 'Mary'
end

proc.call
puts name

# ---------------
hello = lambda do
  puts 'Hello'
  puts 'I am inside a proc'
end
hello.call

# ---------------
hello = lambda {puts 'Hello, I am inside proc'}
hello.call
