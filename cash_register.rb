require "csv"
require "pry"

def sum_array(i)
	total = 0
	i.each do |v|
		total = total + v
		$foo = total
	end
	puts "The total so far is $#{total}"
end

amount = []
sale_items = {}
sale_prices = {}

CSV.foreach('products.csv', headers: true) do |row|
	sku = row["SKU"]
	name = row["name"]
	wholesale_price = row["wholesale_price"].to_f
	retail_price = row["retail_price"].to_f
	sale_items[sku] = name
	sale_prices[wholesale_price] = retail_price
end