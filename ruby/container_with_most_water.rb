# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  l, r, width, result = 0, height.size - 1, height.size - 1, 0
  (0..width).to_a.reverse_each do |w|
    if height[l] < height[r]
      result, l = [result, height[l]*w].max, l + 1
    else
      result, r = [result, height[r]*w].max, r - 1
    end
  end
  result
end
