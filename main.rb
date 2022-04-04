require './entities/turn.rb'
require './entities/player.rb'
require './entities/question.rb'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

players = [player1, player2]

def game_over? (players)
  players.each do |player|
    if !player.has_lives?
      return true
    end
  end
  false
end