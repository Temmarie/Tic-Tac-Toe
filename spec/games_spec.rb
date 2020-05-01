# spec/calculator_spec.rb
require './lib/players.rb'
require './lib/board.rb'
describe Board do
  let(:tictactoe) { Board.new }
  let(:player) { Players.new('Grace', 'X') }

  describe '#won?' do
    it 'returns true if the players input includes any of the winning combination' do
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

      input = [1, 3, 2, 0, 5]

      arr.each do |ele|
        true if ele.all? { |x| input.include?(x) }
        expect(tictactoe.won?(ele)).to eql(true)
      end

    it 'returns false if the players input does not include any of the winning combination' do
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

      input = [9, 8, 4, 0, 1]

      arr.each do |ele|
        true if ele.all? { |x| input.include?(x) }
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
    it 'returns true when the game has not been won and there are no integers on the board' do
      # 9.times do |char|
      #   tictactoe.update_board(player, char)
      # end
      # expect(tictactoe.draw?).to eql(true)
      if tictactoe.!won? do 
        expect(tictactoe.draw?).to eql(true)
      end

      if positions.none?(Integer) do 
        expect(tictactoe.draw?).to eql(true)
      end
    end
  end
end