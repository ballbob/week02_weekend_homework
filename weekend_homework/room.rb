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

  def check_in(newguest)
    @guests << newguest
  end

end