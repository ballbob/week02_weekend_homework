require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom < Minitest::Test

  def setup()
    @guests = [
      @guest1 = Guest.new("sandra", 'Through Fire and Flames',20),
      @guest2 = Guest.new("michelle", 'Blasphemer',18),
      @guest3 = Guest.new("Kim", "Don't Burn the Witch", 45)
    ]

    @newguest = Guest.new("Kevin", nil, 20)

    @songs = [
      @throughfire = Song.new('Through Fire and Flames', 'Dragonforce', 'Metal'),
      @blasphemer = Song.new('Blasphemer', 'Sodom', 'Metal'),
      @dontburn = Song.new("Don't Burn the Witch", "Sodom", "Metal")
    ]

    room = Room.new(@guests,@songs)
  end

  def test_show_guests
  end

end



#remember to submit homework on https://docs.google.com/forms/d/e/1FAIpQLScjq8XbMv2587ueVoY6UveoUU2D8pVaFYmeYHxSO3uIXw1INw/viewform?c=0&w=1