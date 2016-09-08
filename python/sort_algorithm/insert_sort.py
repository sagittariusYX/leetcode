def insert_sort(array):
    n = len(array)
    for i in range(1, n):
        if array[i] < array[i - 1]:
            tmp = array[i]
            index = i
            for j in range(i - 1, -1, -1):
                if array[j] > tmp:
                    array[j + 1] = array[j]
                    index = j
                else:
                    break
            array[index] = tmp
    return array
