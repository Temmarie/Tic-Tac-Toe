class Game_play

  def input_num?(input)
    input.between?(1, 9)
  end

  def player_move(char)
    @positions[input - 1] = char
  end

  def cell_taken?(board, index)
    if (board[index] == 'X') || (board[index] == 'O') || (board[index].nil?)
      true
    else
      false
    end
  end

  def valid_move?(board, index)
    if (board[index] == ' ') || cell_taken? == false
      return true
    else 
      return false
  end

  def turn 
    puts "Choose a number from 1-9"
    input = gets.chomp
    if valid_move? == true 
      board[index] = player
    else 
      puts "Choose a number from 1-9"
    end
  end

  def turn_count(board)
    counter = 0
    board.each do |cells|
      if cells == 'X' || cells == 'O'
        counter += 1
      end
    end
    counter
  end

  def current_player(board)
    turn_count(board) % 2 == 0 ? "X" : "O"
  end


end