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

    @room = Room.new(@guests,@songs,10,6)
  end

  def test_show_guests
    assert_equal(@guests,@room.show_guests)
  end

  def test_show_songs
    assert_equal(@songs,@room.show_songs)
  end

#  def test_check_guest_in
#    @room.check_in(@kevin)
#    assert_equal(@guests.include?(@kevin),true)
#  end

#  def test_guest_check_out
#    @room.check_out(@michelle)
#    assert_equal(@guests.include?(@michelle),false)
#  end

  def test_add_song
    @room.add_song(@hello)
    assert_equal(@songs.include?(@hello),true)
  end

  def test_remove_song
    @room.remove_song(@blasphemer)
    assert_equal(@songs.include?(@blasphemer),false)
  end

#  def test_show_space
#    assert_equal(@room.show_space,10)
#  end

#  def test_check_in_but_room_full
#    assert_equal(@room.check_in(@mac),"Room full")
#  end

#  def test_check_in_with_fee__reject
#    assert_equal("Insufficient funds.", @room.check_in(@#kevin))
#  end

  def test_check_in_with_fee__accept
    @room.check_in(@kevin)
    assert_equal(@guests.include?(@kevin),true)
  end

end



#remember to submit homework on https://docs.google.com/forms/d/e/1FAIpQLScjq8XbMv2587ueVoY6UveoUU2D8pVaFYmeYHxSO3uIXw1INw/viewform?c=0&w=1