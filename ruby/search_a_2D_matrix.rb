# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  return false if matrix.empty?
  return _binary_search_(matrix[0], target) if matrix.size == 1
  m = matrix.size
  top, bottom = 0, m - 1
  while top <= bottom
    mid = top + ((bottom - top) >> 1)
    if matrix[mid][0] < target
      top = mid + 1
    elsif matrix[mid][0] > target
      bottom = mid - 1
    else
      return true
    end
  end
  nums = matrix[bottom]
  _binary_search_(nums, target)
end

private def _binary_search_(nums, target)
  left, right = 0, nums.size - 1
  while left <= right
    mid = left + ((right - left) >> 1)
    if nums[mid] < target
      left = mid + 1
    elsif nums[mid] > target
      right = mid - 1
    else
      return true
    end
  end
  return false
end
