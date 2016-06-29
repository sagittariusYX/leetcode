# @param {Integer} n
# @return {Integer}
def count_primes(n)
  return 0 if n < 2

  mark = Array.new(true, n)
  mark[0], mark[1] = false, false

  2.upto(Math.sqrt(n)) do |i|
    if mark[i]
      p = i ** 2
      while p < n
        mark[p] = false
        p += x
      end
    end
  end
  mark.count(true)
end
