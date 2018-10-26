require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < MiniTest::Test

  def setup
    @song_a = Song.new("Alright")
    @song_b = Song.new("B side")
    @song_c = Song.new("Captain")
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

  def test_room_can_take_in_guest
    expected = [@guest_a]
    @room1.add_guest(@guest_a)
    actual = @room1.guests_in_room
    assert_equal(expected, actual)
  end

  def test_room_can_remove_guest
    @room1.add_guest(@guest_a)
    assert_equal(1, @room1.guests_in_room.length)
    @room1.remove_guest(@guest_a)
    assert_equal(0, @room1.guests_in_room.length)
  end

  def test_room_can_take_additonal_songs
    expected = true
    @room1.add_song(@song_2)
    actual = @room1.songs_available.include?("Captain")
  end


end
