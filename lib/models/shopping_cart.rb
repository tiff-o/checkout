require 'json'
require_relative 'product'

class ShoppingCart
  attr_reader :total, :cart_products

  def initialize(json_file)
    @cart_products = []
    @total = 0
    @json_file = json_file
    # load_cart_products
  end

  def add(product)
    @cart_products << product
    json_file = 'lib/shopping_cart_products.json'
    File.open(json_file, 'wb') do |file|
      file.write(JSON.generate(cart_products))
    end
    @total += product["price"].to_f
  end

  def all
    load_cart_products
    # @cart_products.each do |product|
    #   @name = product["name"]
    #   @price = product["price"]
    # end
  end

  private

  def load_cart_products
    cart_file = File.read('lib/shopping_cart_products.json')
    cart_products = JSON.parse(cart_file)
    cart_products.each do |product|
      @name = product["name"]
      @price = product["price"]
      @cart_products << product
    end
  end
end
