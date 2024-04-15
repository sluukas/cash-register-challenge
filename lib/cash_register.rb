require_relative 'product'
require_relative 'cart'

class CashRegister
  def self.main
    cart = []

    puts "Welcome to our shop!\nHere are the available products:"
    puts Product.store_items_to_s

    loop do
      # ask which product to buy
      puts "What would you like to buy?\nPlease enter product code | To proceed to checkout, click enter"
      product = gets.chomp.upcase

      # break loop if product is empty
      break if product == ''

      if Product.product_in_store?(product)
        Cart.add_to_cart(cart, product)  # Corrected to use method from Cart module
      else
        # otherwise show error
        puts "We don't have any #{product} in store, sorry!"
      end
    end

    # Display content of basket & total price
    puts 'Here is your order:'
    puts Cart.cart_to_s(cart)  # Corrected to use method from Cart module

    total = Cart.cart_total_price(cart)  # Corrected to use method from Cart module
    puts "Total price: #{total}€"
  end
end

# Call the main method if this file is executed directly
CashRegister.main if __FILE__ == $0
