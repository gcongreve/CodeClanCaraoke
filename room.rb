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





end
