class TicTacToe

  def initialize()
  	puts
  	puts "Welcome to TicTacToe! The best game in the world!"
  	puts "Player1 will be 'X' and Player2 wil be 'O'"
  	@board = [*1..9]
  	display_board
  	@player1 = Player.new("Player1", 'X')
  	@player2 = Player.new("Player2", 'O')
  	@game_end = false
  	@current_player = @player1
  	@count = 0
  	while !@game_end
  	  print "#{@current_player.name} '#{@current_player.piece}', type in a number from 1 to 9: "
  	  @again = true
  	  good_input = false
  	  while good_input == false
  		move = gets.chomp.to_i
  		if @board.include? move
  			good_input = true
  		else
  			print "Invalid input. Pick another spot: "
  		end
  	  end
  	@board[move-1] = @current_player.piece
  	check_winner
  	check_tie
  	display_board
  	if @current_player == @player1
  	  @current_player = @player2
  	else
      @current_player = @player1
    end
  end
  end
  
  def display_board
  	puts
  	puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
    puts
  end

  def check_winner
    if @board[0] == @board[1] && @board[1]== @board[2]
    	@game_end = true
    	win
    elsif @board[3] == @board[4] && @board[4] == @board[5]
    	@game_end = true
    	win
    elsif @board[6] == @board[7] && @board[7] == @board[8]
    	@game_end = true
    	win
    elsif @board[0] == @board[3] && @board[3] == @board[6]
    	@game_end = true
    	win
    elsif @board[1] == @board[4] && @board[4] == @board[7]
    	@game_end = true
    	win
    elsif @board[2] == @board[5] && @board[5] == @board[8]
    	@game_end = true
    	win
    elsif @board[0] == @board[4] && @board[4] == @board[8]
    	@game_end = true
    	win
    elsif @board[2] == @board[4] && @board[4] == @board[6]
    	@game_end = true
    	win
    else
    end
  end

  protected

  def win
  	display_board
  	puts "#{@current_player.name} has succesfully won! Good game!"
  	puts
  	ended
  end

  def check_tie
  	@count += 1
  	if @count == 9
      puts "It's a Tie. Good game!"
  	  display_board
  	  ended
  	end
  end

  def ended
  	puts "Would You Like to Play Again? Type y or n."
    letter = gets.chomp
    if letter == 'y'
	  @again = true
	  TicTacToe.new
    elsif letter == 'n'
	  puts "Bye. Thanks for playing!"
   	  @again = false
   	  exit
    end
  end

end

class Player

  def initialize(name, piece)
  	@name = name
  	@piece = piece
  end
  
  def name
  	@name
  end

  def piece
  	@piece
  end

end

TicTacToe.new

