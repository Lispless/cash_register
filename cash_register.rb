#SKU,name,wholesale_price,retail_price
#120945,Light,2.50,5
#679340,Medium,3.25,7.50
#328745,Bold,4.75,9.75
require "csv"
require "pry"

menu= {}
id = 1

def sum_array(i)
	total = 0
	i.each do |d|
		total = total + d
		$foo = total
	end
	puts "Subtotal: $#{total}"
end

CSV.foreach('products.csv', headers: true) do |row|
	sku = row["SKU"]
	name = row["name"]
	wholesale_price = row["wholesale_price"]
	retail_price = row["retail_price"]
	menu[id] = {id: id, sku: sku, name: name, wholesale_price: wholesale_price, retail_price: retail_price}
	id += 1
end

puts "Welcome to James' Coffee Emporium!"
menu.each do |id, sub_hash|
	puts "##{sub_hash[:id]}) Add item - #{sub_hash[:retail_price]} - #{sub_hash[:name]}"
end
puts "##{id}) Complete sale"

puts "Your selection:"
option = gets.chomp






