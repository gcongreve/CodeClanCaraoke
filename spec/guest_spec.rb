require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../song')

class GuestTest < MiniTest::Test

  def setup
    @song = Song.new("Frog Chorus")
    @song2 = Song.new("Song 2")

    @guest1 = Guest.new("Adam", 10, @song)
    @guest2 = Guest.new("Bob", 5)
  end

  def test_guest_has_name
    assert_equal("Adam", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(10, @guest1.show_money)
  end

  def test_guest_can_pay_money
    @guest1.pays_money(5)
    assert_equal(5, @guest1.show_money)
  end

  def test_guest_can_have_fav_song
    @guest2.set_favourite_song(@song)
    assert_equal(@song, @guest2.fav_song)
  end

  def test_guest_react_to_favourite_song__fav_song
    expected = "I moderately enjoy this song"
    actual = @guest1.react_to_song(@song)
    assert_equal(expected, actual)
  end


end
