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
    @total = @total*(@discount*0.01)
  end
end