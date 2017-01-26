require_relative './tictactoe'
require_relative './tictactoe_viewer'

class TicTacToeController

  def initialize(tictactoe_Klass, tictactoe_viewer_Klass)
    @tictactoe = tictactoe_Klass.new
    @viewer = tictactoe_viewer_Klass
    @players = ["Player 1", "Player 2"]
    @is_player1_move = true
  end

  def game_loop
    welcome
    until @tictactoe.check_complete do
      perform_turn
    end
    end_of_game
  end

  private
  def welcome
    puts "Welcome to TicTacToe"
    print_board
    puts "Player 1 to start"
  end

  def end_of_game
    next_turn
    puts "#{get_player_name} wins!" unless @tictactoe.check_draw
    puts "It's a draw!" if @tictactoe.check_draw
  end

  def perform_turn
    print "#{get_player_name}, enter your move: "
    make_move parse_player_move
    print_board
    next_turn
  end

  def make_move args
    if @is_player1_move
      @tictactoe.o_move(args[0],args[1])
    else
      @tictactoe.x_move(args[0],args[1])
    end
  end

  def print_board
    @viewer.new(@tictactoe.board).print_board
  end

  def parse_player_move
    begin
      args = gets.chomp.split
      exit if args.include? 'q'
      print "That is an invalid move, please try again: " unless valid_args args
    end while !valid_args(args)
    return args.map(&:to_i)
  end

  def valid_args args
    return false if args.length != 2
    args.map(&:to_i).each do |e|
      return false if e < 0 || e > 2
    end
    true
  end
  def get_player_name
    return @players[0] if @is_player1_move
    @players[1]
  end

  def next_turn
    @is_player1_move = !@is_player1_move
  end
end
