# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  return false if nums.size < 2
  hash = Hash.new
  nums.each do |num|
    unless hash[num]
      hash[num] = 1
    else
      hash[num] += 1
    end
  end
  hash.each do |key, value|
    return true if value > 1
  end
  return false
end

def another_way(nums)
  nums = nums.sort
  nums.size.times do |i|
    return true if nums[i] == nums[i+1]
  end
  return false
end
