#  Use hashes with symbols
# item1 = { :name => "pencil", :color => "green", :price => 85 }
# item2 = { name: "paper", color: "white", price: 45.5 }
# item3 = { :name => "dark chocolate", :color => "brown", :price => 6.99 }

# puts "#{item1[:name]} with color #{item1[:color]} and price #{item1[:price]}"
# puts "#{item2[:name]} with color #{item2[:color]} and price #{item2[:price]}"
# puts "#{item3[:name]} with color #{item3[:color]} and price #{item3[:price]}"

# Exercise: Rewrite your store items using a class instead of a hash.
# class Store
#   def initialize(name, color, price)
#     @name = name
#     @color = color
#     @price = price
#   end

#   # READERS
#   def name
#     return @name
#   end

#   def color
#     return @color
#   end

#   def price
#     return @price
#   end

#   # WRITERS
#   def price=(new_price)
#     @price = new_price
#   end
# end

# staples = Store.new("staples", "red", 450)
# puts "STAPLES"
# puts "the name of the product is #{staples.name}"
# puts "and it sells #{staples.color} colored"
# puts "at the price of#{staples.price}"

# Exercise:
# Replace your “reader” and “writer” methods using the attr_reader and attr_writer shortcuts!
# Bonus: Read more about how attr_reader works its magic (advanced stuff here) https://mikeyhogarth.wordpress.com/2011/12/01/creating-your-own-attr_accessor-in-ruby/
# class StoreTwo
#   # READERS
#   attr_reader :name, :color, :price

#   # WRITERS
#   attr_writer :price

#   def initialize(name, color, price)
#     @name = name
#     @color = color
#     @price = price
#   end
# end

# menards = StoreTwo.new("tarps", "green", 100)
# puts "MENARDS SELLS"
# puts "this product: #{menards.name}"
# puts "and it sells #{menards.color} colored"
# puts "at the price of #{menards.price}"

# menards.price = (50)
# puts menards.price

# Exercise: Rewrite your store items using a class with a single options hash in the initialize method.
class StoreThree
  # READERS
  attr_reader :product_name, :color, :price
  # WRITERS
  attr_writer :price

  def initialize(input_hash)
    @product_name = input_hash[:product_name]
    @color = input_hash[:color]
    @price = input_hash[:price]
  end
end

dollar_store = StoreThree.new({ :product_name => "gummy bears", :color => "many", :price => 2.5 })
dollar_store.price = (5000)
puts "welcome to the dollar store, where we sell #{dollar_store.product_name} which is the color #{dollar_store.color} and costs #{dollar_store.price} dollars."
