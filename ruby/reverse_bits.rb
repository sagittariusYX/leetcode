# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  bin_str = n.to_s(2)
  return (('0'*(32-bin_str.size) + bin_str).reverse).to_i(2)
end

# For example, given input 43261596
# (represented in binary as 00000010100101000001111010011100),
# return 964176192 (represented in binary as 00111001011110000010100101000000).
