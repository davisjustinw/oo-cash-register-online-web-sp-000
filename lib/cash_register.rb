require 'pry'
class CashRegister
  attr_accessor :discount, :total
  @items = []
  @last_item = nil
  def initialize(discount = nil)
    @total = 0.0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @items << title
    #@last_item = price * quantity
    @total += price * quantity
  end
  
  def apply_discount
    if @discount
      @total = @total - (@total * @discount / 100.00)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    items
  end
  
end
