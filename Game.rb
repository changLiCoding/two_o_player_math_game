require './Player'

class Game
  attr_accessor :player1, :player2
  def initialize player1, player2

    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @ask_turn = 1

  end


  def start
    while @player1.number_of_lifes != 0 && @player2.number_of_lifes != 0
      asking_math_question()
      change_ask_turn()
    end
    if @player1.number_of_lifes == 0
      puts "#{@player2.name} wins with a score of #{@player2.number_of_lifes}/3"
    else
      puts "#{@player1.name} wins with a score of #{@player1.number_of_lifes}/3"
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  private
  def check_players
    p @player1
    p @player2
  end

  def random_numbers_generate
    [rand(1...21), rand(1...21)]
  end


  def asking_math_question
    random_numbers = random_numbers_generate()
    if @ask_turn == 1
      asking_player = @player1
    else
      asking_player = @player2
    end
    question_answer = random_numbers[0] + random_numbers[1]
    puts "#{asking_player.name}: What does #{random_numbers[0]} plus #{random_numbers[1]} equal? "

    answer_from_input = gets.chomp.to_i
    if answer_from_input != question_answer
      if @ask_turn == 1
        puts "#{@player1.name}: Seriously? No!"
        @player2.number_of_lifes -= 1
      else
        puts "#{@player2.name}: Seriously? No!"

        @player1.number_of_lifes -= 1
      end

    else
      if @ask_turn == 1
        puts "#{@player1.name}: YES! You are correct. "
      else
        puts "#{@player2.name}: YES! You are correct. "
      end
    end

    puts "#{@player1.name}: #{@player1.number_of_lifes}/3 vs #{@player2.name}: #{@player2.number_of_lifes}/3"
  end

  def change_ask_turn
    if @ask_turn == 1
      @ask_turn = 2
    else
      @ask_turn = 1
    end
     puts "----- NEW TURN -----" if @player1.number_of_lifes != 0 && @player2.number_of_lifes != 0

  end



end
