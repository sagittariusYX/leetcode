# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
  stack = []
  cur = root
  pre = nil
  while (not cur.nil?) or (not stack.empty?)
    until cur.nil?
      stack << cur
      cur = cur.left
    end
    unless stack.empty?
      cur = stack.pop
      return false if ((not pre.nil?) and cur.val <= pre.val)
      pre, cur = cur, cur.right
    end
  end
  return true
end
