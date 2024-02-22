# ENUMERABLES: built-in methods for hashes and arrays

# Basic example: You want to exclude 1 item from a list
pokemons = %w[ambipom pidgey rattata chimchar]
normal_tyes = []

# Non enumerable method
for pkm in pokemons do
  if pkm != 'chimchar'
    # append is alias for push
    normal_tyes.push(pkm)
  end
end

p 'non-enumerable method output', normal_tyes

# enumerable method
normal_types = pokemons.select { |pkm| pkm != 'chimchar' }
p 'enumerable method select', normal_tyes
normal_types = pokemons.reject { |pkm| pkm == 'chimchar' }
p 'enurable outputs reject', normal_tyes

# P2: #each
# ----------------
# #each is a general enumerator that can do anything
pokemons.each { |pkm| puts 'Hi, ' + pkm }

# Multiline
# Best practice to use a do end rather than {}
pokemons.each do |pkm|
  op = "Hi, #{pkm}!"
  puts op
end

# Can also be use used hashes
hash = { one: 1, two: 2 }
# You can seperate the key, value:
hash.each { |key, value| puts "#{key} is #{value}" }
# Or you can use it directly as an array
hash.each { |pair| puts "#{pair[0]} is #{pair[1]}" }

# NOTE: enumerable methds return THE ORIGINAL array or Hash
# Any changes to the data DOES NOT affect the original
shapes =  %w[triangle square hexagon pentagon]
op = shapes.each { |shape| shape.upcase }
p op

# If you want the index available, then you can use the each_with_index method
numbers = %w[zero one two three four five]
numbers.each_with_index { |num, index| puts num if index.even? }

# P2: #map
# ----------------
# Because the #each methods do not return the modified data, you need to work around with an external array to save the changes
# Ex.
lowercase = %w[upper higher top topper bopper]
uppercase = []

lowercase.each { |x| uppercase.push(x.upcase) }

p 'lowercase = ', lowercase
p 'uppercase = ', uppercase

# To avoid this clunky implementation, we can use MAP to return the altered data
op = lowercase.map { |x| x.upcase }
p 'map op = ', op

# This allows you to follow a declerative approach to programming
order = ['large burger', 'large fries', 'large coke']
# NOTE: gsub replaces all instances of match, while sub replaces only the first instance
diet_order = order.map { |item| item.gsub('large', 'small') }
p diet_order

# P3: #select / #filter
# The select/fitler method alows you to select something and return it, as the name implies
responses = { 'Tom' => 'yes', 'Robert' => 'no', 'harold' => 'yes', 'Sarah' => 'yes' }
yeses = responses.select { |_person, res| res == 'yes' }

# P3: Reduce
# ---------------
# The idea of reduce is to take an array or hash and REDUCE it down to a single object
# This idea can save many lines of code
# #reduce takes in an inital value and uses that default value to accumulate the result

votes_for_resturant = ["McDonald's", 'iHop', "Fran's Plan", "McDonald's", 'iHop']
# Here it is best to use each_with_object, as we can drop the return value
# op = votes_for_resturant.reduce(Hash.new(0)) do |result, vote|
#   result[vote] += 1
#   result
# end
op = votes_for_resturant.each_with_object(Hash.new(0)) do |vote, result|
  result[vote] += 1
end
p op

# Side note: You can setup a new hash with a DEFAULT value
hundereds = Hash.new(100)
p hundereds['first'] # DNE so returns 100
p hundereds['mine'] # DNE so returns 100

# P4: Bang Operator
# ---------------
# NOTE: It is important to note that methods such as #map and #select RETURN the modified data, but DO NOT MODIFY the original
# If you want to modifiy, then you can use the BANG operator
food_list = %w[apple custard banana burger momo spackling]
p food_list
# food_list.select! { |food| food != 'spackling' }
# p food_list

# It is best not to use bang methods as it can be hard to debug unexpected side effects
# So what can we do instead
# 1. Save to variable
edible_list = food_list.reject { |food| food == 'spackling' }
p edible_list

# 2. Save to function
def filter_foods(food_list)
  food_list.reject { |food| food == 'spackling' }
end

p filter_foods(food_list)
