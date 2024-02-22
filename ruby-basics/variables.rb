# Variables are references or pointers to addresses in memory
location = 'Nepal' # location points to addr of "Nepal"
jhons_location = location # jhons location points to addr of "Nepal"

puts location.equal?(jhons_location)

# This does not point to the same memory address
part = 'leg'
part2 = 'leg'
puts part.equal?(part2)

# Integer are stored in a more efficent way, so they share the same addr if the value is the same
num1 = 1
num2 = 1
puts num1.equal?(num2)
