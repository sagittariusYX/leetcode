# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  nums = (nums1 + nums2).sort
  nums_len = nums.size
  if nums_len % 2 == 0
    return (nums[nums_len/2 - 1] + nums[nums_len/2]) / 2.0
  else
    return nums[nums_len / 2] / 1.0
  end
end
