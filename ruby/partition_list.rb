# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  new_head = ListNode.new(-1)
  new_head.next = head
  cur = head
  pre = new_head  # pre is the node ahead of cur
  last = new_head # last is the last node smaller than x

  while cur
    if cur.val < x
      if pre == last
        pre = pre.next
        last = last.next
        cur = cur.next
      else
        tmp = last.next
        pre.next = cur.next
        last.next = cur
        cur.next = tmp
        last = last.next
        cur = pre.next
      end
    else
      pre = cur
      cur = cur.next
    end
  end
  return new_head.next
end
