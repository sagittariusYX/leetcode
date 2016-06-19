# @param {Integer} num
# @return {Boolean}
def is_power_of_four(num)
  return false if num <= 0
	zero = num.to_s(2).count('0')
	one = num.to_s(2).count('1')
	return one == 1 && zero % 2 == 0
end
