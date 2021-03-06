# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
# @return {Boolean}
def has_cycle(head)
  slow, fast = head, head
  while fast and fast.next
    fast = fast.next.next
    slow = slow.next
    if slow == fast
      return true
    end
  end
  return false
end
