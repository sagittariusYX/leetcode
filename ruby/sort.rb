# ===== Quick Sort =====
def quick_sort array
  (x=array.pop) ? quick_sort(array.select{|i| i<=x}) + [x] + quick_sort(array.select{|i| i>x}) : []
end

# ===== Bubble Sort =====
def bubble_sort array
  for i in 0...array.size
    for j in 0...array.size-i-1
      if array[j] > array[j+1]
        array[j], array[j+1] = array[j+1], array[j]
      end
    end
  end
  return array
end

# ===== Merge Sort =====
def merge left, right
  final = []
  until left.empty? or right.empty?
    final << (left.first < right.first ? left.shift : right.shift)
  end
  final + left + right
end

def merge_sort array
  return array if array.size < 2

  left = array.shift((array.size + 1) >> 1)
  right = array
  merge(merge_sort(left), merge_sort(right))
end

# ===== Check Results
demo_array = [72, 6, 57, 88, 60, 42, 83, 73, 48, 65]
# p quick_sort demo_array
# p bubble_sort demo_array
p merge_sort demo_array
