# @param {Integer} num
# @return {Integer}
def add_digits(num)
  result = 0
  num.to_s.split("").each {|i| result += i.to_i}
  return add_digits(result) if result/10 >= 1 else result
end
