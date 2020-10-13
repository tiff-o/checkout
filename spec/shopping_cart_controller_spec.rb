require_relative 'spec_helper'
require_relative '../lib/controllers/shopping_cart_controller'

describe ShoppingCartController do
  let(:shopping_cart) { ShoppingCart.new }

  describe "#initialize" do
    let(:shopping_cart_controller) { ShoppingCartController.new(shopping_cart: shopping_cart) }

    it "should store shopping cart in an instance variable" do
      expect(shopping_cart_controller
        .instance_variable_get(:@shopping_cart))
        .to be_a ShoppingCart
    end
  end

  describe ".add" do
    it "should implement method to get instance of product" do
      shopping_cart_controller = ShoppingCartController.new(shopping_cart: shopping_cart)
      expect(shopping_cart_controller).to respond_to :add
    end
  end

  describe ".list_cart" do
    let(:shopping_cart_controller) { ShoppingCartController.new(shopping_cart: shopping_cart) }

    it "should implement method to get all products in shopping cart to display in view" do
      expect(shopping_cart_controller).to respond_to :list_cart
    end
  end
end
