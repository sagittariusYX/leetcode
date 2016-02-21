# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  # pow = n.to_s(2).size
  # if n.to_s(2).to_i == 10 ** (pow-1)
  #   return true
  # else
  #   return false
  # end
  return (n > 0 and not (n & n-1))
end
