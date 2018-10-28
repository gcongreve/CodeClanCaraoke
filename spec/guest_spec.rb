require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../song')
require_relative('../spirit')

class GuestTest < MiniTest::Test

  def setup
    @whisky = Spirit.new("Teachers", 5, 2.5)

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

  def test_guest_can_drink_spirit
    assert_equal(0, @guest2.drunk_test)
    @guest2.drinks(@whisky)
    assert_equal(2.5, @guest2.drunk_test)
  end


end
