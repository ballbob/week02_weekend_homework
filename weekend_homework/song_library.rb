class Song_Library
  def initialize(songs)
    @songs = songs
  end

  def search_title(title)
    @songs.select do |song| 
      song.title == title 
    end
  end
end