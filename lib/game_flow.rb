require './lib/board'

class Gameflow
  def start_game(user_input)
      if user_input == "p"
        game_board
      elsif user_input == "i"
        instructions
      elsif user_input == "q"
        quit
      else
        puts "You've submitted invalid input! \n choose (P) - to play \n (I) - for instructions \n
              (Q)- to quit"
      end
  end

  def instructions
    puts "Players take turns firing shots (by calling out a grid coordinate) to attack enemy ships.\n
    On your turn, input a letter and a number that identifies a row and column on your target grid.\n
    Your opponent checks that coordinate visually responds 'miss' if there is no ship there, or 'hit' \n
    if you have correctly guessed a space that is occupied by one of his ships."
  end

  def quit
    puts "Thanks for playing BATTLESHIP."
  end

  def game_board
    board = Board.new(4)
    
    a1 = board.space_array[0][0].occupied
    a2 = board.space_array[0][1].occupied
    a3 = board.space_array[0][2].occupied
    a4 = board.space_array[0][3].occupied

    b1 = board.space_array[1][0].occupied
    b2 = board.space_array[1][1].occupied
    b3 = board.space_array[1][2].occupied
    b4 = board.space_array[1][3].occupied

    c1 = board.space_array[2][0].occupied
    c2 = board.space_array[2][1].occupied
    c3 = board.space_array[2][2].occupied
    c4 = board.space_array[2][3].occupied

    d1 = board.space_array[3][0].occupied
    d2 = board.space_array[3][1].occupied
    d3 = board.space_array[3][2].occupied
    d4 = board.space_array[3][3].occupied

    puts "==========="
   puts ".  1 2 3 4"
   puts "A #{a1} #{a2} #{a3} #{a4}"
   puts "B #{b1} #{b2} #{b3} #{b4}"
   puts "C #{c1} #{c2} #{c3} #{d4}"
   puts "D #{d1} #{d2} #{d3} #{d4}"
   puts "==========="
 end

end
