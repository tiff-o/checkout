require_relative '../models/shopping_cart'
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

  def add(index)
    @catalogue = Catalogue.new(@json_file)
    @product = @catalogue.products[index - 1]
    @shopping_cart.add(@product)
    @shopping_cart_view.added_to_cart(@product)
    @total = shopping_cart.total
    @name = @product["name"]
    @price = @product["price"]
    @products = @shopping_cart.cart_products
    display_cart
  end

  def display_cart
    @shopping_cart_view.display_cart(@products, @total)
  end
end
