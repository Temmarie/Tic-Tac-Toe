class Board
    def initialize
    @positions = [1,2,3,4,5,6,7,8,9]
    @win_combination = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [2, 4, 6],
      [0, 4, 8]
    ]
  end

  def display_board
    puts "\n #{@positions[0]} | #{@positions[1]}| #{@positions[2]}"
    puts "\n #{@positions[3]} | #{@positions[4]}| #{@positions[5]}"
    puts "\n #{@positions[6]} | #{@positions[7]}| #{@positions[8]}"             
  end
end

board = Board.new
board.display_board(positions)