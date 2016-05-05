# @param {Integer[]} nums
# @return {Integer}
# money[i] = max(money[i - 2] + nums[i - 1], money[i - 1])
def rob(nums)
  return 0 if nums.size.zero?
  dp = [0, nums.first]
  for i in 2..nums.size
    dp[i] = [dp[i - 1], dp[i - 2] + nums[i - 1]].max
  end
  return dp[nums.size + 1]
end
