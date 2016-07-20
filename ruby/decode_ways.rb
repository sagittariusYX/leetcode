# @param {String} s
# @return {Integer}
def num_decodings(s)
  length = s.size
  return 0 if length.zero?
  dp = Array.new(length + 1, 0)
  dp[length] = 1
  dp[length - 1] = (s[length - 1] == '0') ? 0 : 1
  (length - 2).downto(0) do |i|
    next if s[i] == '0'
    dp[i] = (s[i, 2].to_i <= 26) ? (dp[i + 1] + dp[i + 2]) : dp[i + 1]
  end
  dp.first
end
