# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return nums if nums.size < 2
  slow, fast = 0, 1
  while fast < nums.size
    if nums[slow] == nums[fast]
      nums.delete_at fast
    else
      slow += 1
      fast += 1
    end
  end
  nums
end
