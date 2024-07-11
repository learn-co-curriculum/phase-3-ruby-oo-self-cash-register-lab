class CashRegister
  attr_accessor :discount, :total, :items

  def initialize(discount = nil, total = 0, items = [] )
    @discount = discount
    @total = total
    @items = items
    @last_transaction = {title: nil, price: 0, quantity: 0}
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times { @items << title }
    @last_transaction = {title: title, price: price, quantity: quantity}
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total -= (@total * @discount / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction[:price] * @last_transaction[:quantity]
  end
end
