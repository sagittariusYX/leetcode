# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  res = s.split(" ").last
  res.empty? ? 0 : res.size
end
