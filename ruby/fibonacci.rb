def recursion_fib n
  return if n < 0
  if n == 0 || n == 1
    1
  else
    fib(n-1) + fib(n-2)
  end
end

def unrecursion_fib n
  return if n < 0
  a, b = 1, 1
  p a, b
  for i in 3..n
    a, b = b, a+b
    p b
  end
end

# unrecursion_fib 7
