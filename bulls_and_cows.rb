# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
  right, pos, m1, m2 = 0, 0, {}, {}

  0.upto(secret.size - 1) do |idx|
    ch1, ch2 = secret[idx], guess[idx]

    if ch1 == ch2
      right += 1; next
    end

    m1[ch1] ||= 0; m1[ch1] += 1
    m2[ch2] ||= 0; m2[ch2] += 1
  end

  m1.each do |key, value|
    pos += [value, m2[key]].min if m2.key?(key)
  end

  "#{right}A#{pos}B"
end
