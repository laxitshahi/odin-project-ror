# P1: #include
# ------------------
# Let's say we want to search an array to see if a value exists
# With basic enumberable methods, there would be multiple lines of code involved

numbers = [1, 2, 3, 4, 5]
to_find = 3
result = false

numbers.each do |number|
  if number == to_find
    result = true
    break
  end
end

# With include we can simply call the function
numbers.include?(3)
numbers.include?(5)

places = ['rome', 'paris', 'london', 'toronto', 'new york']
places.include?('paris')

# P2: #any
# -------------
# Q: What if we want a more general conditon?
# A: We can use any, as it will return true if ANY value in the array meets the condition
numbers = [10, 20, 100, 1234, 129_312]

numbers.any? { |num| num > 100_000 }
numbers.any? { |num| num < 10 }

# P3: #all
# -------------
# Any is the "opposite" of all, as all values in arr/hash must meet the condition

waters = %w[cold_water hot_water luke_warm_water ice_cold_water]
waters.all? { |water| water.length > 12 } # => false
waters.all? { |water| water.length > 3 } # => true

# NOTE: It is imporant to be careful as #all will return TRUE by default
# i.e. on empty arrays or hashes where the #all method has no elements to evaluate, it will RETURN true
blank = []
blank.all? { |b| b.length > 1000 } # => true

# P4: #none
# --------
# #none returns true is all values do not match the condition

words_less_than_14_chars = %w[antidisestablishmentarianism
                              pneumonoultramicroscopicsilicovolcanoconiosis
                              hippopotomonstrosesquippedaliophobia
                              supercalifragilisticexpialidocious
                              sesquipedalian
                              floccinaucinihilipilification
                              antitransubstantiationalistically
                              incomprehensibilities
                              disestablishmentarianism
                              interdisciplinary
                              electroencephalograph]
words_less_than_14_chars.none? { |val| val.length < 15 } #=> true
