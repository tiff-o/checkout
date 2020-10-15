require_relative 'spec_helper'
require_relative '../lib/controllers/shopping_cart_controller'

describe ShoppingCartController do
  let(:shopping_cart) { ShoppingCart.new(@cart_file) }
  let(:catalogue) { Catalogue.new(@catalogue_file) }

  describe "#initialize" do
    let(:shopping_cart_controller) { ShoppingCartController.new(shopping_cart: shopping_cart, catalogue: catalogue) }

    it "should store shopping cart in an instance variable" do
      expect(shopping_cart_controller
        .instance_variable_get(:@shopping_cart))
        .to be_a ShoppingCart
    end
  end

  describe ".add" do
    let(:shopping_cart_controller) { ShoppingCartController.new(shopping_cart: shopping_cart, catalogue: catalogue) }

    it "should implement method to get instance of product" do
      expect(shopping_cart_controller).to respond_to :add
    end
  end

  describe ".display_cart" do
    let(:shopping_cart_controller) { ShoppingCartController.new(shopping_cart: shopping_cart, catalogue: catalogue) }

    it "should implement method to get all products in shopping cart to display in view" do
      expect(shopping_cart_controller).to respond_to :display_cart
    end
  end
end
