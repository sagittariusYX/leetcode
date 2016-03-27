# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  min_str = ""
  min_length = 2 ** 31 - 1

  if strs.size == 1
    return strs.first
  elsif strs.size == 0
    return ""
  end

  # find smallest size
  strs.each do |str|
    if str.size < min_length
      min_str = str
      min_length = str.size
    end
  end

  # find longest common prefix
  result = ""
  tmp = 0
  min_str.each_char do |char|
    result += char
    strs.each do |str|
      unless str.start_with? result
        tmp = 1
        break
      end
    end
    break if tmp == 1
  end
  (tmp == 1) ? result[0, (result.size - 1)] : result
end
