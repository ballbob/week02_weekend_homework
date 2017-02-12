class Song_Library
  def initialize(songs)
    @songs = songs
  end

  def search_title(title)
    @songs.select do |song| 
      song.title == title 
    end
  end

  def search_artists(artist)
    @songs.select do |song|
      song.get_song_artist == artist
    end
  end

  def search_genre(genre)
    @songs.select do |song|
      song.get_song_categories == genre
    end
  end
end