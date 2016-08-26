class Solution(object):
    def countAndSay(self, n):
        """
        :type n: int
        :rtype: str
        """
        res = "1"
        for i in range(n - 1):
            res = self.nextNum(res)
        return res

    def nextNum(self, s):
        result = ""
        cur = s[0]
        count = 1
        for i in range(1, len(s)):
            if cur == s[i]:
                count += 1
            else:
                result += (str(count) + cur)
                cur = s[i]
                count = 1
        result += (str(count) + cur)
        return result
