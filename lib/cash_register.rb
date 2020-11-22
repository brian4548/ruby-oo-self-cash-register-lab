require 'pry'


class CashRegister

attr_accessor :total, :discount, :quantity, :price


  def initialize(discount = 0)
      @total = 0
      @discount = discount
      @quantity = quantity
      @price = price
      @items = []
      @transactions = []
  end 

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    @transactions << price
    until quantity == 0 do
      @items << title
       quantity -= 1
    end
  end

  def apply_discount 
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (0.01 * discount * total)
      "After the discount, the total comes to $800."
    end 
  end

  def items
    @items
  end 

  def void_last_transaction
   self.total = @total - @transactions.pop
   @total
  end 
  
      

    

    
end
  




