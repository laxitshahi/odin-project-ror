# PART 1 outputs
# Print and puts BOTH return nil
# Puts automatically appends a new line after every statement
# Puts also outputs all values of an array one at a time
print 'Learning to code is FUN!'
print "1234\n"

puts 'Hey, how are you doing?'
puts "I'm doing ok,you?"

putc '1 2 3' # outputs one character at at time --> 1
putc "\n"

def numbers
  p 'This is a secret' # p RETURNS the object that you pass into it
end
res = numbers
puts res

# PART 2 inputs
gets # gets stops program execution and waits for user input + enter

hello = gets # gets can be assigned to grab input of user

putc hello
