require 'pp'
require './Player'


p1 = Player.new("Player1")
p2 = Player.new("Player2")
p3 = Player.new("Player3")

p1.asking_math_question
p1.asking_math_question
p1.asking_math_question
puts p1.answers
