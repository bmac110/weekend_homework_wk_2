class Guest

  attr_reader :name, :cash, :fav_song

  def initialize(name, cash, fav_song)
    @name = name
    @cash = cash
    @fav_song = fav_song

  end

  def guest_fav_song_in_room(room)
    for song in room.songs
      if song.name == @fav_song
        return "Whoo!"
      end
    end
  end



end
