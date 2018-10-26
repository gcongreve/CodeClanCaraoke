class Room

  attr_reader :name, :songs_available, :guests_in_room

  def initialize(name, songs = [], guests = [])
    @name = name
    @songs_available = songs
    @guests_in_room = guests
    @max_guests_in_room = 3
    @entry_fee = 5
  end

  def add_guest(guest)
    if @guests_in_room.length < @max_guests_in_room
      @guests_in_room.push(guest)
    end
  end

  def remove_guest(guest)
    @guests_in_room.delete(guest)
  end

  def add_song(song)
    @songs_available.push(song)
  end




end
