def bubble_sort(arr)
  return arr if arr.length <= 1

  (0..arr.length - 2).each do |j|
    swapped = false
    # Inner swap look
    (0..arr.length - j - 2).each do |i|
      next unless arr[i] > arr[i + 1]

      tmp = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = tmp
      swapped = true
    end
    break if swapped == false
  end
  arr
end

arr = [4, 3, 78, 2, 0, 2]

arr2 = [748, 682, 944, 882, 228, 840, 489, 904, 17, 179, 939, 872, 755, 656, 754, 451, 303, 138, 724, 992, 382, 693,
        157, 732, 609, 129, 820, 260, 243, 102, 108, 432, 335, 91, 923, 168, 828, 573, 216, 366, 191, 462, 228, 700, 931, 695, 738, 665, 36, 409, 10]

def sorted?(arr)
  arr[1..].each_with_index do |el, i|
    return false if el < arr[i]
  end
  true
end

fail if !bubble_sort(arr))
p sorted?(bubble_sort(arr2))
