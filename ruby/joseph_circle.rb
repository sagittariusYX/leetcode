def circle n, m
  arr = (1..n).to_a
  i = 0
  while arr.size > 0
    x = (m + i - 1) % arr.size
    puts arr[x]

    arr.delete_at x
    i = x
  end
end

p circle 7, 3
