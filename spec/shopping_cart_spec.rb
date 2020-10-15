require_relative 'spec_helper'
require_relative '../lib/models/shopping_cart'

describe ShoppingCart do
  describe "#initialize" do
    it "should create empty shopping cart" do
      shopping_cart = ShoppingCart.new(cart_file: @cart_file)

      expect(shopping_cart.total).to eq 0
      expect(shopping_cart.cart_products.count).to eq 0
    end
  end

  describe ".add" do
    let(:catalogue) { Catalogue.new(@catalogue_file) }
    let(:product) { catalogue.products[0] }
    let(:shopping_cart) { ShoppingCart.new(catalogue: catalogue) }

    it "should add product to shopping cart" do
      shopping_cart.add(product)
      expect(shopping_cart.cart_products.count).to eq 1
    end

    it "should update cart total" do
      shopping_cart.add(product)
      expect(shopping_cart.total).to eq 15.39
    end
  end
end
