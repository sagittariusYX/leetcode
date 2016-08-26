class Solution(object):
    def findKthLargest(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: int
        """
        n = len(nums)
        first = (n >> 1) - 1
        for start in range(first, -1, -1):
            self.heapAdjust(nums, start, n - 1)
        for end in range(n - 1, n - k - 1, -1):
            nums[0], nums[end] = nums[end], nums[0]
            self.heapAdjust(nums, 0, end - 1)
        return nums[n - k]

    def heapAdjust(self, arr, start, end):
        root = start
        while True:
            child = root * 2 + 1
            if child > end: break
            if child + 1 <= end and arr[child] < arr[child + 1]:
                child += 1
            if arr[root] < arr[child]:
                arr[root], arr[child] = arr[child], arr[root]
                root = child
            else:
                break
