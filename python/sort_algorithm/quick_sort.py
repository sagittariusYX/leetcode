def quick_sort(array):
    return qsort(array, 0, len(array) - 1)

def qsort(arr, left, right):
    if left >= right: return arr
    key = arr[left]
    lp, rp = left, right
    while left < right:
        # Attention Order
        while arr[right] >= key and left < right:
            right -= 1
        arr[left] = arr[right]
        while arr[left] <= key and left < right:
            left += 1
        arr[right] = arr[left]

    arr[right] = key
    qsort(arr, lp, left - 1)
    qsort(arr, right + 1, rp)
    return arr
