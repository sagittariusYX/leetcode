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
def is_balanced(root)
  _is_balanced(root) != -1
end

private def _is_balanced(root)
  return 0 if root.nil?
  return -1 if (ldepth = _is_balanced(root.left)) == -1
  return -1 if (rdepth = _is_balanced(root.right)) == -1
  return -1 if (ldepth - rdepth).abs > 1
  return [ldepth, rdepth].max + 1
end
