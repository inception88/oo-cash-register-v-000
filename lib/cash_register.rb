class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, cost, quantity=1)
    @total += (cost*quantity)
    @items = {item => cost}
  end
  
  def apply_discount
    discount = @total*(@discount*0.01)
    @total -= discount
    message = "After the discount, the total comes to $#{@total}."
  end
end