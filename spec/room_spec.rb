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

    @guest_a = Guest.new("Alf", 10)
    @guest_b = Guest.new("Bert", 10)
    @guest_c = Guest.new("Charles", 10)
    @guest_d = Guest.new("Donald", 10)
    @guest_e = Guest.new("Ernest", 4)
    @guests = [@guest_a, @guest_b]

    @room1 = Room.new("Caraoke Room 1", @songs)
    @room2 = Room.new("Caraoke Room 2", @songs, @guests)
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
    @room1.add_song(@song_c)
    actual = @room1.songs_available.include?(@song_c)
    assert_equal(expected, actual)
  end

  def test_maximum_room_capacity
    @room2.add_guest(@guest_c)
    assert_equal(3, @room2.guests_in_room.length)
    @room2.add_guest(@guest_d)
    assert_equal(3, @room2.guests_in_room.length)
  end

  def test_guest_can_afford_entry_fee__true
    expected = true
    actual = @room1.guest_can_afford?(@guest_a)
    assert_equal(expected, actual)
  end

  def test_guest_can_afford_entry_fee__false
    expected = false
    actual = @room1.guest_can_afford?(@guest_e)
    assert_equal(expected, actual)
  end

  def test_till_can_take_money
    @room1.guest_pays(@guest_a)
    assert_equal(5, @room1.show_till)
  end

end


# def test_guest_pays_entry_fee__enough_money
#
# end
#
# def test_guest_pays_entry_fee__insufficient_money
#
# end
