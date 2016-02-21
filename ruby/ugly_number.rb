# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  return false if num <= 0
  [2, 3, 5].each do |x|
    while num % x == 0
      num /= x
    end
  end
  return num == 1
end