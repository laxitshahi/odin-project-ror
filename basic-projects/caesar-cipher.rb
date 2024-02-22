# Caesar cipher:substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.
def caesar_cipher(str, shift_type = 'right', shift_distance = 3)
  shift_types = %w[left right]
  invalid_shift_type_err = 'Please input a valid shift_type'
  return invalid_shift_type_err unless shift_types.include?(shift_type)

  # Check if string input
  non_string_input_err = 'Please ensure that the input is a string'
  return non_string_input_err unless str.is_a?(String)

  # Here we know the string and shift_type is valid
  alphabet_index = {}
  alphabets = []

  ('a'..'z').each_with_index do |char, index|
    alphabet_index[char] = index
    alphabets.append(char)
  end

  # shift and accumulate new string
  op_str = ''
  str.each_char do |char|
    unless char.match(/^[[:alpha:]]$/)
      op_str += char
      next
    end

    mul = shift_type == 'left' ? -1 : 1
    cur_pos = alphabet_index[char.downcase]
    new_pos = (cur_pos + shift_distance * mul) % 26

    op_str += alphabet_index.include?(char) ? alphabets[new_pos] : alphabets[new_pos].upcase
  end

  op_str
end

puts caesar_cipher('What a string!', 'right', 5)
puts caesar_cipher('What a string!', 'left', 5)
puts caesar_cipher('a', 'left', 200)
puts caesar_cipher('a', 'fdsfks', 200)
puts caesar_cipher(1, 'right', 200)
