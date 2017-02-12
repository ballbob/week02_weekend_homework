class Room

  def initialize(guests,songs,space,fee)
    @guests = guests
    @songs = songs
    @space = space
    @fee = fee
  end

  def show_guests
    return @guests
  end

  def show_songs
    return @songs
  end

  def check_in(newguest)
    if newguest.show_guest_money >= @fee
      if @guests.count <= (@space - 1)
        @guests << newguest
        else
          return "Room full"
      end
    end
    return "Insufficient funds."
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

  def show_space
    return @space
  end

end