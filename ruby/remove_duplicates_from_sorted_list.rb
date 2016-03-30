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
def delete_duplicates(head)
  return head if head.nil? or head.next.nil?
  slow, fast = head, head
  fast = fast.next

  while fast
    if slow.val == fast.val
      fast = fast.next
      slow.next = slow.next.next
    else
      slow, fast = slow.next, fast.next
    end
  end
  return head
end
