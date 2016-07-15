# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return nums.size if nums.size < 3
  pre, cur = 1, 2
  while cur < nums.size
    if nums[cur] == nums[pre] and nums[cur] == nums[pre - 1]
      cur += 1
    else
      pre += 1
      nums[pre] = nums[cur]
      cur += 1
    end
  end
  pre + 1
end
