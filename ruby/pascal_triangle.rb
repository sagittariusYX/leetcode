# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows.zero?
  pascal = [[1]]
  for i in 1...num_rows
    pascal << [1]
    for j in 1...i
      pascal[i] << pascal[i-1][j] + pascal[i-1][j-1]
    end
    pascal[i] << 1
  end
  pascal
end
