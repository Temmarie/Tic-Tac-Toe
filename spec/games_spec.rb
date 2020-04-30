# spec/calculator_spec.rb
require './bin/main.rb'
require './lib/players.rb'

describe Board do
  let(:tictactoe) { Board.new }
  let(:player) { Players.new('Grace', 'X') }

  describe '#won?' do
    it 'returns true if all elements of the array match the winning combination' do
      arr = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [2, 4, 6],
        [0, 4, 8],
        [1, 4, 7]
      ]
      arr.each do |ele|
        expect(tictactoe.won?(ele)).to eql(true)
      end
    end

    it 'returns false if none of the elements of the array match the winning combination' do
      arr = [
        [0, 1, 3],
        [1, 2, 9],
        [2, 3, 8],
        [3, 4, 7],
        [4, 5, 6],
        [5, 6, 5],
        [6, 7, 4],
        [7, 8, 3],
        [8, 9, 2]
      ]
      arr.each do |ele|
        expect(tictactoe.won?(ele)).to eql(false)
      end
    end
  end

  describe '#valid_input?' do
    it 'returns true if the user input is included in the board positions' do
      (1..9).each do |ele|
        expect(tictactoe.valid_input?(ele)).to eql(true)
      end
    end

    it 'returns false if the user input is not included in the board positions' do
      expect(tictactoe.valid_input?(10)).to eql(false)
      expect(tictactoe.valid_input?('a')).to eql(false)
      expect(tictactoe.valid_input?('@')).to eql(false)
    end
  end

  describe '#update_board' do
    it 'returns true and updates the board if the user input is valid and matches a position on the board' do
      tictactoe.update_board(player, 1)
      expect(tictactoe.positions[1]).to eql('X')
    end
  end

  describe '#draw?' do
    it 'returns true if there are no positions to occupy on the board' do
      9.times do |num|
        tictactoe.update_board(player, num)
      end
      expect(tictactoe.draw?).to eql(true)
    end
  end
end
