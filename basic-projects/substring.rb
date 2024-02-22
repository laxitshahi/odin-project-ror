def substrings(word, substrings)
  op_hash = {}
  substrings.each do |substring|
    op_hash[substring] = word.downcase.scan(substring.downcase).length if word.downcase.include?(substring.downcase)
  end

  p op_hash
end

substrings('hello', %w[hello bye hell hell bye])
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
