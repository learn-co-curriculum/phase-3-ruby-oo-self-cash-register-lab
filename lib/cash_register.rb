class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times {items << title}
    end

    def apply_discount
        if discount > 0
            self.total -= total * discount / 100.0
            "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        last_item_price = total_items_prices.pop
        self.total -= last_item_price
    end

    private 

    def total_items_prices
        items.map {|item| total_items_prices[item]}
    end

    def item_prices
        {
            "eggs" => 0.98,
            "book" => 5.00,
            "Lucky Charms" => 4.5,
            "Ritz Crackers" => 5.0,
            "macbook air" => 1000,
            "apple" => 0.99,
            "tomato" => 1.76
        }
    end
end
