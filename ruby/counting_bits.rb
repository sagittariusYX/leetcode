# @param {Integer} num
# @return {Integer[]}
# res[i] = res[i >>1] + (i&1)
def count_bits(num)
  res = [0] * (num + 1)
  for i in 1..num
    res[i] = res[i >> 1] + (i & 1)
  end
  res
end
