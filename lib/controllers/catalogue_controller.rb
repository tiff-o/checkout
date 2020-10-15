require_relative '../models/catalogue'
require_relative '../views/catalogue_view'

class CatalogueController
  attr_reader :catalogue

  def initialize(catalogue:)
    @catalogue = catalogue
    @catalogue_view = CatalogueView.new
  end

  def show(index)
    @product = @catalogue.products[index - 1]
    @uuid = @product["uuid"]
    @name = @product["name"]
    @price = @product["price"]
    @catalogue_view.display_product(@product)
  end

  def list_products
    display_products
  end

  def add_to_cart(product)
    @catalogue_view.add_to_cart(product)
  end

  private

  def display_products
    @catalogue_view.display_products(@catalogue.list)
    @catalogue_view.ask_user_for_index
  end
end
