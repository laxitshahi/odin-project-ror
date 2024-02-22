# EVERYTHING in ruby is true EXCEPT for nil and false
# This means that the number 0 or "" is TRUE as well
# puts true if 'hello'
# puts true if 12
# puts true if false
# puts true if nil

# eql? checks value AND type:
puts 5.eql?(5.0) # false
puts 5.eql?(5) # true

# equal? object reference in memory
a = 5
b = 5
a.equal?(b) # true

# Strings are stored in memory differently than integers, so the same mem addr cannot be used for the same value
a = 'hi'
b = 'hi'
a.equal?(b) # false

# Spaceship Operator: returns 3 values
puts 5 <=> 10 # left is lower than right: => -1
puts 10 <=> 10 # left and right are equal: => 0
puts 10 <=> 5 # left is greater than right: => 1

# Case Statements
grade = 'F'

did_pass = case grade
           when 'A' then 'No doubt yeah!'
           when 'D' then "Yea, but don't tell anyone."
           else 'You are passing, but not today.'
           end

# More complex example
case grade
when 'A'
  puts 'Nice job you got an A'
  bank_balance = 10_000_000
when 'D'
  puts 'try again, but you did pass'
  can_i_retire_soon = false
else
  puts 'maybe you need to look into some extra help'
  i_failed = true
end

# UNLESS statement: The opposite of if
# You use it when you do NOT want to do something if a statement is true
age = 19
puts 'Time to get a job' unless age < 18

total = 49
passed = total >= 50 ? 'Congrats, you passed!' : 'Try again!'

# ABOVE ALL ELSE READBILITY IS THE MOST IMPORTANT THING
