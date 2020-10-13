require 'json'
# require_relative 'product'

class Catalogue
  attr_accessor :products

  def initialize(json_file)
    @products = []
    @json_file = json_file
    load_products
  end

  def list
    # list all products by name only
    @names = []
    @products = Catalogue.new(@json_file).products
    @products.each do |product|
      @names << product["name"]
    end
    @names
  end

  private

  def load_products
    json_file = File.read('lib/products.json')
    products = JSON.parse(json_file)
    products.each do |product|
      @uuid = product["uuid"]
      @name = product["name"]
      @price = product["price"]
      @products << product
    end
  end
end
