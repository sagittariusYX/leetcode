# @param {Integer} n
# @param {Integer} k
# @return {String}

# TLE codes:
def get_permutation(n, k)
  return "" if n == 0
  return nil if k > _multiply_(n)
  nums = Array.new(n - 1)
  nums[0] = Array(1..n).join()
  1.upto(_multiply_(n) - 1) do |i|
    nums[i] = _next_permutation_(nums[i - 1])
  end
  nums[k - 1]
end

private

def _next_permutation_(n)
  nums = n.to_s.split('')
  return nums.join() if nums.size <= 1
  partition = -1

  (nums.size - 2).downto(0) do |i|
    if nums[i] < nums[i + 1]
      partition = i
      break
    end
  end

  if partition == -1
    nums = nums.reverse!
    return nums.join()
  else
    (nums.size - 1).downto(partition) do |i|
      if nums[partition] < nums[i]
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
  nums.join()
end

def _multiply_(n)
  sum = 1
  1.upto(n) do |i|
    sum *= i
  end
  sum
end
