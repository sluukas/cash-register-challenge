class Product
  attr_reader :code, :name, :price, :discount

  def initialize(code, name, price, discount = nil)
    @code = code
    @name = name
    @price = price
    @discount = discount
  end
end
