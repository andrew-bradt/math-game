class Question
  def initialize
    @int_1 = rand(1..20)
    @int_2 = rand(1..20)
  end

  def ask(name)
    correct? prompt(name)
  end
  
  private
  attr_reader :int_1, :int_2
  def prompt(name)
    question = "#{name}: What does #{int_1} + #{int_2} equal?"
    puts question
    print "> "
    $stdin.gets.chomp.to_i
  end

  def correct? (answer)
    answer == int_1 + int_2
  end
end