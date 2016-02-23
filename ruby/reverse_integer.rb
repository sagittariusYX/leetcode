# @param {Integer} x
# @return {Integer}
def reverse(x)
  result = x.to_s.reverse.to_i
  result = 0 - result if x < 0

  if result <= 2147483647 and result >= -2147483648
    return result
  else
    return 0
  end
end


# Have you thought about this?
# Here are some good questions to ask before coding. Bonus points for you if you have already thought through this!
#
# If the integer's last digit is 0, what should the output be? ie, cases such as 10, 100.
#
# Did you notice that the reversed integer might overflow? Assume the input is a 32-bit integer, then the reverse of 1000000003 overflows. How should you handle such cases?
#
# For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
