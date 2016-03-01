# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return s.size if s.size < 2
  char_arr = [-1] * 128 # all ascii chars to int

  max_len, j = 0, 0
  for i in 0..s.size-1
    j = [char_arr[s[i].ord]+1, j].max
    char_arr[s[i].ord] = i
    max_len = [max_len, i-j+1].max
  end
  return max_len
end
