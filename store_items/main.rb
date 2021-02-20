require "./sellable_items.rb"
require "./store.rb"
require "./food.rb"

# require_relative "sellable_items.rb"
# require_relative "store.rb"
# require_relative "food.rb"



store = Store.new({ :product_name => "gummy bears", :color => "many"})
store.print_info
p store.change_price(8.25)


cabbage = Food.new({:product_name => "cabbage", :price => 4.99})
cabbage.print_info
p cabbage.flavor
p cabbage.season_food
p cabbage.price
p cabbage.change_price(30)
