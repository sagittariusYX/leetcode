# @param {String} s
# # @return {String}
def reverse_words(s)
  arr = s.split
  (arr.size >> 1).times do |i|
    arr[i], arr[-(i+1)] = arr[-(i+1)], arr[i]
  end
  return arr.join(" ")
end
