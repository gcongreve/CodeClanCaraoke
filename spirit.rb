class Spirit

  attr_reader :name, :price, :shots_in_bottle

  def initialize(name, price_per_shot, alcohol_units_per_shot)
    @name = name
    @price = price_per_shot
    @alcohol_units = alcohol_units_per_shot
    @shots_in_bottle = 2 #size of bottle
  end

  def pour_shot
    if @shots_in_bottle > 0
      @shots_in_bottle -= 1
    end
  end

end
