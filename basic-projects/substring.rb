def substring(_word, substrings)
  op_hash = {}
  substrings.each do |substring|
    if substring in op_hash
      # op_hash[substring] += 1
    else
      op_hash[substring] = 1
    end
  end

  p op_hash.keys
end

substring('hello', %w[hello bye hell sdkfjs hell bye])
