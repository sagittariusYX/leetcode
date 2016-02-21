# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |item, index|
    nums.shift(item)
    if nums.include?(target - item)
      return [index, nums.index(target - item)]
    end
  end
end
