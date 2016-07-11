# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums = nums.sort
  res = []

  0.upto(nums.size - 1) do |i|
    if i == 0 || nums[i] > nums[i - 1]
      target = -nums[i]
      left, right = i + 1, nums.size - 1
      while left < right
        if nums[left] + nums[right] < target
          left += 1
        elsif nums[left] + nums[right] > target
          right -= 1
        else
          l = []
          l << nums[i]
          l << nums[left]
          l << nums[right]
          res << l
          left, right = left + 1, right - 1

          while left < right && nums[left] == nums[left - 1]
            left += 1
          end
          while left < right && nums[right] == nums[right + 1]
            right -= 1
          end
        end
      end
    end
  end
  res
end
