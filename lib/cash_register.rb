require 'pry'

class CashRegister
 attr_accessor :discount, :total

  def initialize(discount = 0)
    @discount = discount
    @transactions = []
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    @transactions << {title: title, price: price, quantity: quantity}
    total_transactions
  end

  def total_transactions
    self.total = @transactions.sum(0) {|transaction| transaction[:price] * transaction[:quantity]}
  end

  def apply_discount
    if @discount > 0
      @total *= ((100 - @discount)/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @transactions.flat_map { |transaction| [transaction[:title]] * transaction[:quantity] }
  end

  def void_last_transaction
    @transactions.pop
    total_transactions
  end
end
