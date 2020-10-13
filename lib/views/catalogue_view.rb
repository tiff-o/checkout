class CatalogueView

  def display_products(products)
    # show all products in a numbered list - name only
    index = 0
    puts " ------ CATALOG ------ "
    products.each do |product|
      puts "#{index += 1 }. #{product}"
    end
  end

  def display_product(product)
    # show product details
    # show item details
    uuid = product["uuid"]
    name = product["name"]
    price = product["price"]

    puts "----------------------"
    puts "UUID: #{uuid}"
    puts "Name: #{name}"
    puts "Price: #{price}"
    puts "----------------------"
  end

  def ask_user_for_index
    # select from options using number
    puts "----------------------"
    puts "Which product? Please enter the item's number."
    gets.chomp.to_i - 1
  end

  def add_to_cart
    puts "Add to cart? (Y/N)"
    puts "----------------------"
    gets.chomp
  end

end
