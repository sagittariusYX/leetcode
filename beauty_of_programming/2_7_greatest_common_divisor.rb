def gcd(x, y)
  return gcd(y, x) if x < y
  if y == 0
    return x
  else
    if y % 2 == 0
      if x % 2 == 0
        return (gcd(x >> 1, y >> 1) << 1)
      else
        return gcd(x, y >> 1)
      end
    else
      if x % 2 == 0
        return gcd(x >> 1, y)
      else
        return gcd(x - y, y)
      end
    end
  end
end

p gcd(42, 30)
