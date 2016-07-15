# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  left, right = 0, nums.size - 1
  while left <= right
    mid = left + ((right - left) >> 1)
    if nums[mid] == target
      return mid
    elsif nums[mid] > nums[left]
      if nums[left] <= target and target <= nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end
    elsif nums[mid] < nums[left]
      if nums[mid] <= target and target <= nums[right]
        left = mid + 1
      else
        right = mid - 1
      end
    else
      left += 1
    end
  end
  return -1
end
