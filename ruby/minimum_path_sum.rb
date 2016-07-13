# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
  m, n = grid.size, grid[0].size
  dp = eval ([[0] * n] * m).to_s
  dp[0][0] = grid[0][0]

  1.upto(m - 1) do |i|
    dp[i][0] = dp[i - 1][0] + grid[i][0]
  end
  1.upto(n - 1) do |i|
    dp[0][i] = dp[0][i - 1] + grid[0][i]
  end

  1.upto(m - 1) do |i|
    1.upto(n - 1) do |j|
      dp[i][j] = grid[i][j] + [dp[i - 1][j], dp[i][j - 1]].min
    end
  end
  dp[m - 1][n - 1]
end
