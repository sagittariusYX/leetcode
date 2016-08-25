class Solution(object):
    def topKFrequent(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: List[int]
        """
        d = {}
        for num in nums:
            if num not in d:
                d[num] = 1
            else:
                d[num] += 1
        l = []
        for key, value in d.items():
            l.append((value, key))
        l = self.heapSort(l)
        res = []
        for i in range(k):
            res.append(l[len(d) - i - 1][1])
        return res
    
    def heapSort(self, arr):
        n = len(arr)
        first = int((n >> 1) - 1)
        for start in range(first, -1, -1):
            self.heapAdjust(arr, start, n - 1)
        for end in range(n - 1, 0, -1):
            arr[end], arr[0] = arr[0], arr[end]
            self.heapAdjust(arr, 0, end - 1)
        return arr
        
    def heapAdjust(self, arr, start, end):
        root = start
        while True:
            child = root * 2 + 1
            if child > end: break
            if child + 1 <= end and arr[child][0] < arr[child + 1][0]:
                child += 1
            if arr[root][0] < arr[child][0]:
                arr[root], arr[child] = arr[child], arr[root]
                root = child
            else:
                break
