# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  if n < 0
    return (1/my_pow_implement(x, 0-n))
  else
    return my_pow_implement(x, n)
  end
end

def my_pow_implement(x, n)
  if n == 1
    return x
  elsif n == 0
    return 1
  elsif n % 2 == 0
    result = my_pow(x, (n/2))
    return result ** 2
  else
    result = my_pow(x, (n-1)/2)
    return x * (result ** 2)
  end
end
