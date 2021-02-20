require "./sellable_items.rb"

class Food < Store
  include SellableItems

  attr_accessor :shelf_life, :flavor

  def initialize(input_hash={})
    super
    @shelf_life = input_hash[:shelf_life] || 3
    @flavor = input_hash[:flavor] || "none"
  end

  def season_food
    puts "seasoning food..."
    @flavor = "delicious"
  end
end