class CartItem
  attr_reader :organic_id, :quantity

  def initialize(organic_id, quantity = 1)
    @organic_id = organic_id
    @quantity = quantity
  end

  def increment(n = 1)
    @quantity += n
  end

  def organic
    Organic.find_by(id: organic_id)
  end

  def price
    organic.price * quantity
  end
end
