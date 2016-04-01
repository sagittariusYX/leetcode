# @param {String} s
# @return {Boolean}
def is_valid(s)
  return true if s.empty?
  stack = []
  left, right = "([{", ")]}"
  s.each_char do |char|
    if "(" == char or "[" == char or "{" == char
      stack.push char
      next
    end
    right.size.times do |j|
      if char == right[j]
        if stack.empty? or stack.last != left[j]
          return false
        else
          stack.pop
          next
        end
      end
    end
  end
  return stack.empty?
end
