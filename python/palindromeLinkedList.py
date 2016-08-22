# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def isPalindrome(self, head):
        """
        :type head: ListNode
        :rtype: bool
        """
        if not head or not head.next:
            return True

        slow, fast = head, head
        while fast.next and fast.next.next:
            slow = slow.next
            fast = fast.next.next

        pre = None
        while slow:
            slow.next, slow, pre = pre, slow.next, slow
        first, second = head, pre

        while first and second:
            if first.val != second.val:
                return False
            first, second = first.next, second.next
        return True
