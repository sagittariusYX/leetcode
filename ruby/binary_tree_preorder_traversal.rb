# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
  res, stack = [], []
  node = root
  while (not node.nil?) or (not stack.empty?)
    until node.nil?
      res << node.val
      stack << node
      node = node.left
    end
    unless stack.empty?
      node = stack.pop
      node = node.right
    end
  end
  res
end
