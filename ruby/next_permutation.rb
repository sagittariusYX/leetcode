# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  return nums if nums.size <= 1
  partition = -1 # mark	if is last num

  (nums.size - 2).downto(0) do |i|
    if nums[i] < nums[i + 1]
      partition = i
      break
    end
  end

  if partition == -1
    nums = nums.reverse!
    return nums
  else
    (nums.size - 1).downto(partition) do |i|
      if nums[i] > nums[partition]
        nums[i], nums[partition] = nums[partition], nums[i]
        break
      end
    end
  end

  left, right = partition + 1, nums.size - 1
  while left < right
    nums[left], nums[right] = nums[right], nums[left]
    left += 1
    right -= 1
  end
  nums
end

p next_permutation([1,2,3])
