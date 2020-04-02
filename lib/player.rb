class Player
  attr_readers :name, :score

  def initialize(name, score = 0)
    @name = name
    @score = score
  end

  def change_score
    @score += 1
  end
end
