require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../rooms.rb')
require_relative('../songs.rb')

class GuestsTest < MiniTest::Test
  def setup()
    @guest1 = Guest.new("Jimmy", 20, "Wanted Dead Or Alive")
    @room = Room.new("Room 1", 6, 10)
    @song = Song.new("Wanted Dead Or Alive", "Bon Jovi")
  end

  def test_guest_has_name()
    assert_equal("Jimmy", @guest1.name)
  end

  def test_guest_fav_song_in_room()
    @room.add_song(@song)
    assert_equal("Whoo!", @guest1.guest_fav_song_in_room(@room))

  end



end
