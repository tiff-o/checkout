require_relative 'spec_helper'
require_relative '../lib/product'

describe Product do
  before do
    @inventory = Product.new
  end

  describe "#initialize" do
        let(:products) { @inventory.products }

    it "should create inventory of products" do

      expect(products.first["name"]).to eq "Jockey Wheels - Orange"
    end
  end
end
