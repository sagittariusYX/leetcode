class Solution(object):
    def myAtoi(self, str):
        """
        :type str: str
        :rtype: int
        """
        INT_MAX = 2147483647
        INT_MIN = -2147483648
        str = str.strip()
        if not str:
            return 0
        flag = 1
        if str[0] in ["+", "-"]:
            if str[0] == "-":
                flag = -1
            str = str[1:]

        if not str or not str[0].isdigit():
            return 0
        for i, v in enumerate(str):
            if not v.isdigit():
                str = str[:i]
                break

        res = 0
        for char in str:
            res += ord(char) - ord("0")
            res *= 10
        res /= 10
        res *= flag

        if res > INT_MAX:
            return INT_MAX
        if res < INT_MIN:
            return INT_MIN
        return res
