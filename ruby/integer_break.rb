# @param {Integer} n
# @return {Integer}
def integer_break(n)
  return 1 if n <= 2
  return 2 if n == 3
  return 4 if n == 4

  dp = Array.new(n)
  dp[1], dp[2], dp[3] = 2, 3, 4
  Range.new(4, n).each { |i| dp[i] = dp[i - 3] * 3 }
  dp[n - 1]
end
