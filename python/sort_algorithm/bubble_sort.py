def bubble_sort(array):
    n = len(array)
    for i in range(n):
        for j in range(1, n - i):
            if array[j - 1] > array[j]:
                array[j - 1], array[j] = array[j], array[j - 1]
    return array
