# @param {Integer[]} nums
# @param {Integer} k
# @param {Integer} t
# @return {Boolean}
def contains_nearby_almost_duplicate(nums, k, t)
  return false if nums.size == 0 || nums.size == 1
  for i, j in (0...nums.size).to_a.combination(2).to_a
    return true if ((i-j).abs <= k && (nums[i]-nums[j]).abs <= t)
  end
  return false
end
