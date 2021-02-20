# Create a new module in your store item.
# Create separate files for each of your classes and modules.
# Create a separate main.rb file to demonstrate how each class and module work.
# Bonus: Read about the differences between load, require, and require_relative: http://rubylearning.com/satishtalim/including_other_files_in_ruby.html

module SellableItems
  def print_info
    puts "product name: #{@product_name}, color: #{@color}, price: #{@price}."
  end
end




