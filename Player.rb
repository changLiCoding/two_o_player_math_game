class Player
  @@number_of_player_slots = 2
  attr_accessor :name, :number_of_lifes
  def initialize name
    if (@@number_of_player_slots === 0)
      puts "Initialization Failure: Only 2 players available the same time. "
      return
    end

    @name = name
    @number_of_lifes = 3
    @@number_of_player_slots -= 1
  end


end




