
class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount=nil)
    @items = []
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    if quantity > 1
      i = 0
      while i < quantity
        @items << title
        i += 1
      end
    else
      @items << title
    end
      @total += price * quantity
      
      @last_amount = @total
      # @total  
  end
  
  def apply_discount
    if @discount 
      @discount = @discount/100.to_f
      @total -= @total * @discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_amount
  end
  
end