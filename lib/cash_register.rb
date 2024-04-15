require_relative 'product'
require_relative 'cart'

cart = []

puts "Welcom to our shop!\nHere are the available products:"
puts store_items_to_s

# loop forever
loop do
  # ask which product to buy
  puts "What would you like to buy?\nPlease enter product code | To proceed to checkout, click enter"
  product = gets.chomp.upcase

  # break loop if product is empty
  break if product == ''


  if product_in_store?(product)
    add_to_cart(cart, product)
  else
    # otherwise show error
    puts "We don't have any #{product} in store, sorry!"
  end
end

# Display content of basket & total price
puts 'Here is your order:'

puts cart_to_s(cart)

total = cart_total_price(cart)
puts "Total price: #{total}€"
