class ShoppingCart
  def initialize
    @cart_products = []
  end

  def add(product)
    # add or delete products from array
    @cart_products << product
  end

  def display_cart
    # show products in cart including total
  end

  def clear_cart
    # destroy all instances of product in cart
  end

  def calculate_total
    # calculate sum of products in cart
  end
end
