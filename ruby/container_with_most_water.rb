# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  l, r, width, result = 0, height.size - 1, height.size - 1, 0
  (0..width).to_a.reverse_each do |w|
    if height[l] < height[r]
      # 此时height[l]是短板
      # 无论height[r]怎样移动 都不可能产生比此时更大的面积
      # else情况也一样
      result, l = [result, height[l]*w].max, l + 1
    else
      result, r = [result, height[r]*w].max, r - 1
    end
  end
  result
end
