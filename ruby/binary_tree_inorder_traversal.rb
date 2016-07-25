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
def inorder_traversal(root)
  stack, res = [], []
  node = root
  while (not node.nil?) or (not stack.empty?)
    until node.nil?
      stack << node
      node = node.left
    end
    if not stack.empty?
      node = stack.pop
      res << node.val
      node = node.right
    end
  end
  res
end
