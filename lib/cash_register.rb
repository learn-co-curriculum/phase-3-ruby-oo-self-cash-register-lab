class CashRegister

  attr_accessor :discount, :items, :total, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    quantity.times {self.items << title}
    cost_items = price * quantity
    self.total += cost_items
    self.last_transaction = cost_items
  end

  def apply_discount
    if self.discount == 0
     "There is no discount to apply."
    else
      discount_percentage = (self.discount.to_f / 100.0)
      self.total = (self.total * (1 - discount_percentage)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
