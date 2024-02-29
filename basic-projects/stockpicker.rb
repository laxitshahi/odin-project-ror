def stock_picker(arr)
  return arr[0] unless arr.length > 2

  max_profit = 0

  l = 0
  r = 1

  while r < arr.length
    diff = arr[r] - arr[l]
    # Ensure that we are always on the MINIMUM number for the left
    l = r if diff.negative?

    max_profit = [diff, max_profit].max

    r += 1
  end

  max_profit
end

max_diff = stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])

p max_diff
