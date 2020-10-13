require_relative 'spec_helper'
require_relative '../lib/product'

describe Product do
  describe "#initialize" do
    let(:uuid) { 1411 }
    let(:name) { "Jockey Wheels - Orange" }
    let(:price) { "15.39" }
    let(:product) { Product.new(uuid: uuid, name: name, price: price) }

    it "should create a product" do

      expect(product.name).to eq "Jockey Wheels - Orange"
    end
  end
end
