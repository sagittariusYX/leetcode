# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = Hash.new
  nums.each_with_index {|n,i| return [hash[n]-1,i] if hash[n] != nil; hash[target-n] = i + 1 }
end

# 通过减法和index来查找目标值
