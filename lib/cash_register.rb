class CashRegister 
  attr_reader :discount
  attr_accessor :total, :items
  
  def initialize(discount=0) 
    @discount = discount 
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity=1) 
    self.total += price * quantity 
    quantity.times { self.items << title }
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
end
