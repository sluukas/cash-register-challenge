class Product
  def self.store_items
    # Define store items with product codes and prices
    store = {
      'GR1' => { name: 'Green Tea', price: 3.11 },
      'SR1' => { name: 'Strawberries', price: 5.00 },
      'CF1' => { name: 'Coffee', price: 11.23 }
    }

    return store
  end

  def self.product_in_store?(product)
    store_items.key?(product.upcase)
  end

  def self.store_items_to_s
    items = []

    items << "| Product Code | Name | Price |"
    items << "|--------------|------|-------|"

    store_items.each do |product_code, product_info|
      name = product_info[:name]
      price = "#{product_info[:price]}€"
      items << "| #{product_code} | #{name} | #{price} |"
    end

    items.join("\n")
  end
end
