# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  return [] if matrix.empty?
  res = []
  row, col = 0, 0
  row_end, col_end = matrix.size, matrix[0].size
  total_num = row_end * col_end
  row_end -= 1
  col_end -=1
  while true
    col.upto(col_end) do |i|
      res << matrix[row][i]
    end
    row += 1
    break if res.size == total_num

    row.upto(row_end) do |j|
      res << matrix[j][col_end]
    end
    col_end -= 1
    break if res.size == total_num

    col_end.downto(col) do |k|
      res << matrix[row_end][k]
    end
    row_end -= 1
    break if res.size == total_num

    row_end.downto(row) do |l|
      res << matrix[l][col]
    end
    col += 1
    break if res.size == total_num
  end
  res
end
