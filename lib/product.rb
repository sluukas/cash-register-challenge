class Product
  def store_items
    # Define store items with product codes and prices
    store = {
      'GR1' => { name: 'Green Tea', price: 3.11 },
      'SR1' => { name: 'Strawberries', price: 5.00 },
      'CF1' => { name: 'Coffee', price: 11.23 }
    }

    return store
  end

#   # Get product information using product code
# product_code = 'GR1'
# product_info = store_items[product_code]
# puts "Product name: #{product_info[:name]}"
# puts "Product price: #{product_info[:price]}€"


end
