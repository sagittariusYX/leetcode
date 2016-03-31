# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  return head if head.nil? or head.next.nil?
  slow, fast = head, head
  while fast.next and fast.next.next
    slow, fast = slow.next, fast.next.next
  end
  head2 = reverse_list(slow.next)
  slow.next = nil
  combine head, head2
end

def reverse_list head
  return head if head.nil? or head.next.nil?
  pre = ListNode.new(-1)
  pre.next = head
  while head
    head.next = pre
    pre, head = head, head.next
  end
  return pre
end

def combine head1, head2
  return if head1.nil? or head2.nil?
  pre = ListNode.new(-1)
  cur = pre
  while head1 and head2
    cur.next = head1
    head1 = head1.next
    cur.next.next = head2
    head2 = head2.next
    cur = cur.next.next
  end
  cur.next = (head1.nil? ? head2 : head1)
  return pre.next
end
