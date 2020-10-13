require_relative 'spec_helper'
require_relative '../lib/catalogue'

describe Catalogue do
  before do
    @catalogue = Catalogue.new(@json_file)
  end

  describe "#initialize" do
    it "should create inventory of products" do

      expect(@catalogue.products.first["uuid"]).to eq 1411
      expect(@catalogue.products.first["name"]).to eq "Jockey Wheels - Orange"
      expect(@catalogue.products.first["price"]).to eq "15.39"
    end
  end
end
