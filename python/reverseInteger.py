class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        flag = 1 if x >= 0 else -1
        x *= flag
        res = 0
        while x:
            res = res * 10 + x % 10
            x /= 10
        return 0 if res > 2147483647 else res * flag
