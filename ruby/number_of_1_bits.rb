# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  num = 0
  while n != 0
    n &= (n - 1)
    num += 1
  end
  num
end
