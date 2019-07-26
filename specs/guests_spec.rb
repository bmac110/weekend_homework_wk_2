require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')

class GuestsTest < MiniTest::Test
  def setup()
    @guest1 = Guest.new("Jimmy", 20, "Desert Rose")

  end

  def test_guest_has_name()
    assert_equal("Jimmy", @guest1.name)
  end

end
