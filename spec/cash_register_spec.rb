require_relative '../lib/cash_register'
require_relative '../lib/cart'
require_relative '../lib/product'

RSpec.describe "CashRegister" do
  describe "main functionality" do
    let(:cart) { [] }

    before do
      allow_any_instance_of(Object).to receive(:puts) 
    end

    it "adds product to cart when valid product code is entered" do
      allow_any_instance_of(Object).to receive(:gets).and_return("GR1\n", "\n")
      allow(Product).to receive(:store_items_to_s).and_return("GR1 - Green Tea - $3.11")

      expect(Product).to receive(:product_in_store?).with("GR1").and_return(true)
      expect(Cart).to receive(:add_to_cart).with(cart, "GR1")

      CashRegister.main
    end

    it "displays error message when invalid product code is entered" do
      allow_any_instance_of(Object).to receive(:gets).and_return("XX1\n", "\n")
      allow(Product).to receive(:store_items_to_s).and_return("GR1 - Green Tea - $3.11")

      expect(Product).to receive(:product_in_store?).with("XX1").and_return(false)
      expect_any_instance_of(Object).to receive(:puts).with("We don't have any XX1 in store, sorry!")

      CashRegister.main
    end
  end
end
