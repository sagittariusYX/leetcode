def count_zero(n)
  res = 0
  while n != 0
    res += n / 5
    n /= 5
  end
  res
end

p count_zero(10)
