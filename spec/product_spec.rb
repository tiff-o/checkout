require_relative 'spec_helper'
require_relative '../lib/models/product'

describe Product do
  before do
    @uuid = 1411
    @name = "Jockey Wheels - Orange"
    @price = 15.39
  end

  describe "#initialize" do

    let(:product) { Product.new(uuid: @uuid, name: @name, price: @price) }

    it "should create a product" do
      expect(product.name).to eq "Jockey Wheels - Orange"
    end
  end

  describe ".show" do

    it "should show individual product details" do
      @product = Product.new(uuid: @uuid, name: @name, price: @price)

      expect(@product.show.name).to eq "Jockey Wheels - Orange"
    end
  end

end
