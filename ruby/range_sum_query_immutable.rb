class NumArray

  # Initialize your data structure here.
  # @param {Integer[]} nums
  def initialize(nums)
    return if nums.size.zero?
    @sums = [nums.first]
    for i in 1...nums.size
      @sums[i] = @sums[i - 1] + nums[i]
    end
  end

  # @param {Integer} i
  # @param {Integer} j
  # @return {Integer}
  def sum_range(i, j)
    return (i.zero? ? @sums[j] : @sums[j] - @sums[i - 1])
  end
end

# Your NumArray object will be instantiated and called as such:
# num_array = NumArray.new(nums)
# num_array.sum_range(0, 1)
# num_array.sum_range(0, 2)
