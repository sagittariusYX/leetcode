# @param {String} s
# @return {Integer}
def roman_to_int(s)
  elements = { 'M' => 1000,
               'D' => 500,
               'C' => 100,
               'L' => 50,
               'X' => 10,
               'V' => 5,
               'I' => 1,
               'NUL' => 0 }
  integer = 0
  pre = 'NUL'
  s = s.reverse
  s.each_char do |char|
    if elements[char] >= elements[pre]
      integer += elements[char]
    else
      integer -= elements[char]
    end
    pre = char
  end
  return integer
end
