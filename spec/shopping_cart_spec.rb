require_relative 'spec_helper'
require_relative '../lib/models/shopping_cart'

describe ShoppingCart do
  describe "#initialize" do
    it "should create empty shopping cart" do
      @shopping_cart = ShoppingCart.new

      expect(@shopping_cart.total).to eq 0
      expect(@shopping_cart.cart_products.count).to eq 0
    end
  end

  describe ".add" do
    before do
      @catalogue = Catalogue.new(@json_file)
      @product = @catalogue.products[0]
      @shopping_cart = ShoppingCart.new
      @shopping_cart.add(@product)
    end

    it "should add product to shopping cart" do
      expect(@shopping_cart.cart_products.count).to eq 1
    end

    it "should update cart total" do
      expect(@shopping_cart.total).to eq 15.39
    end
  end

  describe ".all" do
    before do
      @catalogue = Catalogue.new(@json_file)
      @product = @catalogue.products[1]
      @shopping_cart = ShoppingCart.new
      @shopping_cart.add(@product)
    end

    it "should return all products in shopping cart" do
      expect(@shopping_cart.all.count).to eq 1
    end
  end
end
