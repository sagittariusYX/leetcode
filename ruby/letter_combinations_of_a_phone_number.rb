# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?
  "#*0".each_char do |c|
    if digits.include? c
      return []
    end
  end

  elements = {"1" => [""],
              "2" => ["a", "b", "c"],
              "3" => ["d", "e", "f"],
              "4" => ["g", "h", "i"],
              "5" => ["j", "k", "l"],
              "6" => ["m", "n", "o"],
              "7" => ["p", "q", "r", "s"],
              "8" => ["t", "u", "v"],
              "9" => ["w", "x", "y", "z"]}
  res = []
  res << ""
  digits.each_char do |char| # "23"
    next if char == "1"
    arr = elements[char]
    tmp = []
    for alphabet in arr
      for result in res
        tmp << (result + alphabet)
      end
    end
    res = tmp
  end
  return res
end
