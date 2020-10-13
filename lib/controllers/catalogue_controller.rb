require_relative '../models/catalogue'
# require_relative 'product'
require_relative '../views/catalogue_view'

# USER ACTIONS
# load list of products from products.json file
# display list of products to user
# add products to shopping cart
# calculate total cost
# display total cost

class CatalogueController
  attr_reader :catalogue

  def initialize(catalogue:)
    @catalogue = catalogue
    @catalogue_view = CatalogueView.new
  end

  def show
    index = @catalogue_view.ask_user_for_index
    @product = @catalogue.products[index - 1]
    @catalogue_view.display_product(@product)
  end

  def list_products
    display_products
  end

  def list_cart
    display_cart
  end

  private

  def display_products
    @catalogue_view.display_products(@catalogue.list) # send to view to show all products
  end

  def display_cart
    @catalogue_view.display_cart(@shopping_cart)
  end
end
