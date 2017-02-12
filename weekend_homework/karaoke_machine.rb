class Karaoke_Machine

def initialize(songs)
  @songs = songs
end

def add_song(newsong)
  @songs << newsong
end

def remove_song(song)
  @songs.delete(song)
end

def show_songs
  return @songs
end

def play_song(guest,song)
  return "Here's #{guest.show_guest_name} with '#{song.get_song_name}' by #{song.get_song_artist}!"
end

end

