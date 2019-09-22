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
  percentage = @discount.to_f/100.
  @total = @total*percentage
  binding.pry
end


end
