# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  res = [[]]
  nums.sort!
  nums.each do |num|
    res.each do |item|
      res += [item + [num]]
    end
  end
  res
end
