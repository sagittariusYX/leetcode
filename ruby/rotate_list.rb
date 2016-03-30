# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  return head if head.nil?
  cur, length = head, 1
  while cur.next
    length += 1
    cur = cur.next
  end
  cur.next = head   # make a circle

  (length - k % length).times do
    cur = cur.next  # move steps to aim node
  end

  pre = cur
  cur = cur.next
  pre.next = nil    # cut the circle
  return cur
end
