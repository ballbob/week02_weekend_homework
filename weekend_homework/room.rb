class Room

  def initialize(guests,songs,space)
    @guests = guests
    @songs = songs
    @space = space
  end

  def show_guests
    return @guests
  end

  def show_songs
    return @songs
  end

  def check_in(newguest)
    @guests << newguest
  end

  def check_out(departing)
    @guests.delete(departing)
  end

  def add_song(newsong)
    @songs << newsong
  end

  def remove_song(song)
    @songs.delete(song)
  end

end