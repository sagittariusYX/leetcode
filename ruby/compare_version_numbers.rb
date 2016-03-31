# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
  v1, v2 = version1.split("."), version2.split(".")
  [v1.size, v2.size].max.times do |i|
    gap = (i < v1.size ? v1[i].to_i : 0) - (i < v2.size ? v2[i].to_i : 0)
    unless gap == 0
      return (gap > 0 ? 1 : -1)
    end
  end
  return 0
end
