require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Adam", 10)
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

end
