# P1: Nested Array Basics
# ----------------------
# Nested arrays are useful when grouping data
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  %w[Adams Baker Clark Davis],
  %w[Jones Lewis Lopez Moore],
  %w[Perez Scott Smith Young]
]

# The accessing is as expected
test_scores[0][0] # => 97
test_scores[1][2] # => 76
teacher_mailboxes[2][3] # =>  "Young"

# Negative indecies are also valid
teacher_mailboxes[0][-1] #=> Davis
test_scores[-2][-2] #=> 64

# If you try to access
# 1. a nonexistant nested element, you raise a NoMethodError
# teacher_mailboxes[3][0] #=> nil[0] => ERROR (we are indexing nil)
teacher_mailboxes[0][4] #=> %w[Adams Baker Clark Davis][4] we are indexing an array so nil

# To return nil instead of raise an error, the #dig method can be used
teacher_mailboxes.dig(3, 0) # => nil
teacher_mailboxes.dig(0, 4) # => nil

# P2: Creating a nested Array
# ----------------------------
# You cannot create a nested array with the #new syntax
# Why? -> This will cause all of the interal arrays to have shared memory addresses
# This is because Array.new is meant to be used with immutable objects i.e. numbers, boolean, value, symbol
mutable = Array.new(3, Array.new(2)) # or Array.new(3, [])
mutable[0][0] = 1 # => Expected [[1, nil], [nil, nil], [nil, nil]]
# => Reality [[1, nil], [1, nil], [1, nil]]
p mutable

# How do we avoid this behiavour?
immutable = Array.new(3) { Array.new(2) }
immutable = Array.new(3) { Array.new(2) }
immutable[0][0] = 1 # => Reality [[1, nil], [nil, nil], [nil, nil]]
p immutable

# P3: Adding/Removing from nested arrays
# ----------------------------
# --The syntax for adding to nested arrays is as expcted
test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]

# The syntax for removing from nested arrays is as expcted
test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop
#=> 100
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

# P4: Nested Array Iteration
# ----------------------------
# We can of course use a double for loop, but in a "Ruby" way, we can use a dobule each loop

teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row: #{row_index} Column: #{column_index} ==> #{teacher}"
  end
end

# BUT if we just want the teacher names then we can flatten the array
teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} is very cool"
end

# A more contrived example
hello = [[[['one'], ['one']], ['three', [[[['five']]]]]], [['two'], ['four']]]
p hello.flatten # => ["one", "one", "three", "five", "two", "four"]

# A more complex example
test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

# Q: What is this block of code doing?
# A: It first asks: are all scores in each subarray > 80?
# A: test_scores will then get an array of booleans, if any of subarrays have grades ALL > 80, then this will return true, else false
test_scores.any? do |scores|
  scores.all? { |score| score > 80 }
end
# => false

# Q: What is this block of code doing?
# A: It first asks if there are ANY grades > 80 in EACH subarray; If all subarrays have at LEAST ONE grade > 80, then true
test_scores.all? do |scores|
  scores.any? { |score| score > 80 }
end
# => true

# P6: Nested Hashes Basics
# ----------------------------
vehicles = {
  alice: { year: 2019, make: 'Toyota', model: 'Corolla' },
  blake: { year: 2020, make: 'Volkswagen', model: 'Beetle' },
  caleb: { year: 2020, make: 'Honda', model: 'Accord' }
}

# Data Access is expected
vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"

# Again, if you try to access the key of key that does not exist, a NoMethodError will be thrown
# Again, this can be prevented with dig
# vehicles[:zoe][:year] #=> NoMethodError
vehicles.dig(:zoe, :year) #=> nil
vehicles[:alice][:color] #=> nil
vehicles.dig(:alice, :color) #=> nil

# Adding and removing data is also as expected
vehicles[:dave] = { year: 2021, make: 'Ford', model: 'Escape' }
vehicles.delete(:blake)
## Adding/deleting subhash
vehicles[:dave][:color] = 'red'
vehicles[:dave].delete(:color)

# P7: Nested Hashes Methods
# ----------------------------
# #select all hashes where vehicle year >= 2020
vehicles.select { |_name, data| data[:year] >= 2020 }

# To collect them in an array we can use the #collect method
# #collect is an alias for map
vehicles.collect { |name, data| name if data[:year] >= 2020 } # [nil, :caleb, :dave]

# But the issue with collect and map is that they will return nil for hashes that did not meet the Condition
# To clean this up we can use the compact method
vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact # [:caleb, :dave]

# But ruby has a wide varitey of methods and a cleaner all in one method already exists
vehicles.filter_map { |name, data| name if data[:year] >= 2020 } # [:caleb, :dave]
