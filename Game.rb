require './Player'

class Game
  attr_accessor :player1, :player2
  def initialize player1, player2

    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @player_turn = 1

  end

  def check_players
    p @player1
    p @player2
  end

  def random_numbers_generate
    [rand(1...21), rand(1...21)]
  end


  def asking_math_question
    random_numbers = random_numbers_generate()
    question_answer = random_numbers[0] + random_numbers[1]
    puts "What does #{random_numbers[0]} plus #{random_numbers[1]} equal? "

    answer_from_input = gets.chomp
    if answer_from_input != question_an
      if @player_turn == 1
        @player1.number_of_lifes -= 1
      else
        @player2.number_of_lifes -= 1
      end
    end

    p @player1
    p @player2
  end

  def change_players_turn
    if @player_turn == 1
      @player_turn = 2
    else
      @player_turn = 1
    end
  end


end
