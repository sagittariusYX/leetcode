# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  left, right, cur = 0, nums.size - 1, 0
  while cur <= right
    if nums[cur] == 0
      nums[left], nums[cur] = nums[cur], nums[left]
      left += 1
      cur += 1
    elsif nums[cur] == 1
      cur += 1
    elsif nums[cur] == 2
      nums[cur], nums[right] = nums[right], nums[cur]
      right -= 1
    end
  end
  nums
end
