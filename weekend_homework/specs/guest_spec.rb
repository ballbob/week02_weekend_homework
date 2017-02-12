require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestGuest < Minitest::Test

  def setup
    @batoutofhell = Song.new("Bat Out Of Hell", "Meat Loaf", ["Rock", "Dad Rock"])
    @guest1 = Guest.new("Seamus", @batoutofhell, 21)
  end

  def test_show_guest_name
    assert_equal(@guest1.show_guest_name, "Seamus")
  end

  def test_show_guest_fave
    assert_equal(@guest1.show_guest_fave, @batoutofhell)
  end

#  def test_show_guest_money
#    assert_equal(@guest1.show_guest_money, 21)
#  end

  def test_guest_pays
    @guest1.guest_pays(20)
    assert_equal(@guest1.show_guest_money,1)
  end

end