require 'pry'
class CashRegister

  attr_accessor :discount, :total

  def initialize(discount=nil)
    @discount = discount
    @total = 0
  end

  def add_item(item, price, amount=1)
    # binding.pry
    self.total += price * amount
  end

  def apply_discount
    # binding.pry
    if discount > 0 && total
      self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
    else
      self.total
    end
  end
end