class CashRegister

  attr_accessor :items, :last_transaction_amount, :discount, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amount = 0
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction_amount = amount * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= last_transaction_amount
  end
end