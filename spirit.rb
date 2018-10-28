class Spirit

  attr_reader :name, :price, :alcohol_units, :shots_in_bottle

  def initialize(name, price_per_shot, alcohol_units_per_shot)
    @name = name
    @price = price_per_shot
    @alcohol_units = alcohol_units_per_shot
    @shots_in_bottle = 2 #size of bottle
  end

  def bottle_empty?
    @shots_in_bottle == 0
  end

  def pour_shot
    if !bottle_empty?
      @shots_in_bottle -= 1
    end
  end

end
