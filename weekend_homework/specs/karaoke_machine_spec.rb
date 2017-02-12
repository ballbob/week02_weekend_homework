require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')
require_relative('../guest.rb')
require_relative('../karaoke_machine.rb')

class TestKaraokeMachine < Minitest::Test 

  def setup()
    @guest1 = Guest.new("Simon","Forget Me Nots",20)
    @songs = [
    @song1 = Song.new("It's My Party (And I'll Cry If I Want To", "Lesley Gore", ["60s","Pop"])
    ]
    @song2 = Song.new("Memory","Andrew Lloyd Webber","Showtunes")
    @karaoke_machine1 = Karaoke_Machine.new(@songs)
  end

  def test_add_song
    @karaoke_machine1.add_song(@song2)
    assert_equal(@songs.include?(@song2),true)
  end

  def test_remove_song
    @karaoke_machine1.remove_song(@song1)
    assert_equal(@songs.include?(@song1),false)
  end

  def test_show_songs
    assert_equal(@karaoke_machine1.show_songs,@songs)
  end

  def test_play_song
    assert_equal("Here's Simon with 'Memory' by Andrew Lloyd Webber!", @karaoke_machine1.play_song(@guest1,@song2))
  end



end