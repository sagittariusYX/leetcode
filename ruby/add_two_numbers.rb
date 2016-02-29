# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  h = ListNode.new(0)
  p, carry = h, 0
  while l1 or l2
    sum = carry
    if l1
      sum, l1 = sum + l1.val, l1.next
    end
    if l2
      sum, l2 = sum + l2.val, l2.next
    end
    p.next, carry = ListNode.new(sum % 10), sum/10
    p = p.next
  end
  p.next = (carry and not carry.zero?) ? ListNode.new(carry) : nil
  return h.next
end
