# @param {String} s
# @return {String}
def reverse_vowels(s)
  # Both upcase and downcase vowels.
  vowels = %w(a e i o u A E I O U)
  return s if s.size <= 1
  left, right = 0, s.size - 1
  while left < right
    if vowels.include? s[left]
      if vowels.include? s[right]
        s[left], s[right] = s[right], s[left]
        left += 1
        right -= 1
      else
        right -= 1
        next
      end
    else
      left += 1
    end
  end
  s
end
