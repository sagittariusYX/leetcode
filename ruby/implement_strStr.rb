# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  if haystack.empty? and needle.empty?
    return 0
  end

  i, start = 0, 0
  while i < haystack.size
    j = 0
    while j < needle.size
      if haystack[i] == needle[j]
        i, j = i + 1, j + 1
        if i == haystack.size and j < needle.size
          return -1
        end
      else
        start += 1
        break
      end
    end

    if j == needle.size
      return start
    else
      i = start
    end
  end
  return -1
end

# def str_str(haystack, needle)
#   regex = Regexp.new needle
#   res = haystack =~ regex
#   res.nil? ? -1 : res
# end
