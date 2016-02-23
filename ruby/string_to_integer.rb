# @param {String} str
# @return {Integer}
def my_atoi(str)
  return 0 if str.to_i.zero?
  result = str.to_i

  if result > 2147483647
    return 2147483647
  elsif result < -2147483648
    return -2147483648
  else
    return result
  end
end
