# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  return true if n == 1
  sum = 0
  n.to_s.split("").each do |x|
    sum += x.to_i ** 2
  end
  return false if sum > 100
  is_happy sum
end