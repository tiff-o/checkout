class ShoppingCart
  attr_accessor :total, :cart_products

  def initialize(total: 0)
    @cart_products = []
    @total = 0
  end

  def add(product)
    # add products to array
    @cart_products << product
    @total += product.price.to_f
  end

  def all
    # get all products in cart
    @cart_products.each do |product|
      @name = product.name
      @price = product.price
    end
  end
end
