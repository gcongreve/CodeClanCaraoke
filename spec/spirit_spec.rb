require('minitest/autorun')
require('minitest/rg')
require_relative('../spirit.rb')

class SpritTest < MiniTest::Test


  def setup
    @spirit = Spirit.new("Vodka", 2, 1.5)
  end

  def test_spirit_has_name
    assert_equal("Vodka", @spirit.name)
  end

  def test_spirit_has_price
    assert_equal(2, @spirit.price)
  end

  def test_spirit_can_be_poured
    @spirit.pour_shot
    assert_equal(1, @spirit.shots_in_bottle)
  end








end
