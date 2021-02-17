#  Use hashes with symbols
item1 = { :name => "pencil", :color => "green", :price => 85 }
item2 = { name: "paper", color: "white", price: 45.5 }
item3 = { :name => "dark chocolate", :color => "brown", :price => 6.99 }

puts "#{item1[:name]} with color #{item1[:color]} and price #{item1[:price]}"
puts "#{item2[:name]} with color #{item2[:color]} and price #{item2[:price]}"
puts "#{item3[:name]} with color #{item3[:color]} and price #{item3[:price]}"

# Bonus: Read more about Ruby’s hash symbol syntax:
# - http://alwayscoding.ca/momentos/2012/06/15/ruby-hash-syntax-hashrocket-vs-json-style/
# - Create a hash in irb where both the keys and values are symbols. Which syntax do you prefer?
