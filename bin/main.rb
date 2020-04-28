#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/players.rb'

puts '  WELCOME TO TIC-TAC-TOE'
puts
puts "\t X | O | X"
puts "\t---|---|---"
puts "\t O | X | O"
puts "\t---|---|---"
puts "\t X | O | X"
puts

print "Player One press \'P'\ to enter name or \'Enter'\ to play as guest: "
id = gets.chomp.upcase
if id == 'P'
  print 'Player One name please: '
  players1 = gets.chomp
else
  players1 = 'Guest__01'
end
puts
print "Player Two press \'P'\ to enter name or \'Enter'\ to play as guest: "
id2 = gets.chomp.upcase
if id2 == 'P'
  print 'Player Two name please: '
  players2 = gets.chomp
else
  players2 = 'Guest__02'
end
puts

player1 = Players.new(players1, 'X')
player2 = Players.new(players2, 'O')
puts "#{player1.name} your symbol is #{player1.char}"
puts
puts "#{player2.name} your symbol is #{player2.char}"
puts
puts 'This is your playing board'
board = Board.new
puts board.display_board
puts

playerz = [player1, player2]

game_on = true

while game_on
  playerz.each do |playa|
    if game_on

      loop do
        print "#{playa.name} choose a cell: "
        input = gets.chomp.to_i
        inputs = input - 1

        if board.positions.include?(input)
          playa.player_input << inputs
          board.positions[inputs] = playa.char
          break
        else
          puts 'Invalid move/character try again!'
          puts
          next
        end
      end
      puts board.display_board
      puts
    end
    if board.won?(playa.player_input)
      puts "#{playa.name} Wins!!!"

      game_on = false
      break

    elsif board.positions.none?(Integer)
      puts 'Game is Draw'

      game_on = false
      break
    end
  end

  next if game_on

  print "\n Do you want to play again? [yes(y) / no(n)]: "
  play_again = gets.chomp.downcase

  if play_again == 'yes' or play_again == 'y'
    puts "\n Sorry not available yet, this is the beta version, new updates coming :)"
    break
  elsif play_again == 'no' or play_again == 'n'
    puts 'Thanks for playing!'
    break
  end
end
