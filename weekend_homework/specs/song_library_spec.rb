require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')
require_relative('../karaoke_machine.rb')
require_relative('../song_library.rb')

class TestSongLibrary < Minitest::Test

  def setup()
    songs = [    
      @throughfire = Song.new('Through Fire and Flames', 'Dragonforce', 'Metal'),
      @blasphemer = Song.new('Blasphemer', 'Sodom', 'Metal'),
      @dontburn = Song.new("Don't Burn the Witch", "Sodom", "Metal"),
      @hello = Song.new("Hello","Adele","Ballad"),
      @itsmyparty = Song.new("It's My Party (And I'll Cry If I Want To", "Lesley Gore", ["60s","Pop"]),
      @memory = Song.new("Memory","Andrew Lloyd Webber","Showtunes"),
      @babyonemoretime = Song.new("Baby One More Time", "Britney Spears", "Pop"),
      @batoutofhell = Song.new("Bat Out Of Hell", "Meat Loaf", ["Rock", "Dad Rock"])
      ]
    @library = Song_Library.new(@songs)
  end

  def test_search_titles
    titleslist = @library.search_titles("Bat Out Of Hell")
    assert_equal(titleslist.count,1)
  end


end