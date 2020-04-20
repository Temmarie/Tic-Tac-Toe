#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/players.rb'
require_relative '../lib/gameplay.rb'

puts "  WELCOME TO TIC-TAC-TOE"
puts
puts "\t X | O | X"
puts "\t---|---|---"
puts "\t O | X | O"
puts "\t---|---|---"
puts "\t X | O | X"
puts

print "Player One name please: "
player_1 = gets.chomp
puts
print "Player Two name please: "
player_2 = gets.chomp
puts
player1 = Players.new(player_1, 'X')
player2 = Players.new(player_2, 'O')
puts "#{player1.name} your symbol is #{player1.char}"
puts
puts "#{player2.name} your symbol is #{player2.char}"
puts
puts 'This is your playing board'
board = Board.new
puts board.display_board

# puts 'Welcome to the Tic-Tac-Toe Game'
# puts

# # In this step we require the users to input their names so we can replace Player-1 and Player-2 with them

# print 'Player-1 name please: '
# player_1_name = gets.chomp

# print 'Player-2 name please: '
# player_2_name = gets.chomp
# puts

# puts "#{player_1_name} you are Player-1 and your symbol is X"
# puts
# puts "#{player_2_name} you are Player-2 and your symbol is O"
# puts

# print "\nThis is Your Tic Tac Toe Board\n"

# puts '1 | 2 | 3 '
# puts '----------'
# puts '4 | 5 | 6 '
# puts '----------'
# puts '7 | 8 | 9 '

# # game_on = true

# # while game_on
# # Display game board and ask user to select a cell for their symbol
# print "\n#{player_1_name} select cell between 1-9\n"
# puts

# # assuming Player-1 selects cell 1, the output is displayed next

# puts 'X | 2 | 3 '
# puts '----------'
# puts '4 | 5 | 6 '
# puts '----------'
# puts '7 | 8 | 9 '

# print "\n#{player_2_name} select cell between 1-9\n"

# # If Player-2 selects cell 1, a message should appear telling the player to select another cell.

# puts "#{player_2_name}, this cell is already taken, choose again!"
# print "\n#{player_2_name} select cell between 1-9\n" # Player selects cell 4
# puts
# puts 'X | 2 | 3 '
# puts '----------'
# puts 'O | 5 | 6 '
# puts '----------'
# puts '7 | 8 | 9 '

# print "\n#{player_1_name} select cell between 1-9\n" # Assuming he selects cell 2
# puts

# puts 'X | X | 3 '
# puts '----------'
# puts 'O | 5 | 6 '
# puts '----------'
# puts '7 | 8 | 9 '

# print "\n#{player_2_name} select cell between 1-9\n" # the game continues as intended
# puts
# # assuming Player-2 selects cell 8, the output is displayed next
# puts 'X | X | 3 '
# puts '----------'
# puts 'O | 5 | 6 '
# puts '----------'
# puts '7 | O | 9 '

# print "\n#{player_1_name} select cell between 1-9\n" # the game continues as intended
# puts
# # assuming Player-1 selects cell 3, the output is displayed next
# puts 'X | X | X '
# puts '----------'
# puts 'O | 5 | 6 '
# puts '----------'
# puts '7 | O | 9 '

# # end
# # if player_1 has his symbols in an order that matches a winning output game_on = false and the loop should break
# print "\n#{player_1_name} wins!!"
# puts
# # At this point, the game asks the players if they'll like to play again, if yes, they'll press enter to start again.
# # If not then they'll exit the game.

# # if no player has a winning output, but the board is filled with their symbols, game_on = false and the loop will break
# # and it will output game is a draw and ask if they want to play again.
