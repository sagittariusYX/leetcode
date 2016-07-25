# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return _sorted_array_to_bst(nums, 0, nums.size)
end

private def _sorted_array_to_bst(nums, left, right)
  return nil if left == right
  mid = left + ((right - left) >> 1)
  root = TreeNode.new(nums[mid])
  root.left = _sorted_array_to_bst(nums, left, mid)
  root.right = _sorted_array_to_bst(nums, mid+1, right)
  return root
end
