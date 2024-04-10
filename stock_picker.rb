def stock_picker(prices)
    max_profit = 0
    buy_day = 0
    sell_day = 0
  
    # Nested loop to compare each pair of days for buying and selling
    prices.each_with_index do |buy_price, buy_index|
      prices.each_with_index do |sell_price, sell_index|
        # Ensure that we're selling after buying
        next if sell_index <= buy_index
  
        # Calculate the profit if we buy at buy_index and sell at sell_index
        profit = sell_price - buy_price
  
        # Update max_profit and buy_day/sell_day if we find a better profit
        if profit > max_profit
          max_profit = profit
          buy_day = buy_index
          sell_day = sell_index
        end
      end
    end
  
    [buy_day, sell_day]
  end
  
  # Example usage
  prices = [7, 1, 5, 3, 10, 4]
  best_days = stock_picker(prices)
  puts "Best days to buy and sell: Buy on day #{best_days[0]} and sell on day #{best_days[1]} for a profit of #{prices[best_days[1]] - prices[best_days[0]]}"
  