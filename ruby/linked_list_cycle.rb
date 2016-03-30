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
  begin
    slow, fast = head, head.next
    until slow == fast
      slow = slow.next
      fast = fast.next.next
    end
    return true
  rescue
    return false
  end
end
