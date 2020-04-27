#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/players.rb'
require_relative '../lib/gameplay.rb'

puts '  WELCOME TO TIC-TAC-TOE'
puts
puts "\t X | O | X"
puts "\t---|---|---"
puts "\t O | X | O"
puts "\t---|---|---"
puts "\t X | O | X"
puts


print "Player One press \'E'\ to enter name or \'G'\ to play as guest: "
id = gets.chomp.upcase
if id == 'G'
  players1 = 'Guest__01'
elsif id == 'E'
  print 'Player One name please: '
  players1 = gets.chomp
end
puts
print "Player Two press \'E'\ to enter name or \'G'\ to play as guest: "
id2 = gets.chomp.upcase
if id2 == 'G'
  players2 = 'Guest__02'
elsif id2 == 'E'
  print 'Player Two name please: '
  players2 = gets.chomp
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

3.times do
  playerz.each do |playa|
    print "#{playa.name} choose a cell: "
    input = gets.chomp.to_i
    board.positions[input - 1] = playa.char
    puts board.display_board
    puts
  end
end


