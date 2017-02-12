require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')
require_relative('../guest.rb')
require_relative('../karaoke_machine.rb')

class TestKaraokeMachine < Minitest::Test 

  def setup()
    @guest1 = Guest.new("Simon","Forget Me Nots",20)
    @songs = [
    @song1 = Song.new("It's My Party (And I'll Cry If I Want To", "Lesley Gore", ["60s","Pop","Classic pop"])
    ]
    @song2 = Song.new("Memory","Andrew Lloyd Webber","Showtunes")
    @karaoke_machine1 = Karaoke_Machine.new(@songs)
  end

  def test_add_song
    @karaoke_machine1.add_song(@song2)
    assert_equal(@songs.include?(@song2),true)
  end


end