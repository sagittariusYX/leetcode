def merge_sort(array):
    if len(array) <= 1: return array
    num = len(array) >> 1
    left = merge_sort(array[:num])
    right = merge_sort(array[num:])
    return merge(left, right)

def merge(left, right):
    l, r = 0, 0
    res = []
    while l < len(left) and r < len(right):
        if left[l] < right[r]:
            res.append(left[l])
            l += 1
        else:
            res.append(right[r])
            r += 1

    res += left[l:]
    res += right[r:]
    return res
