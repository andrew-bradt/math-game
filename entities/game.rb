require './entities/turn.rb'

class Game
  def initialize(players)
    @players = players
  end

  attr_reader :players

  def game_over?
    players.each do |player|
      if !player.has_lives?
        return true
      end
    end
    false
  end

  def play
    until game_over?
      turn = Turn.new(players)
      turn.begin
    end
  end

  def end_game
    puts 'PLACEHOLDER FOR end_game'
  end
end