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
    when 2 then @catalogue_controller.display_cart
    when 3 then stop
    end

  end


  def display_tasks
    puts "What would you like to do? (Choose 1, 2, or 3)"
    puts "1. Browse products"
    puts "2. View shopping cart"
    puts "3. Exit"
  end



end
