class Room

  attr_reader :name, :playlist, :guests_in_room

  def initialize(name, songs = [], guests = [])
    @name = name
    @playlist = songs
    @guests_in_room = guests
    @max_guests_in_room = 3
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

  def show_till
    return @till
  end

  def guest_pays(guest)
    guest.pays_money(@entry_fee)
    @till += @entry_fee
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

  # def guest_reacts_to_song(guest)
  #   if @playlist.include?(guest.fav_song)
  #     guest.react_to_song
  #   end
  # end



end
