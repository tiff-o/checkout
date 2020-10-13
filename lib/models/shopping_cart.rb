require_relative 'product'

class ShoppingCart
  attr_accessor :total, :cart_products

  def initialize(total: 0)
    @cart_products = []
    @total = 0
  end

  def add(product)
    # add or delete products from array
    @cart_products << product
    @total += product.price
  end
end
