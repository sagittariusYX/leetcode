# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def rob(root)
  _rob(root).max
end

private def _rob(root)
  return [0, 0] if root.nil?

  left, right = _rob(root.left), _rob(root.right)
  return [left.max + right.max, left[0] + right[0] + root.val]
end
