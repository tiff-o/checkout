require_relative 'models/catalogue'
require_relative 'models/product'
require_relative 'models/shopping_cart'
require_relative 'controllers/catalogue_controller'
require_relative 'controllers/shopping_cart_controller'
require_relative 'views/catalogue_view'
require_relative 'views/shopping_cart_view'

require_relative 'router'

shopping_cart = ShoppingCart.new

catalogue = Catalogue.new(@json_file)
catalogue_controller = CatalogueController.new(catalogue: catalogue)
shopping_cart_controller = ShoppingCartController.new(shopping_cart: shopping_cart)

router = Router.new(catalogue_controller: catalogue_controller, shopping_cart_controller: shopping_cart_controller)

router.run
