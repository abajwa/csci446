class Cart
	attr_reader :items
	
	def initialize 
		@items = []
	end
	
	def add_product(product)
		current_item = @items.find {|item| item.product == product}
		if current_item
			current_item.increment_quantity
		else
<<<<<<< HEAD
			current_item = CartItem.new(product)
			@items << current_item
		end
		current_item
=======
			@items << CartItem.new(product)
		end
>>>>>>> 868e3b4fb6ae6ada719128af5d841561815cc2bc
	end
	
	def total_price
		@items.sum { |item| item.price }
	end
<<<<<<< HEAD
	
	def total_items
		@items.sum { |item| item.quantity }
	end
=======
>>>>>>> 868e3b4fb6ae6ada719128af5d841561815cc2bc
end

