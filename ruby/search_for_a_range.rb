# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  start = (0...nums.size).bsearch { |i| nums[i] >= target }
  return [-1, -1] if start.nil?
  return [-1, -1] if nums[start] != target

  endd = (start...nums.size).bsearch { |i| nums[i] > target }
  return [start, nums.size - 1] if endd.nil?
  return [start, endd - 1]
end
