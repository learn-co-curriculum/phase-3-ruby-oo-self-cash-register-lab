require 'pry'

class CashRegister
  attr_reader :discount
  attr_accessor :total, :purchased_items, :last_transaction

  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @purchased_items = []
    @last_transaction = nil
  end

  def add_item(title, price, quantity = 1)
    quantity.times { purchased_items << title }
    self.last_transaction = (price * quantity)
    self.total += last_transaction
  end

  def apply_discount
    return 'There is no discount to apply.' if discount.nil?

    discount_rate = discount.to_f / 100
    self.total *= (1 - discount_rate)
    "After the discount, the total comes to $#{total.to_i}."
  end

  def items
    purchased_items
  end

  def void_last_transaction
    self.total -= last_transaction
  end
end
