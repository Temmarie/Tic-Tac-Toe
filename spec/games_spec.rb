require './lib/players.rb'
require './lib/board.rb'

RSpec.describe Board do
  let(:tictactoe) { Board.new }
  let(:player) { Players.new('Grace', 'X') }
  let(:arr) do
    [
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
  end

  describe '#won?' do
    it 'returns true if the players input includes any of the winning combinations' do
      input = [1, 3, 2, 0, 5]

      arr.each { |sub_arr| sub_arr.all? { |ele| input.include?(ele) } } # => true
      expect(tictactoe.won?(input)).to eql(true)
    end

    it 'returns false if the players input does not include any of the winning combinations' do
      input = [8, 5, 7, 1]

      arr.each { |sub_arr| sub_arr.all? { |ele| input.include?(ele) } } # => false
      expect(tictactoe.won?(input)).to eql(false)
    end
  end

  describe '#valid_input?' do
    it 'returns true if the user input is included in the board positions' do
      tictactoe.positions.each do |ele|
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
    it 'Updates board with user character if input is valid and position is available' do
      tictactoe.update_board(player, 1)
      expect(tictactoe.positions[1]).to eql('X')
    end
  end

  describe '#draw?' do
    it 'returns true when the game has not been won and there are no integers on the board' do
      expect(tictactoe.draw?).to be true if tictactoe.positions.all?(String) && !tictactoe.won?
    end
  end
end
