# P1: Creating Hashes
# ------------------
# Hashes can have any value type as it's key
hash = { 9 => 'nine', :six => 6 }

# P2: Accessing Data
# ------------------
# You can access similar to indexing
hash[9]
# But this will return nil if the value does not exist
hash[8] # => nil
# To throw an error when a key is not found use fetch
# You can also return a default value
# hash.fetch(8) # => KeyError
hash.fetch(8, 'eight') # => 'eight'

# P3: Adding / Changing Data
# ------------------
# Data can be added simply by doing
hash['seven'] = 8
# Data can be changed by accessing an existing key
hash['seven'] = 7
# To remove data you can use the delete method
hash.delete('seven')

# P4: Hash Methods
# ------------------
# Many of the methods that work on arrays, work on hashes
# But there are unique methods
hash.keys # => Arry of keys
hash.values # => Arry of values

# Merge two hashes
hash2 = { 'five' => 5, :six => 'six' }
hash_merged = hash.merge(hash2)
# NOTE: The merge method will overwrite the values of all keys that exist in both hashes in the hash that CALLS the method

# P5: Hash irl
# ------------------
# In reality, most hash keys will be symbols, as they are performant AND allow for clean syntax
# "Rocket" Syntax
# fast_food_resturants = {
#   :mcdonalds => "McDonalds",
#   :harverys => "Harverys",
#   :burgerking=> "BurgerKing",
# }

# "Symbols" Syntax (ONLY WORKS ON SYMBOLS)
sports = { football: 'Physically tough', Hockey: 'Brr', basketball: 'Ankles' }

# BUT you still must access it as a hash
# puts sports[football] #=> x. this wont work
sports[:football] #=> This will
