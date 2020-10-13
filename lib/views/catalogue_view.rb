class CatalogueView
  def display_products(products)
    index = 0
    puts " -------- CATALOGUE -------- "
    products.each do |product|
      puts "#{index += 1}. #{product}"
    end
  end

  def display_product(product)
    uuid = product["uuid"]
    name = product["name"]
    price = product["price"]

    puts " --------------------------- "
    puts "UUID: #{uuid}"
    puts "Name: #{name}"
    puts "Price: $#{price}"
    puts " --------------------------- "
  end

  def ask_user_for_index
    puts " --------------------------- "
    puts ""
    puts "Choose a product (1 - 4)"
    puts "to see available options."
    gets.chomp.to_i
  end
end
