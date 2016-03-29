# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end
#
# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  return head if head.nil? or head.next.nil? or head.next.next.nil?
  odd = head
  even = head.next
  even_start = even

  while even and even.next
    odd.next = even.next
    odd = odd.next
    even.next = odd.next
    even = even.next
  end
  odd.next = even_start
  return head
end
