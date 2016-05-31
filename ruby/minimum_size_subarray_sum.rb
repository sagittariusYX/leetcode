# @param {Integer} s
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(s, nums)
  min_len, total, start = nums.size + 1, 0, 0
  nums.size.times do |i|
    total += nums[i]
    while total >= s
      min_len = [i-start+1, min_len].min
      total -= nums[start]
      start += 1
    end
  end
  min_len > nums.size ? 0 : min_len
end
