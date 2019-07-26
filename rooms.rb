class Room

  attr_reader :name, :max_occupancy

  def initialize(name, max_occupancy, entry_fee)
    @name = name
    @max_occupancy = max_occupancy
    @entry_fee = entry_fee
    @occupants = []
    @songs = []

  end

  def guest_count()
    @occupants.count()
  end

  def guest_check_in(guest)
    @occupants << guest
  end

  def guest_check_out(guest)
    @occupants.delete(guest)
  end

  def song_count()
    @songs.count()
  end

  def add_song(song)
    @songs << song
  end

  def free_space()
    if guest_count() > @max_occupancy
      return false
    else
      return true
    end
  end

  def check_guest_cash(guest)
    return guest.cash
  end

  def guest_can_afford(guest)
    if guest.cash >= @entry_fee
      return true
    else
      return false
    end
  end




end
