require_relative '../lib/product'


RSpec.describe Product do
  describe "#product_in_store?" do
    it "returns true if product is in store" do
      expect(Product.product_in_store?('GR1')).to eq(true)
    end

    it "returns false if product is not in store" do
      expect(Product.product_in_store?('XX1')).to eq(false)
    end
  end

  describe "#store_items_to_s" do
    it "returns a string representation of store items" do
    end
  end
end
