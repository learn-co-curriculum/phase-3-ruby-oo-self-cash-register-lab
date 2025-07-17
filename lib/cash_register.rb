class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction
  
  def initialize(discount = 0, total = 0, items = [], last_transaction = 0)
    @discount = discount
    @total = total
    @items = items
    @last_transaction = last_transaction
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times {self.items << title}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount > 0
      self.total = (total * (1 - discount.to_f / 100)).round
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
