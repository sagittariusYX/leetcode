# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  len = nums.size
  output, product = Array.new(len, 1), 1

  1.upto(len - 1) do |i|
    output[i] = output[i - 1] * nums[i - 1]
  end

  (len - 2).downto(0) do |i|
    product *= nums[i + 1]
    output[i] *= product
  end
  output
end
