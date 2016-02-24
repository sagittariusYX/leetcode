def search_middle(arr, key)
  left, right = 0, arr.size - 1

  while left <= right
    # bit operation to optimize effection
    middle = left + ((right - left) >> 1)
    if arr[middle] > key
      right = middle - 1
    elsif arr[middle] < key
      left = middle + 1
    else
      return middle
    end
  end

  return -1
end

puts search_middle([10,57,68,70,78,90,122], 78)
