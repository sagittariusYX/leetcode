# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return nil if x.nil?
  return false if x > 2147483647 or x < -2147483648

  result, x = 0, x.abs
  until x.zero?
    result = result * 10 + x % 10
    x /= 10
  end

  return result == x.abs
end
