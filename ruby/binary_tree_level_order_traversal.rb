# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
  res = []
  return res if root.nil?
  cur_level = []
  cur_level << node
  until cur_level.empty?
    level_res, next_level = [], []
    cur_level.each do |node|
      next if node.nil?
      level_res << node.val
      next_level << node.left unless node.left.nil?
      next_level << node.right unless node.right.nil?
    end
    res << level_res
    cur_level = next_level
  end
  res
end
