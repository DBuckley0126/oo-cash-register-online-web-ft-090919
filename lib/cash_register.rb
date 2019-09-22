require 'pry'
class CashRegister

attr_accessor :total, :discount, :items, :last_void

def initialize (discount = nil)
 @total = 0
 @discount = discount
 @items = []
 @last_void = 0
end

def add_item (title, price, quanity = 1)
@total += price*quanity

quanity.times do
  @items << title
end
@last_void = price
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

def void_last_transaction
  @items.pop
  if @items.count = 0
    @total = 0
  else
    @total = @total - @last_void
  end
end

end
