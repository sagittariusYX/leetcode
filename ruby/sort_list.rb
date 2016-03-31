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
def sort_list(head)
  return head if head.nil?
  p, count = head, 0
  while p
    count += 1
    p = p.next
  end
  return merge_sort(head, count).first
end

def merge_sort(head, k)
  if k == 1
    head2 = head.next
    head.next = nil
    return head, head2
  end
  left, head2 = merge_sort(head, k >> 1)
  right, head2 = merge_sort(head2, k - (k >> 1))
  return merge(left, right), head2
end

def merge(h1, h2)
  p = ListNode.new(0)
  cur = p
  while h1 and h2
    if h1.val <= h2.val
      cur.next = h1
      h1 = h1.next
    else
      cur.next = h2
      h2 = h2.next
    end
    cur = cur.next
  end
  if h1.nil? and not h2.nil?
    cur.next = h2
  elsif h2.nil? and not h1.nil?
    cur.next = h1
  end
  return p.next
end
