# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  return [] if head.next.nil?
  slow, fast = head, head
  n.times do
    fast = fast.next
  end

  if fast.nil?
    slow = slow.next
    return slow
  end
  while fast.next
    slow = slow.next
    fast = fast.next
  end

  # remove slow.next
  slow.next = slow.next.next
  return head
end
