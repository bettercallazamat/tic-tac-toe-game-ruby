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

  def show
    printed_board = "  |   |  \n----------\n  |   |  \n----------\n  |   |  "
    i = 1
    while i < @board.length
      if @board[i][0] == 1
        case @board[i][1]
        when 1
          printed_board[0] = 'X'
        when 2
          printed_board[4] = 'X'
        when 3
          printed_board[8] = 'X'
        when 4
          printed_board[21] = 'X'
        when 5
          printed_board[25] = 'X'
        when 6
          printed_board[29] = 'X'
        when 7
          printed_board[42] = 'X'
        when 8
          printed_board[46] = 'X'
        when 9
          printed_board[50] = 'X'
        end
      else
        case @board[i][1]
        when 1
          printed_board[0] = 'O'
        when 2
          printed_board[4] = 'O'
        when 3
          printed_board[8] = 'O'
        when 4
          printed_board[21] = 'O'
        when 5
          printed_board[25] = 'O'
        when 6
          printed_board[29] = 'O'
        when 7
          printed_board[42] = 'O'
        when 8
          printed_board[46] = 'O'
        when 9
          printed_board[50] = 'O'
        end
      end
      i += 1
    end
    printed_board
  end
end
