require_relative 'spec_helper'
require_relative '../lib/controllers/catalogue_controller'

describe CatalogueController do
  let(:catalogue) { Catalogue.new(@catalogue_file) }

  describe "#initialize" do
    let(:catalogue_controller) { CatalogueController.new(catalogue: catalogue) }

    it "should store catalogue in an instance variable" do
      expect(catalogue_controller
        .instance_variable_get(:@catalogue))
        .to be_a Catalogue
    end
  end

  context "when catalogue & controller has been initialized" do
    let(:catalogue_controller) { CatalogueController.new(catalogue: catalogue) }
    let(:catalogue_view) { catalogue_controller.catalogue_view }

    before do
      allow(catalogue_view).to receive_messages(display_products: nil, display_product: nil, ask_user_for_index: nil)
    end

    describe ".show" do
      it "should show the individual product details" do
        catalogue_controller.show(2)
        expect(catalogue_controller.product["uuid"]).to eq 23881
      end
    end

    describe ".list_products" do
      it "should list all product names" do
        catalogue_controller.list_products
        expect(catalogue_controller.products.count).to eq 4
      end
    end
  end
end
