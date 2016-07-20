def two_sum(arr, target)
  arr = arr.sort!

  left, right = 0, arr.size - 1
  while left < right
    if arr[left] + arr[right] == target
      return arr[left], arr[right]
    elsif arr[left] + arr[right] > target
      right -= 1
    else
      left += 1
    end
  end
  return -1, -1
end

p two_sum([5, 6, 1, 4, 7, 9, 8], 10)
