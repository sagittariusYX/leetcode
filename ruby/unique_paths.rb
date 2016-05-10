# @param {Integer} m
# @param {Integer} n
# @return {Integer}
# dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
def unique_paths(m, n)
  if m == 1 and n == 1
    dp = [[1]]
  elsif m == 1 and n > 1
    dp = [[1] * n]
  elsif n == 1 and m > 1
    dp = [[1]] * m
  else
    dp = eval ([[0] * n] * m).to_s
    for i in 0...n
      dp[0][i] = 1
    end
    for j in 0...m
      dp[j][0] = 1
    end
    for k in 1...m
      for s in 1...n
        dp[k][s] = dp[k - 1][s] + dp[k][s - 1]
      end
    end
  end
  return dp[m - 1][n - 1]
end
