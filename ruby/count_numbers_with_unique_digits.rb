# @param {Integer} n
# @return {Integer}
def count_numbers_with_unique_digits(n)
  return 1 if n == 0
  n = [n - 1, 10].min
  dp = Array.new(n, 0)

  dp[0] = 9
  1.upto(n) do |i|
    dp[i] = dp[i - 1] * (10 - i)
  end
  res = (eval dp.join('+')).to_i + 1
  res
end
