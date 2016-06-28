# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
  pattern = pattern.chars
  str = str.split(' ')
  return false if pattern.size != str.size

  p2s, s2p = {}, {}
  pattern.zip(str) do |p, s|
    return false if p2s.key?(p) && p2s[p] != s
    return false if s2p.key?(s) && s2p[s] != p
    p2s[p], s2p[s] = s, p
  end
  return true
end
