# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
# @param {Integer} m
# @param {Integer} n
# @return {ListNode}
def reverse_between(head, m, n)
  nhead, pre = head, nil
  (m-1).times do
    pre = nhead
    nhead = nhead.next
  end

  (n-m).times do
    cur = nhead.next
    nhead.next = cur.next

    unless pre.nil?
      cur.next = pre.next
      pre.next = cur
    else
      cur.next = head
      head = cur
    end
  end

  head
end
