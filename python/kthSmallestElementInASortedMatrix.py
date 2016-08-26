class Solution(object):
    def kthSmallest(self, matrix, k):
        """
        :type matrix: List[List[int]]
        :type k: int
        :rtype: int
        """
        matrix = reduce(lambda x, y: x + y, matrix)
        n = len(matrix)
        first = (n >> 1) - 1
        for start in range(first, -1, -1):
            self.heapAdjust(matrix, start, n - 1)
        for end in range(n - 1, k - 2, -1):
            matrix[end], matrix[0] = matrix[0], matrix[end]
            self.heapAdjust(matrix, 0, end - 1)
        return matrix[k - 1]

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
