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
def insertion_sort_list(head)
  return head if head.nil?
  head2, head.next = head.next, nil

  while head2
    cur = head2
    head2 = head2.next
    p, q = nil, head

    # find place to insert
    while q and q.val <= cur.val
      p, q = q, q.next
    end

    if q == head
      # insert cur to the very first
      head = cur
    else
      p.next = cur
    end
    cur.next = q
  end
  return head
end
