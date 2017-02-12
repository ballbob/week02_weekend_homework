class Song_Library
  def initialize(songs)
    @songs = []
  end

  def search_title(title)
    songsoftitle = @songs.select |song| { 
      song.get_song_name == title 
    }
    return songsoftitle
  end
end