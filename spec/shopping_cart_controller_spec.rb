require_relative 'spec_helper'
require_relative '../lib/controllers/shopping_cart_controller'

describe ShoppingCartController do
  let(:shopping_cart) { ShoppingCart.new(@cart_file) }
  let(:catalogue) { Catalogue.new(@catalogue_file) }

  describe "#initialize" do
    let(:shopping_cart_controller) { ShoppingCartController.new(shopping_cart: shopping_cart, catalogue: catalogue) }

    it "should store shopping cart in an instance variable" do
      expect(shopping_cart_controller
        .instance_variable_get(:@shopping_cart)) # avoid
        .to be_a ShoppingCart
    end
  end

  context "when shopping cart & controller has been initialized" do
    let(:shopping_cart_controller) { ShoppingCartController.new(shopping_cart: shopping_cart, catalogue: catalogue) }
    let(:shopping_cart_view) { shopping_cart_controller.shopping_cart_view }

    before do
      allow(shopping_cart_view).to receive_messages(display_cart: nil, added_to_cart: nil)
    end

    describe ".add" do
      it "should add product to shopping cart" do
        shopping_cart_controller.add(3)
        expect(shopping_cart.cart_products.count).to eq 1
      end
    end

    describe ".display_cart" do
      it "should get all products in shopping cart" do
        shopping_cart_controller.add(3)
        shopping_cart_controller.display_cart
        expect(shopping_cart.total).to eq 92.00
      end
    end
  end
end
