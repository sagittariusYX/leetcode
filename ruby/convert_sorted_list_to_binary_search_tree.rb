# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {ListNode} head
# @return {TreeNode}
def sorted_list_to_bst(head)
  node, length, nums = head, 0, []
  until node.nil?
    nums << node.val
    length += 1
    node = node.next
  end
  return _sorted_list_to_bst(nums, 0, length)
end

private def _sorted_list_to_bst(nums, left, right)
  return nil if left == right
  mid = left + ((right - left) >> 1)
  root = TreeNode.new(nums[mid])
  root.left = _sorted_list_to_bst(nums, left, mid)
  root.right = _sorted_list_to_bst(nums, mid+1, right)
  return root
end
