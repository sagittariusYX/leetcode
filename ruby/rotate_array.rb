# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  k %= nums.size
  k.times do
    nums.unshift(nums.pop)
  end
  return nums
end
