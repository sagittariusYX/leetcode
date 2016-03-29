# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return l1 if l2.nil?
  return l2 if l1.nil?

  start = nil
  if l1.val < l2.val
    start = l1
    start.next = merge_two_lists(l1.next, l2)
  else
    start = l2
    start.next = merge_two_lists(l1, l2.next)
  end

  return start
end
