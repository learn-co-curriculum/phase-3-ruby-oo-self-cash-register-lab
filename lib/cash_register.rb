
class CashRegister
    attr_accessor :items, :total, :discount, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end



    def add_item(title, amount, quantity = 1)
      self.last_transaction = amount * quantity
      self.total += self.last_transaction
      quantity.times do
        self.items << title
     end
   end



   def apply_discount
        if self.discount != 0
            discount_as_percent = (100.0 - self.discount.to_f) / 100
            self.total = (self.total * discount_as_percent).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
   end

   def void_last_transaction
     self.total -=  self.last_transaction

   endclass Car

  attr_accessor :name, :owner

  def initialize(name)
    @name = name
  end

  def honk
    "Beep!"
  end

  def take_ownership(owner_name)
    self.owner = owner_name
  end

end

lancelot = Car.new("2003 Mitsubishi Lancer")~




end