# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  int_max = 2 ** 31 - 1
  int_min = - 2 ** 31
  if divisor.zero?
    return dividend >= 0 ? int_max : int_min
  end
  return int_max if dividend == int_min and divisor == -1 # overflow case

  is_neg = (dividend ^ divisor >= 0) ? true : false
  dvd, dvs = dividend.abs, divisor.abs
  dvs_original = dvs

  i = 0
  while dvs << (i + 1) <= dvd
    i += 1
  end

  res = 0
  while dvd >= dvs_original
    if dvd >= dvs << i
      dvd -= dvs << i
      res += 1 << i
    end
    i -= 1
  end
  is_neg ? res : -res
end
