def quick_sort(array)
  (x=array.pop) ? quick_sort(array.select{|i| i<=x}) + [x] + quick_sort(array.select{|i| i>x}) : []
end

p quick_sort([72, 6, 57, 88, 60, 42, 83, 73, 48, 65])
