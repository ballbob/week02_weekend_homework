require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')
require_relative('../guest.rb')
require_relative('../room.rb')

class TestRoom < Minitest::Test

  def setup()
    @guests = [
      @sandra = Guest.new("sandra", 'Through Fire and Flames',20),
      @michelle = Guest.new("michelle", 'Blasphemer',18),
      @kim = Guest.new("Kim", "Don't Burn the Witch", 45)
    ]

    @kevin = Guest.new("Kevin", nil, 20)

    @songs = [
      @throughfire = Song.new('Through Fire and Flames', 'Dragonforce', 'Metal'),
      @blasphemer = Song.new('Blasphemer', 'Sodom', 'Metal'),
      @dontburn = Song.new("Don't Burn the Witch", "Sodom", "Metal")
    ]

    @hello = Song.new("Hello","Adele","Ballad")

    @room = Room.new(@guests,@songs)
  end

  def test_show_guests
    assert_equal(@guests,@room.show_guests)
  end

  def test_show_songs
    assert_equal(@songs,@room.show_songs)
  end

end



#remember to submit homework on https://docs.google.com/forms/d/e/1FAIpQLScjq8XbMv2587ueVoY6UveoUU2D8pVaFYmeYHxSO3uIXw1INw/viewform?c=0&w=1