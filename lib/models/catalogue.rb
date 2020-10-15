require 'json'

class Catalogue
  attr_reader :products

  def initialize(catalogue_file)
    @products = []
    @catalogue_file = catalogue_file
    load_products
  end

  def list
    @names = []
    @products = Catalogue.new(@catalogue_file).products
    @products.each do |product|
      @names << product["name"]
    end
    @names
  end

  private

  def load_products
    catalogue_file = File.read('lib/products.json')
    products = JSON.parse(catalogue_file)
    products.each do |product|
      @uuid = product["uuid"]
      @name = product["name"]
      @price = product["price"]
      @products << product
    end
  end
end
