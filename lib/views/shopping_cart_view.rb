class ShoppingCartView
  def display_cart(shopping_cart)
    index = 0
    puts " ------ SHOPPING CART ------ "
    puts ""
    shopping_cart.cart_products.each do |product|
      puts "#{index += 1}. #{product["name"]} - $#{product["price"]}"
    end
    puts "TOTAL: $#{shopping_cart.total.round(2)}"
    puts ""
  end

  def added_to_cart(product)
    puts ""
    puts "Added #{product["name"]} to cart!"
    puts ""
  end
end
