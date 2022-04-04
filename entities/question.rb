class Question
  INT_1 = rand(1..20)
  INT_2 = rand(1..20)

  def ask
    correct? prompt
  end
  
  private
  def prompt
    question = "What is #{INT_1} + #{INT_2}?"
    puts question
    print "> "
    $stdin.gets.chomp.to_i
  end

  def correct? (answer)
    answer == INT_1 + INT_2
  end
end