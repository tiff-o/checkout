class Router
  def initialize(catalogue_controller:, shopping_cart_controller:)
    @catalogue_controller = catalogue_controller
    @shopping_cart_controller = shopping_cart_controller
    @running = true
  end

  def run
    puts ""
    puts " --- WELCOME TO CHECKOUT --- "
    puts ""
    display_tasks

    while @running
      task = gets.chomp.to_i
      router(task)
    end
  end

  def stop
    puts ""
    puts "Thanks for shopping with Checkout! See you next time."
    puts ""
    @running = false
  end

  private

  def router(task)
    case task
    when 1 then index = @catalogue_controller.list_products
                display_product_actions
                action = gets.chomp.to_i
                catalogue(action, index)
                display_tasks
    when 2 then @shopping_cart_controller.display_cart
                display_tasks
    when 3 then stop
    end
  end

  def catalogue(action, index)
    case action
    when 1 then @shopping_cart_controller.add(index)
    when 2 then @catalogue_controller.show(index)
    when 3 then stop
    end
  end

  def display_tasks
    puts "What would you like to do?"
    puts "(Choose 1, 2, or 3)"
    puts ""
    puts "1. Browse products"
    puts "2. View shopping cart"
    puts "3. Checkout"
    puts ""
  end

  def display_product_actions
    puts ""
    puts " --------------------------- "
    puts " What would you like to do?"
    puts "(1, 2 or 3)"
    puts "1. Add item to cart"
    puts "2. View item details"
    puts "3. Checkout"
    puts ""
  end
end
