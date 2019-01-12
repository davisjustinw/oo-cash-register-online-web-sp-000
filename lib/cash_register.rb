require 'pry'
class CashRegister
  attr_accessor :discount, :total
  
  def initialize(discount = nil)
    @total = 0.0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if @discount
      binding.pry
      @total = @total * @discount
      return "After the discount, the total comes to #{@discount}."
    else
      return "There is no discount to apply."
    end
  end
end
