# @param {Integer} n
# @return {Integer[]}
def gray_code(n)
  res = []
  0.upto((1 << n) - 1) do |num|
    res << ((num >> 1) ^ num)
  end
  res
end
