# The first step is to display a welcome message 
puts 'Welcome to the Tic-Tac-Toe Game'
puts

# In this step we require the users to input their names so we can replace Player-1 and Player-2 with them

print 'Player-1 name please: '
player_1_name = gets.chomp

print 'Player-2 name please: '
player_2_name = gets.chomp
puts


puts "#{player_1_name} you are Player-1 and your symbol is X"
puts
puts "#{player_2_name} you are Player-2 and your symbol is O"
puts

print "\nThis is Your Tic Tac Toe Board\n"

# Display game board and ask user to select a cell for their symbol
puts '1 | 2 | 3 '
puts '----------'
puts '4 | 5 | 6 '
puts '----------'
puts '7 | 8 | 9 '

print "\n#{player_1_name} select cell between 1-9\n"
puts
# assuming Player-1 selects cell 1, the output is displayed next
puts 'X | 2 | 3 '
puts '----------'
puts '4 | 5 | 6 '
puts '----------'
puts '7 | 8 | 9 '

print "\n#{player_2_name} select cell between 1-9\n"
# If Player-2 selects cell 1, a message should appear telling the player to select another cell.
puts "#{player_2_name}, this cell is already taken, choose again!"
print "\n#{player_2_name} select cell between 1-9\n" # Player selects cell 4
puts
puts 'X | 2 | 3 '
puts '----------'
puts 'O | 5 | 6 '
puts '----------'
puts '7 | 8 | 9 '

print "\n#{player_1_name} select cell between 1-9\n" # Assuming he selects cell 2
puts

puts 'X | X | 3 '
puts '----------'
puts 'O | 5 | 6 '
puts '----------'
puts '7 | 8 | 9 '

print "\n#{player_2_name} select cell between 1-9\n" # the game continues as intended
puts
# assuming Player-2 selects cell 8, the output is displayed next
puts 'X | X | 3 '
puts '----------'
puts 'O | 5 | 6 '
puts '----------'
puts '7 | O | 9 '

print "\n#{player_1_name} select cell between 1-9\n" # the game continues as intended
puts
# assuming Player-1 selects cell 3, the output is displayed next
puts 'X | X | X '
puts '----------'
puts 'O | 5 | 6 '
puts '----------'
puts '7 | O | 9 '

print "\n#{player_1_name} wins!!"
# At this point, the game asks the players if they'll like to play again, if yes, they'll press enter to start again.
# If not then they'll exit the game.
# If they do draw however, they'll be asked to play again.