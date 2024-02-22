# Interestingly ruby has an infinite loop called loop
#
i = 0
loop do
  break if i == 100

  i += 1
  puts "i is #{i}"
end

# Ruby does not use colons or brackets, rather it uses the "do" syntax
j = 0
while j < 10 # do is not always nessecary
  j += 1
  puts "j is #{j}"
end

# UNTIL is a more readable version of while
k = 0
until k >= 10
  k += 1
  puts "k i #{k}"
end

# To define ranges you can use the following syntax
for i in (0..5)
  puts "#{i} apples left"
end
# You can also use characters
for i in ('a'..'xx')
  puts "#{i}"
end
# You can also use strings: it will go through EACH permutation
for i in ('a'..'hi')
  puts "#{i}"
end

# Times loop
4.times do
  puts 'This will output 4.times'
end

# Times loops can also grab the iterator
10.times do |index|
  puts ".times index #{index}"
end

# RANGES can also be defined using upto and downto
5.upto(10) { |num| print("#{num} ") }
puts "\n"
10.downto(4) { |num| print("#{num} ") }
puts "\n"
