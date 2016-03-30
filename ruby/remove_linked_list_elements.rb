# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  while not head.nil? and head.val == val
    head = head.next
  end
  cur = head
  while cur
    if cur.next and cur.next.val == val
      cur.next = cur.next.next
    else
      cur = cur.next
    end
  end
  return head
end
