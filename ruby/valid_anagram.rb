# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return (s.split("").sort.join() == t.split("").sort.join()) ? true : false
end
