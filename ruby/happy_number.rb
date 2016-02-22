# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  list = []
  while n != 1
    if list.include? n
      return false
    else
      list << n
      sum = 0
      n.to_s.split('').each do |i|
        sum += i.to_i ** 2
      end
      n = sum
    end
  end
  return true
end
