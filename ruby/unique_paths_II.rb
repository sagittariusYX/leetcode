# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
  m, n = obstacle_grid.size, obstacle_grid[0].size
  dp = eval ([[0] * n] * m).to_s
  0.upto(m - 1) do |i|
    if obstacle_grid[i][0] == 0
      dp[i][0] = 1
    else
      dp[i][0] = 0
      break
    end
  end
  0.upto(n - 1) do |i|
    if obstacle_grid[0][i] == 0
      dp[0][i] = 1
    else
      dp[0][i] = 0
      break
    end
  end

  1.upto(m - 1) do |i|
    1.upto(n - 1) do |j|
      if obstacle_grid[i][j] == 1
        dp[i][j] = 0
      else
        dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
      end
    end
  end
  return dp[m - 1][n - 1]
end
