require 'pp'
require './Game'

game = Game.new("Chang", "Li")

p game.player1.name
p game.player2.number_of_lifes
game.check_players

game.asking_math_question
game.asking_math_question
game.asking_math_question
game.asking_math_question
game.asking_math_question
game.asking_math_question
game.asking_math_question
# p3 = Player.new("Player3")

# p1.asking_math_question
# p2.answer_math
# if p1.question_answer != p2.answer_from_input
#   p2.number_of_lifes -= 1
# end

# puts p1.number_of_lifes
# puts p2.number_of_lifes
# p1.answers
# p1.asking_math_question
# p1.asking_math_question
# puts p1.answers
