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
        newguest.guest_pays(@fee)
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

  def play_song(guest,song)
    return "Here's #{guest.show_guest_name} with '#{song.get_song_name}' by #{song.get_song_artist}!"
  end

end