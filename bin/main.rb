puts "The goal of tic-tac-toe is to be the first player to get three in a row on a 3-by-3 grid"
puts "The first player who is playing "X" always goes first."
puts "Players alternate placing Xs and Os on the board until either player has three in a row, horizontally, vertically, or diagonally or until all squares on the grid are filled. If a player is able to draw three Xs or three Os in a row, then that player wins."
puts "If all squares are filled and neither player has made a complete row of Xs or Os, then the game is a draw."
puts "In order to make move, you need to choose number from 1 to 9 and each can be choosen only once."
puts "1 | 2 | 3 \n----------\n4 | 5 | 6\n----------\n7 | 8 | 9"
puts "Lets start the game!"

puts "What is name of the first player?"
player1 = gets.chomp
puts "What is name of the second player?"
player2 = gets.chomp

win_conditions = [
    [1,2,3],
    [4,5,6],
    [7,8,9],
    [1,4,7],
    [2,5,8],
    [3,6,9],
    [1,5,9],
    [3,5,7]
]

loop do
    # create new board
    board = ['', '', '', '', '', '', '', '', '', '']
    loop do 
        puts "#{player1}, what number you choose?"
        move = gets.chomp
        #store choosen number in board array
        #if board is full its draw 
        #if win condition is met we break loop and increment score of player1
        puts "#{player2}, what number you choose?"
        move = gets.chomp
        #store choosen number in board array
        #if board is full its draw 
        #if win condition is met we break loop and increment score of player2
    end

puts "player# wins, score is 1:0, do you want to play again? y/n"
play_again = gets.chomp
#if answer is "y" then we create start loop again
#if answer is "n" then we break loop and say Goodbye.
end

