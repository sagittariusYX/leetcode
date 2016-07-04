# @param {Integer} n
# @return {String}
def convert_to_title(n)
  num_to_char = {}
  Range.new('A', 'Z').each_with_index { |ch, idx| num_to_char[idx] = ch }

  str = ''
  while n > 0
    str.insert(0, num_to_char[(n - 1) % 26])
    n = (n - 1) / 26
  end
  str
end
