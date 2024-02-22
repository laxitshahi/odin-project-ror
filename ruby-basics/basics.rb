# EVERYTHING IS AN OBJECT IN RUBY, even basic data types

# Section 1: NUMBERS
# you can Convert to float/int directly
13.to_f #=> 13.0
13.0.to_i #=> 13
13.9.to_i #=>13

# Other useful functions
6.even?
7.even?

6.odd?
7.odd?

# SECTION 2: Strings
# 2.1 Concatenation
# Plus operator
s1 = 'Welcome ' + 'to ' + 'the ' + ' jungle'

# Shovel operator
'Welcome ' << 'to ' << 'the ' << ' jungle'

# Concatinate Remember, everything is an object
'Welcome '.concat('to ').concat('da jungle')

# SUBSTRINGS
'hello'[0] #=> "h"
'hello'[0..1] #=> "he" --> range inclusive
'hello'[0..4] #=> "___" --> what would this be?
'hello'[-1] #=> "o"

# SECTION 3: Escape characters
# \\  #=> Need a backslash in your string?
# \b  #=> Backspace
# \r  #=> Carriage return, for those of you that love typewriters
# \n  #=> Newline. You'll likely use this one the most.
# \s  #=> Space
# \t  #=> Tab
# \"  #=> Double quotation mark
# \'  #=> Single quotation mark
#

# SECTION 4: String Interpolation
name = 'Tommyie'
si_valid = "Hello, #{name}"
si_invalid = puts 'Hello, #{name}' #=> This doesnt work with single quotes

# SECTION 5: Common String Methods
str = 'hello'
str.capitalize
str.include?('lo')
str.include?('z')

str.upcase #=> bracket is optional for methods in ruby
str.downcase

'hello'.empty? #=> Again, remember, EVERYTHING IS AN OBJECT
''.empty?

str.length
str.reverse

'hello friend'.split #=> ["hello", "friend"]
'hello'.split('') #=> ["h","e","l","l","o"]

' hello, friend        '.strip #=> 'hello, friend'

# COOL WAYS TO MODIFY STRINGS
'he770'.sub('7', 'l') #=> "hel70"
'he770'.gsub('7', 'l') #=> "hello"
'he770'.insert(-1, 'dude') #=> "hello"
'hello mango'.delete('l') #=> "heo word" || ALL instances deleted
'!'.prepend('hello, ', 'world') #=> "hello, world!"

# Converting other objects to strings
four = 4.to_s #=> "4"
nil.to_s #=> ""
:symbol.to_s #=> "symbol"

# WHAT IS A SYMBOL???
# Unlike strings, symbols are stored in uniquely stored in memory
# Symbols on the other had only store unique values in memory(?)

# Creating a symbol is straightforward, you prepend a : (conlon) in front of text

# To illustrate the difference between symbols and strings, see the example below
puts 'string' == 'string' #=> true
puts 'string'.equal?('string') #=> false
puts :symbol.equal?(:symbol) #=> false

# SECTION 6
# true and false are as expected
# nil is nothing; Any code that does not return anyting is returing nil
