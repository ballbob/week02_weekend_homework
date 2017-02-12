class Room

  def initialize(guests,karaoke_machine,space,fee)
    @guests = guests
    @karaoke_machine = karaoke_machine
    @space = space
    @fee = fee
  end

  def show_guests
    return @guests
  end

  def check_in(newguest)
    if newguest.show_guest_money >= @fee
      if @guests.count <= (@space - 1)
        @guests << newguest
        newguest.guest_pays(@fee)
        else
          return "Room full"
      end
    end
    return "Insufficient funds."
  end

  def check_out(departing)
    @guests.delete(departing)
  end

  def show_space
    return @space
  end

end