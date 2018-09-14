class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, cost, quantity=1)
    @total += (cost*quantity)
  end
  
end