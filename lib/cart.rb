require_relative 'product'

class Cart
  def self.add_to_cart(cart, product)
    cart << product
  end

  def self.cart_to_s(cart)
    formatted_items = []

    counts = Hash.new(0)
    cart.each { |item| counts[item] += 1 }

    counts.each do |item, quantity|
      if item == 'GR1'
        formatted_items << "#{item} x#{quantity} (#{quantity / 2} for free)"
      else
        formatted_items << "#{item} x#{quantity}"
      end
    end

    formatted_items.join(', ')
  end

  def self.cart_total_price(cart)
    total = 0
    green_tea_count = cart.count('GR1')

    cart.each do |cart_item|
      item_price = Product.store_items[cart_item][:price]

      # Applying buy-one-get-one-free offer for green tea
      if cart_item == 'GR1'
        green_tea_count -= 1
        next if green_tea_count.odd?
      end

      # Applying special pricing rules for strawberries and coffee
      if cart_item == 'SR1' && cart.count(cart_item) >= 3
        item_price = 4.50
      elsif cart_item == 'CF1' && cart.count(cart_item) >= 3
        item_price = Product.store_items[cart_item][:price] * 2 / 3
      end

      total += item_price
    end

    total
  end
end
