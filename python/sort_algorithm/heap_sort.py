def heap_sort(array):
    n = len(array)
    first = (n >> 1) - 1
    for start in range(first, -1, -1):
        heap_adjust(array, start, n - 1)
    for end in range(n - 1, 0, -1):
        array[end], array[0], = array[0], array[end]
        heap_adjust(array, 0, end - 1)
    return array

def heap_adjust(arr, start, end):
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
