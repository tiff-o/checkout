require_relative 'product'

class ShoppingCart
  attr_reader :total, :cart_products

  def initialize
    @cart_products = []
    @total = 0
  end

  def add(product)
    @cart_products << product
    @total += product["price"].to_f
  end

  def all
    @cart_products.each do |product|
      @name = product["name"]
      @price = product["price"]
    end
  end
end
