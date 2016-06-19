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
def is_symmetric(root)
	return true if root.nil?
	return _is_mirror(root.left, root.right) 
end

private def _is_mirror(l, r)
	return true if l.nil? && r.nil?
	return false if l.nil? || r.nil? || l.val != r.val
	return _is_mirror(l.left, r.right) && _is_mirror(l.right, r.left)
end
