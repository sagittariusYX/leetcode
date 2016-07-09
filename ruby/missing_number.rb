# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  l = nums.size
  sum = l * (l + 1) / 2
  s = 0
  nums.each { |num| s += num }
  sum - s
end
