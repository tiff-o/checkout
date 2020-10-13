require_relative 'spec_helper'
require_relative '../lib/models/catalogue'

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

  describe ".list" do
    it "should create list of product names" do

      expect(@catalogue.list.first).to eq "Jockey Wheels - Orange"
      expect(@catalogue.list.last).to eq "Front Derailleur - 34.9mm"
    end
  end
end
