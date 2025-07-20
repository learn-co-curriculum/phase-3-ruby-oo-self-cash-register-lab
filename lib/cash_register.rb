require 'pry'

class CashRegister
  attr_reader :discount, :items
  attr_accessor :total 
  def initialize(discount=0)
    @discount = discount
    @total = 0 
    @items = []
  end

  def add_item(title, price, quantity=1)
    amount = price * quantity        # calculate amount first
    @total += amount
    @last_transaction_amount = amount
    quantity.times { @items << title }
  end

  def apply_discount
    if discount > 0
     @total -= (total * discount / 100.0)
     "After the discount, the total comes to $#{@total.to_i}."
    else
     "There is no discount to apply."
    end

  end
    def void_last_transaction
      @total -= @last_transaction_amount
end 
end 


my_wallet = CashRegister.new(20)
my_wallet.total = 100
