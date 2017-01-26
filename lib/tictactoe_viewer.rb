class TicTacToeViewer

  def initialize(board)
    @board = transform(board)
    @div = ' | '
  end

  def print_board
    @board.each.with_index do |row, index|
      puts " #{2 - index} | " + row[0] + @div + row[1] + @div + row[2]
      puts '-' * 15
    end
    puts "   | 0 | 1 | 2 "
  end

  private
  
  def transform(array)
    array.map{|row| row.map{|e| e ? e : ' '}}.reverse
  end

end
