# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def swapPairs(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        pre = ListNode(None)
        pre.next = head
        tmp = pre
        while tmp.next and tmp.next.next:
            tmp.next = head.next
            head.next = head.next.next
            tmp.next.next = head
            tmp = tmp.next.next
            head = head.next
        return pre.next
