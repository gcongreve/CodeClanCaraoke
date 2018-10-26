class Guest

  attr_reader :name, :fav_song

  def initialize(name, cash_amount, fav_song = "")
    @name = name
    @cash_amount = cash_amount
    @fav_song = fav_song
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

  # def react_to_song(song)
  #   if @fav_song == song
  #     return "I moderately enjoy this song"
  #   end
  # end

  def react_to_song
    return "my favourite song"
  end


end
