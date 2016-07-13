# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
  return [] if n.zero?
  res = Array.new(n){ Array.new(n) }

  top, bottom, left, right = 0, n - 1, 0, n - 1
  num = 1

  while left < right and top < bottom
    left.upto(right - 1) do |i|
      res[top][i] = num
      num += 1
    end

    top.upto(bottom - 1) do |i|
      res[i][right] = num
      num += 1
    end

    right.downto(left + 1) do |i|
      res[bottom][i] = num
      num += 1
    end

    bottom.downto(top + 1) do |i|
      res[i][left] = num
      num += 1
    end

    left += 1
    right -= 1
    top += 1
    bottom -= 1
  end

  if left == right and top == bottom
    res[top][left] = num
  end
  res
end
