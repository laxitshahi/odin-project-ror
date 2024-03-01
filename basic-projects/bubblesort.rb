def bubble_sort(arr)
  return arr if arr.length <= 1

  for i in arr.length
    for j in arr.length - 1
      p "#{i}, #{j}"
    end
  end
end

p bubble_sort([4, 3, 78, 2, 0, 2])
