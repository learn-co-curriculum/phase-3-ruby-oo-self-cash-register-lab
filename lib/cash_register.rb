class CashRegister
  attr_accessor :total

  def initialize(discount = 0, total = 0)
    @discount = discount
    @total = total
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity

    
  end

end
