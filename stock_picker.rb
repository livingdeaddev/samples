#stock_picker method that takes in an array of stock prices
#one for each hypothetical day
#return a pair of days representing the best day to buy
#AND the best day to sell
#day2-day1 should render the highest profit
#TIPS:You need to buy before you can sell
#Pay attention to edge cases (when lowest day is last or highest
#days is first)

def stock_picker(prices)
	c = prices.combination(2).to_a
	profits = []
	
	c.each {|x, y|
		p = y - x
		profits.push([p, prices.index(x), prices.index(y)])
	}		
	profit_order = profits.sort_by {|h| -h[0]}
	best_days =  [profit_order[0][1], profit_order[0][2]]
	puts "For a maximum profit of: $#{profit_order[0][0]}, buy on Day #{profit_order[0][1]+1} & sell on Day #{profit_order[0][2]+1}."
end

stock_picker([17,3,6,9,15,8,6,1,10])
#=>[1,4]