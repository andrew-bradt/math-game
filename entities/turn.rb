class Turn
  def initialize (players)
    @players = players
  end

  def begin(question)
    puts 'PLACEHOLDER FOR BEGIN'
  end
  
  # private
  
  attr_reader :players

  def handle_answer(is_correct, player)
    if is_correct
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      player.reduce_lives
    end
  end

  def display_score
    score = ""
    players.each_with_index do |player, i|
      player_score = "#{player.short_name}: #{player.score}"
      score += (i != players.length - 1) ? "#{player_score} vs. " : player_score
    end
    puts score
  end
  
end