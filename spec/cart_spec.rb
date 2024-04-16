require_relative '../lib/cart'

RSpec.describe Cart do
  let(:cart) { [] }

  describe '#add_to_cart' do
    it 'adds a product to the cart' do
      Cart.add_to_cart(cart, 'GR1')
      expect(cart).to eq(['GR1'])
    end
  end

  describe '#cart_to_s' do
    it 'formats cart contents correctly' do
      cart = ['GR1', 'SR1', 'SR1', 'CF1']
      formatted_cart = Cart.cart_to_s(cart)
      expect(formatted_cart).to eq('GR1 x1 (0 for free), SR1 x2, CF1 x1')
    end
  end

  describe '#cart_total_price' do
    it 'calculates the total price correctly' do
      cart = ['GR1', 'SR1', 'SR1', 'CF1']
      total_price = Cart.cart_total_price(cart)
      expect(total_price).to eq(24.34)
    end

    it 'applies buy-one-get-one-free offer for Green Tea (GR1)' do
      cart = ['GR1', 'GR1']
      total_price = Cart.cart_total_price(cart)
      expect(total_price).to eq(3.11)
    end

    it 'applies special pricing for Strawberries (SR1)' do
      cart = ['SR1', 'SR1', 'SR1']
      total_price = Cart.cart_total_price(cart)
      expect(total_price).to eq(13.50)
    end

    it 'applies special pricing for Coffee (CF1)' do
      cart = ['CF1', 'CF1', 'CF1']
      total_price = Cart.cart_total_price(cart)
      expect(total_price).to eq(22.46)
    end
  end

end
