
class CashRegister

  attr_accessor :total, :discount, :items, :last_item_transaction
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.last_item_transaction = price * quantity
    self.total += self.last_item_transaction
    quantity.times do
      self.items << title
    end
  end
  # Calculating the discount
  def apply_discount
    if self.discount != 0
      discount_percentage = (100 - self.discount.to_f) / 100
      self.total = (discount_percentage * self.total).to_i
      "After the discount, the total comes to $#{self.total}."
    else 
     "There is no discount to apply."
    end
  end
#removing the last transaction form the total
  def void_last_transaction
    self.total -= self.last_item_transaction
  end
end