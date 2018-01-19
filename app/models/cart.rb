class Cart
  attr_reader :items

  def initialize(items = [])
    @items = items
  end

  def add_item(organic_id)
    found_item = items.find { |item| item.organic_id == organic_id }

    if found_item
      found_item.increment
    else
      @items << CartItem.new(organic_id)
    end
  end

  def empty?
    items.empty?
  end

  def total_price
    items.reduce(0) { |sum, item| sum + item.price }
  end

  def serialize
    all_items = items.map { |item|
      { "organic_id" => item.organic_id, "quantity" => item.quantity}
    }

    { "items" => all_items }
  end

  def self.from_hash(hash)
    if hash.nil?
      new []
    else
      new hash["items"].map { |item_hash|
        CartItem.new(item_hash["organic_id"], item_hash["quantity"])
      }
    end
  end
end
