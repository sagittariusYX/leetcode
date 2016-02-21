# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  pow = n.to_s(3).size
  if n.to_s(3).to_i == 10 ** (pow-1)
    return true
  else
    return false
  end
end

# Another solution:
#
# def is_power_of_three(n)
#   if n <= 0
#     return false
#   else
#     return 1162261467 % n == 0
#   end
# end
