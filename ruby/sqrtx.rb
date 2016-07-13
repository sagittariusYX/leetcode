# @param {Integer} x
# @return {Integer}
# based on (x/2 + 1) ^ 2 > x
def my_sqrt(x)
  return 0 if x == 0
  left, right = 1, (x >> 1) + 1
  while left <= right
    mid = (left + right) >> 1
    if mid ** 2 == x
      return mid
    elsif mid ** 2 < x
      left = mid + 1
    else
      right = mid - 1
    end
  end
  return right
end
