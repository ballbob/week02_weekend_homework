require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < Minitest::Test

  def setup()
    @totaleclipse = Song.new("Total Eclipse of the Heart", "Bonnie Tyler", ["ballad","80s"])
  end

  def test_get_song_name
  assert_equal(@totaleclipse.get_song_name, "Total Eclipse of the Heart")
  end

  def test_get_song_artist
    assert_equal(@totaleclipse.get_song_artist, "Bonnie Tyler")
  end

  def test_get_song_categories
    assert_equal(@totaleclipse.get_song_categories, ["ballad","80s"])
  end


end