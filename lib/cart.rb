
  def add_to_cart(cart, product)
    cart << product
  end


  def cart_to_s(cart)
    formatted_items = cart.uniq.map do |item|
      quantity = cart.count(item)
      "#{item}#{quantity > 1 ? " x#{quantity}" : ""}"
    end

    formatted_items.join(', ')
  end


  def cart_total_price(cart)
    total = 0
    cart.each do |cart_item|
      total += store_items[cart_item][:price] if store_items.key?(cart_item)
    end
    total
  end
