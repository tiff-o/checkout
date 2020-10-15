require_relative '../models/shopping_cart'
require_relative '../views/shopping_cart_view'

class ShoppingCartController
  attr_reader :shopping_cart, :catalogue, :shopping_cart_view

  def initialize(shopping_cart:, catalogue:)
    @catalogue = catalogue
    @shopping_cart = shopping_cart
    @shopping_cart_view = ShoppingCartView.new
  end

  def add(index)
    @product = @catalogue.products[index - 1]
    @shopping_cart.add(@product)
    @shopping_cart_view.added_to_cart(@product)
    display_cart
  end

  def display_cart
    @shopping_cart_view.display_cart(@shopping_cart)
  end
end
