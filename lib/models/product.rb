require_relative 'catalogue'
# show product details

class Product
  attr_reader :uuid, :name, :price

  def initialize(uuid:, name:, price:)
    @uuid = uuid
    @name = name
    @price = price
  end

  def show
    @product = Product.new(uuid: @uuid, name: @name, price: @price)
  end

  def remove_from_cart
    # list products in cart
    # user chooses product by index + 1
    # delete instance of product from cart
    # update_cart
  end

end
