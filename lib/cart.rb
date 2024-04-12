class Cart

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

end
