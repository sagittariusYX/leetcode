# @param {String} s
# @return {String}
def reverse_string(s)
  return s if s.size == 0 or s.size == 1
  s.split("").each_index do |index|
    break if index >= (s.size >> 1)
    s[index], s[s.size - index - 1] = s[s.size - index - 1], s[index]
    end
    s
end
