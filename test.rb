module MathGame
  include './entities/question'
end

question = MathGame::Question.new
pp question