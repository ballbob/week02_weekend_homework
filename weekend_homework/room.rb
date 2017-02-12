class Room

  def initialize(guests,songs)
    @guests = guests
    @songs = songs
  end

  def show_guests
    return @guests
  end

  def show_songs
    return @songs
  end

end