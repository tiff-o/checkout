require_relative '../models/catalogue'
require_relative '../views/catalogue_view'

class CatalogueController
  attr_reader :catalogue, :catalogue_view, :product, :products

  def initialize(catalogue:)
    @catalogue = catalogue
    @catalogue_view = CatalogueView.new
  end

  def show(index)
    @product = @catalogue.products[index - 1]
    @catalogue_view.display_product(@product)
  end

  def list_products
    display_products
  end

  private

  def display_products
    @products = @catalogue.list
    @catalogue_view.display_products(@products)
    @catalogue_view.ask_user_for_index
  end
end
