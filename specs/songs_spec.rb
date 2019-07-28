require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class SongsTest < MiniTest::Test
  def setup()
    @song1 = Song.new("Firestarter", "The Prodigy")

  end

  def test_song_has_name()
    assert_equal("Firestarter", @song1.name)
  end

end
