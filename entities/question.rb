class Question
  INT_1 = rand(1..20)
  INT_2 = rand(1..20)

  def ask
    question = "What is #{INT_1} + #{INT_2}?"
    puts question
    get_input
  end

  def get_input
    puts 'GET_INPUT PLACE HOLDER'
  end
end