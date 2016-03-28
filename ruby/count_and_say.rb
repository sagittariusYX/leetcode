# @param {Integer} n
# @return {String}
def count_and_say(n)
  return "" if n == 0
  cur_str = "1"
  (n-1).times do
    cur_str = next_num cur_str
  end
  cur_str
end

def next_num cur_str
  new_str = ''
  cur_char = cur_str[0]
  count = 1
  cur_str[1, cur_str.size].each_char do |c|
    if cur_char == c
      count += 1
    else
      new_str += count.to_s + cur_char
      cur_char = c # reset
      count = 1
    end
  end
  new_str += count.to_s + cur_char
end
