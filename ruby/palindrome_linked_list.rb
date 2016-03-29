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
# @return {Boolean}
def is_palindrome(head)
  return true if head.nil? or head.next.nil?

  slow, fast = head, head
  until fast.next.nil? or fast.next.next.nil?
    slow, fast = slow.next, fast.next.next
  end

  pre = nil
  while slow
    slow.next, slow, pre = pre, slow.next, slow
  end

  first, second = head, pre
  while first and second
    unless first.val == second.val
      return false
    end
    first, second = first.next, second.next
  end
  return true
end
