class Solution(object):
    def divide(self, dividend, divisor):
        """
        :type dividend: int
        :type divisor: int
        :rtype: int
        """
        MAX_INT, MIN_INT = 2147483647, -2147483648
        if divisor == 0:
            return MAX_INT if dividend > 0 else MIN_INT
        if dividend == MIN_INT and divisor == -1:
            return MAX_INT
        isNeg = True if (dividend ^ divisor >= 0) else False
        dvd, dvs = abs(dividend), abs(divisor)
        dvsOriginal = dvs

        i = 0
        while dvs << (i + 1) <= dvd:
            i += 1

        res = 0
        while dvd >= dvsOriginal:
            if dvd >= dvs << i:
                dvd -= dvs << i
                res += 1 << i
            i -= 1
        return res if isNeg else -res
