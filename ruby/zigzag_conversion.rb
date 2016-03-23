# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1

  rows = [""] * num_rows
  level, inc = 0, -1
  s.each_char do |char|
    rows[level] += char
    if level == 0 or level == num_rows - 1
      inc *= -1
    end
    level += inc
  end

  rows.join("")
end
