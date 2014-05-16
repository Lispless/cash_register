#SKU,name,wholesale_price,retail_price
#120945,Light,2.50,5
#679340,Medium,3.25,7.50
#328745,Bold,4.75,9.75
#puts sale_items['120945'] ----=>Light
#puts sale_prices -------------=>{2.5=>5.0, 3.25=>7.5, 4.75=>9.75}
#name = gets.chomp
# if phone_book.has_key?(name)
#   puts "Cell: #{phone_book[name][:cell]}"
#   puts "Work: #{phone_book[name][:work]}"
# else
#   puts "Name not found."
#end
require "csv"
require "pry"

amount = []
menu= {}
id = 1

def sum_array(i)
	total = 0
	i.each do |v|
		total = total + v
		$foo = total
	end
	puts "The total so far is $#{total}"
end

CSV.foreach('products.csv', headers: true) do |row|
	sku = row["SKU"]
	name = row["name"]
	wholesale_price = row["wholesale_price"].to_f
	retail_price = row["retail_price"].to_f
	menu[id] = {id: id, sku: sku, name: name, wholesale_price: wholesale_price, retail_price: retail_price}
	id += 1
end

puts menu
puts 'This is item #menu[1].'
puts 'This is the item'