require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Adam")
  end

  def test_guest_has_name
    assert_equal("Adam", @guest1.name)
  end

end
