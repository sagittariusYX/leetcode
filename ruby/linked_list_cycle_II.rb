# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
# @return {ListNode}
def detect_cycle(head)
  slow, fast = head, head
  while fast and fast.next
    fast = fast.next.next
    slow = slow.next
    if slow == fast
      while head
        if head == slow
          return head
        end
        head, slow = head.next, slow.next
      end
    end
  end
  return nil
end
