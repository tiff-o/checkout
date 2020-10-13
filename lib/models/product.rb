# require_relative 'shopping_cart'

class Product
  attr_accessor :uuid, :name, :price

  def initialize(uuid:, name:, price:)
    @uuid = uuid
    @name = name
    @price = price
  end

  def show
    @product = Product.new(uuid: @uuid, name: @name, price: @price)
  end
end

# p @product = Product.new(uuid: 111, name: "blah", price: 1.5)
