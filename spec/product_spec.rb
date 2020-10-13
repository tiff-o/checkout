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

    it "should create an instance of product with correct details stored" do
      expect(product).to be_a Product
      expect(product.uuid).to eq 1411
      expect(product.name).to eq "Jockey Wheels - Orange"
      expect(product.price).to eq 15.39
    end
  end

  describe ".show" do
    it "should retrieve details of an individual product" do
      @product = Product.new(uuid: @uuid, name: @name, price: @price)
      @product.show

      expect(@product).to be_a Product
    end
  end
end
