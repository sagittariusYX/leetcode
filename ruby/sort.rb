def quick_sort(array)
  (x=array.pop) ? quick_sort(array.select{|i| i<=x}) + [x] + quick_sort(array.select{|i| i>x}) : []
end

def bubble_sort(array)
  for i in 0...array.size
    for j in 0...array.size-i-1
      if array[j] > array[j+1]
        array[j], array[j+1] = array[j+1], array[j]
      end
    end
  end
  return array
end

#p quick_sort([72, 6, 57, 88, 60, 42, 83, 73, 48, 65])
p bubble_sort([72, 6, 57, 88, 60, 42, 83, 73, 48, 65])
