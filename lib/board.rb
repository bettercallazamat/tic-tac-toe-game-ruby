class Board

  def initialize
    @board = []
  end

  def valid?(input)
    valid = false
    if (1..9).include?(input[1])
        if @board.each{|x| x[1] != input[1]}
          valid = true
        end
    end
    valid
  end

  def update_board(input)
    @board.push(input)
  end

  def win?
    
  end
end
