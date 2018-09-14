class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, cost, quantity=1)
    @total += (cost*quantity)
    @hash = {item => cost}
  end
  
  def apply_discount
    discount_cost = cost*(@discount*0.01)
  end
end