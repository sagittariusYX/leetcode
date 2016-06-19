# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
  return false if root.nil?
  return _has_path_sum(root, 0, sum) 
end

private def _has_path_sum(root, s, sum)
  l, r, v = root.left, root.right, root.val
  return s + v == sum if l.nil? && r.nil?

  return true if l && _has_path_sum(l, s + v, sum)
  return true if r && _has_path_sum(r, s + v, sum)
  return false
end
