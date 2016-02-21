# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  pre, curr = nil, head
  while curr
    curr.next, pre, curr = pre, curr, curr.next
  end
  return pre
end