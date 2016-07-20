def find(n)
  num = 0
  while n != 0
    n &= (n - 1)
    num += 1
  end
  num
end

p find(6)
