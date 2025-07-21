class CashRegister
  attr_accessor :total

  def initialize(discount = 0, total = 0)
    @discount = discount
    @total = total
  end

  def discount
    @discount
  end
end
