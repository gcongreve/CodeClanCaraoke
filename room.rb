class Room

  attr_reader :name, :songs_available, :guests_in_room

  def initialize(name, songs = [], guests = [])
    @name = name
    @songs_available = songs
    @guests_in_room = guests
  end

  def add_guest(guest)
    @guests_in_room.push(guest)
  end

  def remove_guest(guest)
    @guests_in_room.delete(guest)
  end

  def add_song(song)
    @songs_available.push(song)
  end




end
