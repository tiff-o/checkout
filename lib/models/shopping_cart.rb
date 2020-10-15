require 'json'

class ShoppingCart
  attr_reader :cart_products, :total

  def initialize(cart_file)
    @cart_products = []
    @total = 0
    @cart_file = cart_file
  end

  def add(product)
    @cart_products << product
    @total += product["price"].to_f
    save_cart_products
  end

  private

  def save_cart_products
    file_path = 'lib/shopping_cart_products.json'
    File.open(file_path, 'wb') do |file|
      file.write(JSON.generate(cart_products))
    end
  end

  def load_cart_products
    # to extend to saving cart
    cart_file = File.read('lib/shopping_cart_products.json')
    cart_products = JSON.parse(cart_file)
    cart_products.each do |product|
      @name = product["name"]
      @price = product["price"]
      @cart_products << product
    end
  end
end
