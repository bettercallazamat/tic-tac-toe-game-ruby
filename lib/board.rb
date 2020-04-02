class Board
  attr_reader :board

  def initialize
    @board = [[0, 0]]
    @win_conditions = [
      [[1, 1], [1, 2], [1, 3]],
      [[1, 4], [1, 5], [1, 6]],
      [[1, 7], [1, 8], [1, 9]],
      [[1, 1], [1, 4], [1, 7]],
      [[1, 2], [1, 5], [1, 8]],
      [[1, 3], [1, 6], [1, 9]],
      [[1, 1], [1, 5], [1, 9]],
      [[1, 3], [1, 5], [1, 7]],
      [[2, 1], [2, 2], [2, 3]],
      [[2, 4], [2, 5], [2, 6]],
      [[2, 7], [2, 8], [2, 9]],
      [[2, 1], [2, 4], [2, 7]],
      [[2, 2], [2, 5], [2, 8]],
      [[2, 3], [2, 6], [2, 9]],
      [[2, 1], [2, 5], [2, 9]],
      [[2, 3], [2, 5], [2, 7]]
    ]
  end

  def valid?(input)
    valid = true
    if (1..9).include?(input[1])
      @board.each { |x| valid = false unless x[1] != input[1] }
    else
      valid = false
    end
    valid
  end

  def update(input)
    @board.push(input)
  end

  def win?
    win = false
    @win_conditions.each do |x|
      similar = @board & x
      win = true if similar.length == 3
    end
    win
  end

  def draw?
    return true if @board.length == 10

    false
  end
end
