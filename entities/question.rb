class Question
  INT_1 = rand(1..20)
  INT_2 = rand(1..20)

  def ask(name)
    correct? prompt(name)
  end
  
  private
  def prompt(name)
    question = "#{name}, What does #{INT_1} + #{INT_2} equal?"
    puts question
    print "> "
    $stdin.gets.chomp.to_i
  end

  def correct? (answer)
    answer == INT_1 + INT_2
  end
end