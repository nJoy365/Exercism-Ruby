class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    return items.map { |item| item[:name]}
  end

  def cheap
    return items.select {|item| item[:price] < 30}
  end

  def out_of_stock
    return items.select { |item| item[:quantity_by_size].length == 0 }
  end

  def stock_for_item(name)
    return items.select { |item| item[:name] == name }[0][:quantity_by_size]
  end

  def total_stock
    return items.map { |item| item[:quantity_by_size].values.sum }.sum
  end

  private
  attr_reader :items
end
