class Solution(object):
    def reverseWords(self, s):
        """
        :type s: str
        :rtype: str
        """
        arr = s.strip().split()
        n = len(arr)
        for i in range(n >> 1):
            arr[i], arr[n - i - 1] = arr[n - i - 1], arr[i]
        return " ".join(arr)

if __name__ == "__main__":
    s = Solution()
    print s.reverseWords("the sky is blue")
