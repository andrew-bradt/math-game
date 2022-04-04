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

def get_winner (players)
  players.max {|player| player.lives}
end

until game_over?(players)
  question = Question.new
  turn = Turn.new(players)
  turn.begin(question)
end

puts "----- GAME OVER -----"
winner = get_winner(players)
puts "#{winner.name} wins with a score of #{winner.score}"
puts "Good bye!"

