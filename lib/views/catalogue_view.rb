class CatalogueView

  def display_products(products)
    # show all products in a numbered list - name only
    index = 0
    puts " ------ CATALOG ------ "
    products.each do |product|
      puts "#{index += 1 }. #{product}"
    end
  end

  def display_product
    # show product details
    # show item details
  end

  def ask_user_for_index
    # select from options using number
    puts "Which product? Please enter the item's number."
    gets.chomp.to_i - 1
    # add or delete items from cart
    # display item details
  end
end
