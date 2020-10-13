class Router
  def initialize(catalogue_controller:, shopping_cart_controller:)
    @catalogue_controller = catalogue_controller
    @shopping_cart_controller = shopping_cart_controller
    @running = true
  end

  def run
    puts "WELCOME TO CHECKOUT"
    puts " ----------------- "
    display_tasks

    while @running
      task = gets.chomp.to_i
      router(task)
    end
  end

  def stop
    @running = false
  end

  private

  def router(task)
    case task
    when 1 then @catalogue_controller.list_products
                display_product_actions
                action = gets.chomp.to_i
                catalogue(action)
    when 2 then @catalogue_controller.display_cart
    when 3 then stop
    end

  end

  def catalogue(action)
    case action
      when 1 then @catalogue_controller.show
      when 2 then stop
    end
  end



  def cart(choice)
    case choice
      when Y then @shopping_cart_controller.add
        puts "Added to cart!"
      when N then @catalogue_controller.list_products
    end

  end



  def display_tasks
    puts "What would you like to do? (Choose 1, 2, or 3)"
    puts "1. Browse products"
    puts "2. View shopping cart"
    puts "3. Exit"
    puts ""
  end

  def display_product_actions
    puts ""
    puts " ---------------------- "
    puts " What would you like to do? (1 or 2)"
    # puts "1. Add item to cart"
    puts "1. View item details"
    puts "2. Exit"
    puts ""
  end

end
