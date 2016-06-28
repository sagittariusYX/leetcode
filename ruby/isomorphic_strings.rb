# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  m1, m2 = {}, {}

  s.chars.each_with_index do |sch, idx|
    tch = t[idx]
    if m1.key?(sch) || m2.key?(tch)
      return false if m1[sch] != tch
      return false if m2[tch] != sch
    else
      m1[sch] = tch
      m2[tch] = sch
    end
  end

  return true
end
