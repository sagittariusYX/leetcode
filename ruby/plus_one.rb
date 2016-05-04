# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  res = []
  sum = digits.join.to_i + 1
  while sum > 0
    res << sum % 10
    sum /= 10
  end
  res.reverse
end
