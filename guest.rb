class Guest

  attr_reader :name, :fav_song

  def initialize(name, cash_amount, fav_song = "")
    @name = name
    @cash_amount = cash_amount
    @fav_song = fav_song
    @drunk_level = 0
  end

  def show_money
    return @cash_amount
  end

  def pays_money(amount)
    @cash_amount -= amount
  end

  def set_favourite_song(song)
    @fav_song = song
  end

  def react_to_song
    return "my favourite song"
  end

  def drunk_test
    return @drunk_level
  end

  def drinks(drink)
    @drunk_level += drink.alcohol_units
  end 

end
