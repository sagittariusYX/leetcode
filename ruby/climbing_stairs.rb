# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  a, b = 1, 1
  n.times do
    a, b = b, a + b
  end
  return a
end
