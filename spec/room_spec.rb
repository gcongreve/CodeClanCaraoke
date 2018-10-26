require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < MiniTest::Test

  def setup
    @song_a = Song.new("Alright")
    @song_b = Song.new("B side")
    @songs = [@song_a, @song_b]

    @guest_a = Guest.new("Alf")
    @guest_b = Guest.new("Bert")

    @room1 = Room.new("Caraoke Room 1", @songs)
  end

  def test_room_has_name
    assert_equal("Caraoke Room 1", @room1.name)
  end

  def test_room_has_songs
    assert_equal(@songs, @room1.songs_available)
  end

  def test_room_can_take_guest
    expected = [@guest_a]
    @room1.add_guest(@guest_a)
    actual = @room1.guests_in_room
    assert_equal(expected, actual)
  end



end
