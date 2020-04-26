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


print 'Player One name please: '
players1 = gets.chomp
puts
print 'Player Two name please: '
players2 = gets.chomp
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

playerz = [player1, player2]

3.times do
  playerz.each do |playa|
    puts "#{playa.name} choose a cell"
    input = gets.chomp.to_i
    board.positions[input - 1] = playa.char
    puts board.display_board
  end
end


