# Because Ruby is purely OOP ONLY methods exist, functions DNE
# As such, methods and functions are both methods in Ruby

# The nicetity of Ruby is that there are so many built in methods
# Methods have optional ()
puts 'Look Ma, no bracket' # Ex. puts is a global method that does not need () to be called

# P1: NAMING
# ---------------
# Method names are conventionally snake_case
# Methods names can also be anything, but there are certian limitations:

# def 1_cannot_be_an_int_at_start
#   "hello"
# end

# P2: Parameters and Arguments
# ---------------------------
def say_hi(name)
  'Hi, ' + name + '!'
end

# Default values can be set easily
def say_hi2(name = 'UKNWN')
  'Hi, ' + name + '!'
end

# P3: Method Return
# ---------------------------
# Ruby offers implict returns from methods: i.e. the last expression evaluated will be returned w/ or w/o the return keyword
# Ex.
def div_by_3(num)
  if num % 3 == 0
    'Divisible by 3' # This...
  else
    'Not divisible by 3' # Or this....
  end
  # ... is evaluated
end

# Explict return types are still nessecary in some cases
# And some people tend to prefer the explictness
def div_by_3_exp_return(num)
  return 'Number was not entered, please enter a number.' unless num_is_a? Numeric

  if num % 3 == 0
    'Divisible by 3' # This...
  else
    'Not divisible by 3' # Or this....
  end
  # ... is evaluated
end

# P4: Method Chaining
# ---------------------------
# Ruby allows you to chain methods
# The return of one method is used for the input of the next
phrase = %w[be to not or be to]
puts phrase.reverse.join(' ').capitalize

# P5: Predicate Methods
# ---------------------------
# All methods that RETURN booleans will use the predicate method syntax
# You MUST add the ? for all predicate methods
puts 5.even?
puts 5.odd?
puts 7.odd?
puts 12.between?(6, 12) # Inclusive []

# CUSTOM methods can also use the predicate (?) syntax, but it is not inforced
# BUT it is good practice to follow this guideline, and can help in the future

# P6: BANG methods
# ---------------------------
# By default, methods do not alter the original value (this is standard to above bug)
# If you want this sideffect of saving the effect of a method on the original object, then you can use the BANG method

pls_whisper = 'HHHEEEEELOOO FRIENDSSSSS'

puts pls_whisper.downcase!
puts pls_whisper # 'hhheeeeelooo friendsssss'
puts pls_whisper # 'HHHEEEEELOOO FRIENDSSSSS'

puts pls_whisper.downcase! # 'hhheeeeelooo friendsssss'
puts pls_whisper # 'hhheeeeelooo friendsssss'

# NOTE: This syntax can be thought of as doing whisper = whisper.downcase
