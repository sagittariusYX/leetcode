# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  return true if s.empty?
  res = s.gsub(/\W/,'').downcase
  res == res.reverse
end
