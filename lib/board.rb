class Board
  attr_accessor :positions, :win_combination
  def initialize
    @positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
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
    "\n \t#{@positions[0]} | #{@positions[1]} | #{@positions[2]}"\
    "\n \t---------"\
    "\n \t#{@positions[3]} | #{@positions[4]} | #{@positions[5]}"\
    "\n \t---------"\
    "\n \t#{@positions[6]} | #{@positions[7]} | #{@positions[8]}"
  end

  def won?(player_input)
    @win_combination.each { |arr| return true if arr.all? { |x| player_input.include?(x) } }

    false
  end

  def valid_input?(input)
    @positions.include?(input)
  end

  def update_board(current_player, inputs)
    @positions[inputs] = current_player.char
  end

  def draw?
    @positions.none?(Integer)
  end
end
