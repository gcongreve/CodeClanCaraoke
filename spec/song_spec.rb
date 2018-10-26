require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Hello")
  end

  def test_song_has_title
    assert_equal("Hello", @song1.title)
  end


end
