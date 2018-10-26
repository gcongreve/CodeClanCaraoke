class Room

  attr_reader :name 

  def initialize(name, guests = [], songs = [])
    @name = name
    @guests_in_room = guests
    @songs_available = songs
  end







end
