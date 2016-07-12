# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = nums.first
  sum = Array.new(nums.size)
  sum[0] = nums.first

  (1...nums.size).each do |i|
    sum[i] = [nums[i], sum[i - 1] + nums[i]].max
    max = [max, sum[i]].max
  end
  max
end
