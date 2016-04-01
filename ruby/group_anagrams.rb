# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  h = {}
  strs.each do |str|
    key = str.chars.sort.join
    unless h[key]
      h[key] = []
    end
    h[key] << str
  end
  # fuck leetcode test case
  h.each_value do |value|
    value.sort!
  end
  reversed_h = h.to_a.reverse.to_h
  return reversed_h.values
end
