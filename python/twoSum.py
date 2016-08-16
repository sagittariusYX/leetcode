class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        d = {}
        for index, value in enumerate(nums):
            d[value] = index
        for index1, value in enumerate(nums):
            if (target - value) in d:
                index2 = d[target - value]
                if index1 != index2:
                    return [index1, index2]
