# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end
#
# @param {ListNode} head1, head2
# @return {ListNode}
def get_intersection_node(head1, head2)
  return nil if not head1 or not head2
  p, q = head1, head2
  a, b = get_list_length(head1), get_list_length(head2)
  if a < b
    (b - a).times do
      q = q.next
    end
  elsif a > b
    (a - b).times do
      p = p.next
    end
  end

  while p
    if p == q
      return p
    end
    p, q = p.next, q.next
  end
  return nil
end

def get_list_length head
  length = 0
  while head
    length += 1
    head = head.next
  end
  return length
end
