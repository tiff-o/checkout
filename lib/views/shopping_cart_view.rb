class ShoppingCartView
  def display_cart(products, total)
    index = 0
    puts " ------ SHOPPING CART ------ "
    puts ""
    products.each do |product|
      puts "#{index += 1}. #{product["name"]} - $#{product["price"]}"
    end
    puts "TOTAL: $#{total.round(2)}"
    puts ""
  end

  def added_to_cart(product)
    puts ""
    puts "Added #{product["name"]} to cart!"
    puts ""
  end
end
