require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Adam", 10)
  end

  def test_guest_has_name
    assert_equal("Adam", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(10, @guest1.show_money)
  end

end
