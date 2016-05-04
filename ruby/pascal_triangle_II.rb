# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  pascal = [[1]]
  for i in 1...row_index
    pascal << [1]
    for j in 1...i
      pascal[i] << pascal[i-1][j] + pascal[i-1][j-1]
    end
    pascal[i] << 1
  end
  pascal[row_index]
end
