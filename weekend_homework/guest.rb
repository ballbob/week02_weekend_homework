class Guest

  def initialize(name,favourite_song,money)
    @name = name
    @favourite_song = favourite_song
    @money = money
  end

  def show_guest_name
    return @name
  end

  def show_guest_fave
    return @favourite_song
  end

  def show_guest_money
    return @money
  end

  def guest_pays(price)
    @money = @money - price
  end

end