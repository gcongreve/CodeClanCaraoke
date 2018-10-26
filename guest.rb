class Guest

  attr_reader :name

  def initialize(name, cash_amount)
    @name = name
    @cash_amount = cash_amount
  end


  def show_money
    return @cash_amount
  end

  def pays_money(amount)
    @cash_amount -= amount
  end 


end
