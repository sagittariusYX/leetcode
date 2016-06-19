# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
	while true
		v1 = root.val - p.val
		v2 = root.val - q.val

		return root if v1 * v2 <= 0
		root = (v1 > 0 ? root.left : root.right)
	end 
end
