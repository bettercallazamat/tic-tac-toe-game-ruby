#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockLength
# rubocop:disable Layout/LineLength

require_relative('../lib/player.rb')
require_relative('../lib/board.rb')

puts('The goal of tic-tac-toe is to be the first player to get three in a row on a 3-by-3 grid')
puts('The first player who is playing X always goes first.')
puts('Players alternate placing Xs and Os on the board until either player has three in a row, horizontally, vertically, or diagonally or until all squares on the grid are filled.')
puts('If a player is able to draw three Xs or three Os in a row, then that player wins.')
puts('If all squares are filled and neither player has made a complete row of Xs or Os, then the game is a draw.')
puts('In order to make move, you need to choose number from 1 to 9 and each can be choosen only once.')
puts("1 | 2 | 3 \n----------\n4 | 5 | 6\n----------\n7 | 8 | 9")
puts('Lets start the game!')

puts('What is name of the first player?')
player1 = Player.new(gets.chomp)
puts('What is name of the second player?')
player2 = Player.new(gets.chomp)

loop do
  board = Board.new
  loop do
    loop do
      print "#{player1.name}, what number you choose: "
      move = Integer(gets.chomp, 10)
      if board.valid?([1, move])
        board.update([1, move])
        puts(board.show)
        break
      else
        puts('Wrong move!')
      end
    end
    if board.win?
      puts("#{player1.name}, wins!")
      player1.change_score
      break
    elsif board.draw?
      puts("It's a draw!")
      break
    end

    loop do
      print "#{player2.name}, what number you choose: "
      move = Integer(gets.chomp, 10)
      if board.valid?([2, move])
        board.update([2, move])
        puts(board.show)
        break
      else
        puts('Wrong move!')
      end
    end
    if board.win?
      puts("#{player2.name}, wins!")
      player2.change_score
      break
    elsif board.draw?
      puts("It's a draw!")
      break
    end
  end

  puts "The current score is #{player1.score}:#{player2.score}."
  puts "Type 'n' if you don't want to continue playing, or any input to play again."
  play_again = gets.chomp
  break if play_again == 'n'
end

# rubocop:enable Metrics/BlockLength
# rubocop:enable Layout/LineLength
