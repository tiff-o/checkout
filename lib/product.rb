require 'json'

class Product
  attr_reader :uuid, :name, :price

  def initialize(uuid:, name:, price:)
    @uuid = uuid
    @name = name
    @price = price
  end

  def list
    # list all products
  end

  def add_to_cart
    # list products
    # user chooses product by index + 1
    # add instance of product to cart
    # update_cart
  end

  def remove_from_cart
    # list products in cart
    # user chooses product by index + 1
    # delete instance of product from cart
    # update_cart
  end
end

private

# read json file
