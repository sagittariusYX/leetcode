def search(arr, left, right)
  if right - left <= 1
    if arr[left] < arr[right]
      return arr[right], arr[left]
    else
      return arr[left], arr[right]
    end
  end

  max_l, min_l = search(arr, left, left + ((right - left) >> 1))
  max_r, min_r = search(arr, left + ((right - left) >> 1) + 1, right)

  max = (max_l > max_r) ? max_l : max_r
  min = (min_l < min_r) ? min_l : min_r
  return max, min
end

p search([5, 6, 8, 3, 7, 9], 0, 5)
