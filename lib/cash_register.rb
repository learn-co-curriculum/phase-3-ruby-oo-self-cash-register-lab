
class CashRegister
  attr_accessor :discount, :total, :items, :last_item

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times { @items.push(title) }
    @total += price * quantity
    @last_item = price * quantity
  end

  def apply_discount
    if @discount
      @total = @total * (1 - @discount / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    if @total - @last_item > 0
      @total -= @last_item
    else
      @total = 0
    end 
  end
end
