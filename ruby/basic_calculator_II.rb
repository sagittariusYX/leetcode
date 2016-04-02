# @param {String} s
# @return {Integer}
def calculate(s)
  s = s.gsub(" ", "")  # remove space
  stack = []
  tmp, i = next_int s, 0
  stack.push tmp
  while i < s.size
    op = s[i]
    tmp, i = next_int(s, i+1)

    case op
    when "+"
      stack.push tmp
    when "-"
      stack.push -tmp
    when "*"
      stack.last *= tmp
    when "/"
      if stack.last >= 0
        stack.last /= tmp
      else
        stack.last = -(-stack.last / tmp)
      end
    end
  end
 res = 0
 stack.each {|num| res += num}
 return res
end

def next_int(s, i)
  res = 0
  while i < s.size and not "+-*/".include? s[i]
    res = res * 10 + s[i].ord - "0".ord
    i += 1
  end
  return res, i
end
