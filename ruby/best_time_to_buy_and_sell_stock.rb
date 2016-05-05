# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.size < 2
  cur_min, profit_max = prices.first, 0
  prices.each do |price|
    cur_min = [cur_min, price].min
    profit_max = [profit_max, price - cur_min].max
  end
  return profit_max
end
