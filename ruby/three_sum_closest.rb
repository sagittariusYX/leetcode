# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  return 0 if nums.size < 3
  nums = nums.sort
  min_value, min_sum = 2 ** 31 - 1, 0

  0.upto(nums.size - 3) do |i|
    left, right = i + 1, nums.size - 1
    while left < right
      sum = nums[i] + nums[left] + nums[right]
      if (sum - target).abs < min_value
        min_value = (sum - target).abs
        min_sum = sum
      end
      if sum < target
        left += 1
      elsif sum > target
        right -= 1
      else
        return target
      end
    end
  end
  min_sum
end
