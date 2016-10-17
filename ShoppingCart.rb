class ShoppingCart
	def initialize
		@items = []
	end
	def add_item (item)
		@items.push(item)
	end
	def total_quantity
		numero_total = @items.count
	end
	def checkout
		total = 0
		@items.each do |item|
			if total_quantity < 5
				total = total + item.price
			else
				total = (total + item.price) * 0.90
			end
	end
		puts "The number of products in your cart is #{total_quantity}. The total account is #{total}€. Have a nice day!"
	end
end
class Item
	def initialize (name, price)
		@name = name
		@price = price
	end
	def price
	 @price
	end
end
class Houseware < Item
	def price
		if @price > 100
			@price= @price * 0.95
		else
			@price
		end
	end
end
class Fruit < Item
	def price
		time= Time.now
		if time.saturday? || time.sunday?
			@price = @price * 0.9	
		else
			@price
		end 
	end
end
class Food < Item
	def price
		@price
	end
end

# class Banana < Fruit
# 	def price
# 		price = 10
# 	end
# end
# class OrangeJuice < Fruit
# 	def price
# 		price = 10
# 	end
# end
# class Rice < Item
# 	def price
# 		price = 1 
# 	end
# end
# class VacuumCleaner < Item
# 	def price
# 		price = 150
# 	end
# end
# class Anchovies < Item
# 	def price
# 		price = 2
# 	end
# end

belen_cart=ShoppingCart.new
banana = Fruit.new("Banana", 10)
oj =Fruit.new("Orange Juice",10)
vacuum=Houseware.new("Vacuum Cleaner",150)
anchovies=Item.new("Anchovies",2)
rice=Food.new("Rice",1)

belen_cart.add_item(oj)
belen_cart.add_item(banana)
belen_cart.add_item(vacuum)
belen_cart.add_item(anchovies)
belen_cart.add_item(rice)
belen_cart.checkout

