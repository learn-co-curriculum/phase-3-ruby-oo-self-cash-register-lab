class CashRegister
     attr_accessor :total, :discount, :price

    def initialize (discount= 0)
        @total = 0
        @discount = discount
    end
    def add_item(title,price, quantity=1)
        self.total += (price * quantity)
        count = 0
        while count < quantity
            self.items.push(title)
            count += 1
        end
        self.price = price * quantity
    end
end
