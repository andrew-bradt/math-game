class Player
  attr_reader :name, :lives
  
  def initialize (name)
    @name = name
    @lives = 3
  end

  def has_lives?
    lives != 0
  end

  def reduce_lives
    self.lives -= 1
  end

  def short_name
    name[0] + name[name.length - 1]
  end

  def score
    "#{lives}/3"
  end


  protected 
  attr_writer :lives
end