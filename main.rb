def stock_picker(stocks)
  bestBuy = 0
  bestSell = 0
  bestProfit = 0
  current = 0
  arr = Array.new
  stocks.each_with_index do |stock, index|
    for i in index..stocks.length-1 do
      current = stocks[i] - stock
      if current > bestProfit
        bestProfit = current
        bestBuy = stock
        bestSell = stocks[i]
      end
    end
  end
  [bestProfit, bestSell, bestBuy]
end
