# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  return nums.size if target > nums.last
  return 0 if target < nums.first

  left, right = 0, nums.size - 1

  while left <= right
    mid = left + ((right - left) >> 1)
    if nums[mid] >= target
      right = mid - 1
    else 
      left = mid + 1
    end
  end
  return left
end
