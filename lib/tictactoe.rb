class TicTacToe
  attr_reader :board

  def initialize
    @board = Array.new(3){Array.new(3){nil}}
  end

  def o_move(x, y)
    @board[y][x] = 'o' unless @board[y][x]
  end

  def x_move(x, y)
    @board[y][x] = 'x' unless @board[y][x]
  end

  def check_complete
    return true if check_draw
    return true if check_rows
    return true if check_columns
    return true if check_diagonals
    false
  end

  def check_draw
    return false if @board.flatten.include? nil
    true
  end

  private
  
  def check_rows(array=@board)
    array.each do |row|
      return true if row[1] && row[0] == row[1] && row[1] == row[2]
    end
    false
  end

  def check_columns
    return check_rows(@board.transpose.reverse)
  end

  def check_diagonals
    if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] ||
        @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]
      return true if @board[1][1]
    end
    false
  end

end
