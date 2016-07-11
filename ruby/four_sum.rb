# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  res = []
  return res if nums.size < 4
  nums = nums.sort

  0.upto(nums.size - 4) do |i|
    next if i > 0 && nums[i] == nums[i - 1]
    break if nums[i] + nums[i + 1] + nums[i + 2] + nums[i + 3] > target  # lowest four ones
    next if nums[i] + nums[-1] + nums[-2] + nums[-3] < target

    (i + 1).upto(nums.size - 3) do |j|
      next if j > i + 1 && nums[j] == nums[j - 1]
      break if nums[i] + nums[j] + nums[j + 1] + nums[j + 2] > target
      next if nums[i] + nums[j] + nums[-1] + nums[-2] < target
      left, right = j + 1, nums.size - 1

      while left < right
        total_sum = nums[i] + nums[j] + nums[left] + nums[right]
        if total_sum == target
          l = []
          l << nums[i]
          l << nums[j]
          l << nums[left]
          l << nums[right]
          res << l
          while left < right && nums[left] == nums[left + 1]
            left += 1
          end
          left += 1
          while left < right && nums[right] == nums[right - 1]
            right -= 1
          end
          right -= 1
        elsif total_sum < target
          while left < right && nums[left] == nums[left + 1]
            left += 1
          end
          left += 1
        else
           while left < right && nums[right] == nums[right - 1]
            right -= 1
          end
          right -= 1
        end
      end
    end
  end
  res
end
