require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Caraoke Room 1")
  end

  def test_room_has_name
    assert_equal("Caraoke Room 1", @room1.name)
  end







end
