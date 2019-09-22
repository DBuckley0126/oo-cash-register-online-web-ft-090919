require 'pry'
class CashRegister

attr_accessor :total, :discount, :items

def initialize (discount = nil)
 @total = 0
 @discount = discount
 @items = []
end

def add_item (title, price, quanity = 1)
@total += price*quanity
@items << title
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
end

def items
  @items
end

end
