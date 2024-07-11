require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize discount = 0
    @discount = discount
    @total = 0
    @items = []
    @last_transaction = 0
  end

  def add_item item, price, quantity = 1
    self.last_transaction = price
    self.total += price * quantity
    self.items += [item] * quantity
  end

  def apply_discount
    if self.discount > 0
      self.total -= self.total * self.discount / 100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
    self.items = self.items.uniq
    self.items.pop
    if self.items == []
      self.total = 0
    end
  end
end
