# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.nil?

  max_profit = 0
  1.upto(prices.size - 1) do |i|
    diff = prices[i] - prices[i - 1]
    max_profit += diff if diff > 0
  end
  max_profit
end
