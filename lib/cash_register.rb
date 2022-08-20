class CashRegister
    attr_accessor :total, :receipt
    attr_reader :discount
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @receipt = []
    end
  
    def add_item(title, price, quantity = 1)
      @total += price * quantity
      quantity.times { @receipt.push({ title: title, price: price, quantity: quantity }) }
    end
  
    def apply_discount
      if @discount > 0
        savings = @total * @discount / 100
        @total -= savings
        "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
      end
    end
  
    def items
      @receipt.map { |item| item[:title] }
    end
  
    def void_last_transaction
      las_transaction = receipt.pop
      @total -= las_transaction[:price] * las_transaction[:quantity]
    end
  end
  