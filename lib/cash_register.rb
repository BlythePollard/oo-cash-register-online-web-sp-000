require 'pry'
class CashRegister
  
  attr_accessor :title, :price, :discount, :total, :items
  
  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    new_item = @total += price * quantity
    @items << title * quantity
  end
  
  def apply_discount
    if discount > 0
    self.total = total - (total * (discount.to_f/100.0)).to_i
      "After the discount, the total comes to $#{self.total}."
    else   
      "There is no discount to apply."
    end
   #why self.total rather than @total???
   #why are we getting 816 (due to floats?)
  end

 def items
    @items
  end

end
