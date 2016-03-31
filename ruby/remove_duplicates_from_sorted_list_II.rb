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
  new_head = ListNode.new(-1)
  slow, fast = new_head, head
  slow.next = fast
  while fast
    while fast.next and fast.val == fast.next.val
      fast = fast.next
    end

    if slow.next == fast
      slow, fast = slow.next, fast.next
    else
      slow.next = fast.next
      fast = slow.next
    end
  end
  return new_head.next
end
