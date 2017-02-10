class Song
  def initialize(title,artist,categories)
    @title = title
    @artist = artist
    @categories = categories
  end

  def get_song_name
    return @title
  end

  def get_song_artist
    return @artist
  end

  def get_song_categories
    return @categories
  end

end