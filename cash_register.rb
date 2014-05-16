#SKU,name,wholesale_price,retail_price
#120945,Light,2.50,5
#679340,Medium,3.25,7.50
#328745,Bold,4.75,9.75
require "csv"
require "pry"

amount = []
quantity = []
menu= {}
id = 1
transcript = {}

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
	wholesale_price = row["wholesale_price"]
	retail_price = row["retail_price"]
	menu[id] = {id: id, sku: sku, name: name, wholesale_price: wholesale_price, retail_price: retail_price}
	id += 1
end

puts "Welcome to James' Coffee Emporium!"
puts "##{menu[1][:id]}) Add item - #{menu[1][:retail_price]} - #{menu[1][:name]}"
puts "##{menu[2][:id]}) Add item - #{menu[2][:retail_price]} - #{menu[2][:name]}"
puts "##{menu[3][:id]}) Add item - #{menu[3][:retail_price]} - #{menu[3][:name]}"
puts "#4) Complete sale"

puts "Your selection:"
option = gets.chomp.to_i
while option != 4
		if option > 4
			puts "I'm sorry, I don't believe that is an option."
		else
			puts "Your selection:"
			option = gets.chomp.to_i
			puts "How many would you like?"
			quantity_desired = gets.chomp
			quantity << quantity_desired.to_i
		end
end
#	puts quantity
#	tendered = gets.chomp
#	amount << tendered.to_f
#	sum_array(amount)
puts $foo





