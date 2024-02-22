# Arrays can be created with an array literal [], or Array.new method
puts Array.new(3, 7) # Array of size 3 with all values being 7

# arrays can be indexed with positive or negative numbers like python
str_arr = %w[This is a STRING ARRAY] # == ['This', 'is', 'a', 'STRING', 'ARRAY']
str_arr[0]
str_arr[-1] # ARRAY
str_arr[-2] # STRING

# first and last methods are also provided
str_arr.first # This
str_arr.first(2) # This, is
str_arr.last(2) # STRING ARRAY

# You can push or << (shovel) new values into arrays
num_arr = [1, 2, 3, 4]

num_arr.push(5, 6, 7) # => returns [1, 2, 3, 4, 5, 6, 7]
num_arr << 8 # => returns [1, 2, 3, 4, 5, 6, 7, 8]
num_arr.pop # returns => 8

# shift and unshift are the same as push and pop, but for the start of the array
# unshift adds values to beginning of array
num_arr = [1, 2]
num_arr.unshift(0) # => [0,1,2]
# shift removes value at beginning of array
num_arr.shift # => 0

# You can pop/shift MULTIPLE values at once
num_arr = [1, 2, 3, 4, 5, 6]

num_arr.pop(2) # => [5,6]
num_arr.shift(3) # => [1,2,3]
print num_arr # => [4]
print "\n" # => [4]

# Arrays can be CONTACTED
arr1 = [1, 2, 3]
arr2 = [4, 5, 6] # => [1,2,3,4,5,6]
arr1.concat(arr2) # => [1,2,3,4,5,6]

# You can also "subract two arrays" #=> [2,2,3]

# Arrays also have a very long list of methods that can be used on them
# You can access this by calling the .methods function

random_arr = [1, 23]
print random_arr.methods
puts "\n"

# Interesting array methods
test_arr = [1, 2, 2, 3, 'hello', :symbol, :symbol, 'hello']
print test_arr.shuffle # Mixes the order of elements
print "\n"
print test_arr.insert(1, 'here', 'i', 'go') # add value(s) from position in arr
print "\n"
print test_arr.sample # get random value from array
print "\n"
print test_arr.uniq # removes all duplicate values in arr
print "\n"
print test_arr.clear # clears array
print "\n"
