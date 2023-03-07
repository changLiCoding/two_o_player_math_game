require 'pp'
require './Game'

game = Game.new("Chang", "Li")

p game.player1.name
p game.player2.number_of_lifes

game.start
