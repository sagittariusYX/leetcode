# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  hash = Hash.new
  nums.size.times do |i|
    digit = nums[i]
    if not hash.include?(digit) or (i - hash[digit]).abs > k
      hash[digit] = i
    else
      return true
    end
  end
  return false
end
