class Room

  attr_reader :name, :playlist, :guests_in_room

  def initialize(name, songs = [], drinks = [], guests = [])
    @name = name
    @playlist = songs
    @guests_in_room = guests
    @max_guests_in_room = 3
    @max_drunk_limit = 4
    @entry_fee = 5
    @till = 0
    @currently_playing = @playlist.sample
  end

  def room_has_space?
    @guests_in_room.length < @max_guests_in_room
  end

  def guest_can_afford?(guest)
    @entry_fee < guest.show_money
  end

  def guest_can_afford_drink?(guest, drink)
    drink.price < guest.show_money
  end

  def show_till
    return @till
  end

  def guest_pays(guest)
    guest.pays_money(@entry_fee)
    @till += @entry_fee
  end

  def guest_pays_drink(guest, drink)
    guest.pays_money(drink.price)
    @till += drink.price
  end


  def add_guest(guest)
    if room_has_space? && guest_can_afford?(guest)
      guest_pays(guest)
      @guests_in_room.push(guest)
    end
  end

  def remove_guest(guest)
    @guests_in_room.delete(guest)
  end

  def add_song(song)
    @playlist.push(song)
  end

  def guest_reacts_to_playlist(guest)
    if @playlist.include?(guest.fav_song)
      return "They have #{guest.react_to_song}"
    end
  end

  def guest_reacts_to_current_song(guest)
    if @currently_playing == guest.fav_song
      return "This is #{guest.react_to_song}"
    end
  end

  def guest_buys_drink(guest, drink)
    if guest_can_afford_drink?(guest, drink)
      guest_pays_drink(guest, drink)
      drink.pour_shot
      guest.drinks(drink)
    end
  end



end
