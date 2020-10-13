require_relative 'spec_helper'
require_relative '../lib/controllers/catalogue_controller'

describe CatalogueController do
  let(:json_file) { File.read('lib/products.json') }
  let(:catalogue) { Catalogue.new(json_file) }

  describe "#initialize" do
    let(:catalogue_controller) { CatalogueController.new(catalogue: catalogue) }

    it "should store catalogue in an instance variable" do
      expect(catalogue_controller
        .instance_variable_get(:@catalogue))
        .to be_a Catalogue
    end
  end

  describe ".show" do
    it "should implement method to get instance of product" do
      catalogue_controller = CatalogueController.new(catalogue: catalogue)
      expect(catalogue_controller).to respond_to :show
    end
  end

  describe ".list_products" do
    let(:catalogue_controller) { CatalogueController.new(catalogue: catalogue) }

    it "should implement method to get all products to display in view" do
      expect(catalogue_controller).to respond_to :list_products
    end
  end
end
