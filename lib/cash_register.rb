require 'pry'

class CashRegister 
  attr_reader :discount
  attr_accessor :total, :items, :items_with_prices
  
  def initialize(discount=0) 
    @discount = discount 
    @total = 0
    @items = []
    @items_with_prices = []
  end

  def add_item(title, price, quantity=1) 
    self.total += price * quantity 
    quantity.times { self.items << title } 
    self.items_with_prices << {title: title, price: price, quantity: quantity}
  end

  def apply_discount 
    if discount != 0 
      amount_off = discount * @total / 100 
      self.total -= amount_off 
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end

  def void_last_transaction 
    self.total -= @items_with_prices[-1][:price] * @items_with_prices[-1][:quantity]
  end
end 
