require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

class RoomTest < MiniTest::Test
  def setup()
    @room = Room.new("Room 1", 6, 10)
    @guest = Guest.new("Jimmy", 20, "Desert Rose")
    @song = Song.new("Desert Rose")

    @songs = [@song]

    @rooms = [@room1]

  end

  def test_room_has_name()
    assert_equal("Room 1", @room.name)
  end

  def test_guest_count()
    assert_equal(0, @room.guest_count())
  end

  def test_guest_check_in()
    @room.guest_check_in(@guest)
    assert_equal(1, @room.guest_count())
  end

  def test_guest_check_out()
    @room.guest_check_out(@guest)
    assert_equal(0, @room.guest_count())
  end

  def test_song_count()
    assert_equal(0, @room.song_count())
  end

  def test_add_song()
    @room.add_song(@song)
    assert_equal(1, @room.song_count())
  end

  def test_free_space()
    assert_equal(true, @room.free_space)
  end

  def test_check_guest_cash()
    assert_equal(20, @room.check_guest_cash(@guest))
  end

  def test_guest_can_afford()
    assert_equal(true, @room.guest_can_afford(@guest))
  end

end
