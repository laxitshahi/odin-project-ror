# Like any other programming language reading the stack trace is Key
# But then, what about debugging?

# TYPE 1: PUTS or p
# ---------------------
# If you need a quick check, puts is a great way to test different parts of your program
# BUT you can also use p (combo of puts and inspect) for more information

def is_annagram(str)
  return true if str.reverse.downcase == str.downcase

  false
end

p is_annagram('racecar')

# The issue with debugging with puts is that it will print a blank for nil values
puts 'Using puts:'
puts []
p 'Using p:'
p []
