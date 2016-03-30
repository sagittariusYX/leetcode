# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  return head if head.nil? or head.next.nil?
  odd, even = head, head.next

  # reverse first two nodes
  odd.next = even.next
  even.next = odd
  head = even

  while odd.next and odd.next.next
    tmp = odd
    odd = odd.next
    even = odd.next
    odd.next = even.next
    even.next = odd
    tmp.next = even
  end
  return head
end
