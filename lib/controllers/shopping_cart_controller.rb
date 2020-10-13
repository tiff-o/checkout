require_relative '../models/shopping_cart'
# require_relative 'product'
require_relative '../views/shopping_cart_view'

# USER ACTIONS
# load list of products from products.json file
# display list of products to user
# add products to shopping cart
# calculate total cost
# display total cost

class ShoppingCartController
  attr_reader :shopping_cart

  def initialize(shopping_cart:)
    @shopping_cart = shopping_cart
    @shopping_cart_view = ShoppingCartView.new
  end

  def list_cart
    display_cart
  end

  private

  def display_cart
    @shopping_cart_view.display_cart(@shopping_cart)
  end
end
