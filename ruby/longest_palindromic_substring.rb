# @param {String} s
# @return {String}
def longest_palindrome(s)
  new_s = "#"
  s.each_char do |char|
    new_s += char
    new_s += "#"
  end
  s = new_s

  p = [0] * s.size
  mx, pos, max_len = 0, 0, 0
  s.size.times do |i|
    if i < mx
      p[i] = [p[2 * pos - i], mx - i].min
    else
      p[i] = 1
    end

    while i - p[i] >= 0 && i + p[i] < s.size && s[i - p[i]] == s[i + p[i]]
      p[i] += 1
    end

    # refresh mx, pos
    if p[i] + i - 1 > mx
      mx = p[i] + i - 1
      pos = i
    end
  end
  max_len = p.max
  mid = p.index max_len
  max_len -= 1
  start_s, end_s = mid - max_len, mid + max_len
  res = s[start_s..end_s]
  res.delete! "#"
  return res
end
