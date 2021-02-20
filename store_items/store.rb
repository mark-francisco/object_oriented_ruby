require "./sellable_items.rb"

class Store
  include SellableItems

  attr_accessor :product_name, :color, :price

  def initialize(input_hash={})
    @product_name = input_hash[:product_name] || "jeans"
    @color = input_hash[:color] || "blue"
    @price = input_hash[:price] || 10.00
  end

  def change_price(new_price)
    puts "changing price..."
    return @price = new_price
  end
  
end
