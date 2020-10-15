require_relative 'spec_helper'
require_relative '../lib/models/catalogue'

describe Catalogue do
  describe "#initialize" do
    it "should create catalogue of products" do
      catalogue = Catalogue.new(catalogue_file: @catalogue_file)
      expect(catalogue.products.first["uuid"]).to eq 1411
      expect(catalogue.products.first["name"]).to eq "Jockey Wheels - Orange"
      expect(catalogue.products.first["price"]).to eq "15.39"
    end
  end

  describe ".list" do
    let(:catalogue) { Catalogue.new(@catalogue_file) }

    it "should create list of product names" do
      catalogue.list
      expect(catalogue.list.first).to eq "Jockey Wheels - Orange"
      expect(catalogue.list.last).to eq "Front Derailleur - 34.9mm"
    end
  end
end
