# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  i, j, k = m-1, n-1, m+n-1
  while j >= 0
    nums1[k] = (i >= 0 && nums1[i] > nums2[j]) ? nums1[i] : nums2[j]
    i -= 1
    j -= 1
    k -= 1
  end
end
