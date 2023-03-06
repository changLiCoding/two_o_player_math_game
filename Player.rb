class Player
  @@number_of_player_slots = 2
  attr_accessor :name, :answers
  def initialize name
    if (@@number_of_player_slots === 0)
      puts "Initialization Failure: Only 2 players available the same time. "
      return
    end
    @answers = []
    @name = name
    @number_of_lifes = 3
    @@number_of_player_slots -= 1
  end

  def random_numbers_generate
    [rand(1...21), rand(1...21)]
  end

  def asking_math_question
    random_numbers = random_numbers_generate()
    answer = random_numbers[0] + random_numbers[1]
    @answers << answer
    puts @answers
    puts "What does #{random_numbers[0]} plus #{random_numbers[1]} equal? "
  end

  def answer_math
    player_answer = gets.chomp
  end
end




