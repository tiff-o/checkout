require 'json'

class Product
  attr_reader :products

  def initialize
    @products = []
    load_products
  end

  def self.list
    # list all products by name only
    @names = []
    inventory = Product.new
    inventory.products.each do |product|
      @names << product["name"]
    end
    @names
  end

  def remove_from_cart
    # list products in cart
    # user chooses product by index + 1
    # delete instance of product from cart
    # update_cart
  end

  def load_products
    @json_file = File.read('lib/products.json')
    products = JSON.parse(@json_file) # hash
    # product = products[0] # first product hash
    products.each do |product|
      uuid = product["uuid"]
      name = product["name"]
      price = product["price"]
      @products << product
    end
  end
end
# read json file

p Product.list

