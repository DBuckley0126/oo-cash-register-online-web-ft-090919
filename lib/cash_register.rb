require 'pry'
class CashRegister

attr_accessor :total, :discount

def initialize (discount = nil)
 @total = 0
 @discount = discount
end

def add_item (title, price, quanity = 1)
@total += price*quanity
end

def apply_discount
  percentage = @discount.to_f/100
  discount_amount = @total*percentage
  @total = @total - discount_amount
  if @discount
  "After the discount, the total comes to $#{@total.to_i}."
else
  "There is no discount to apply."
end
  #binding.pry
end


end
