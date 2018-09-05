puts "Welcome to BATTLESHIP\n"
puts "\n"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
puts ">>"

user_input = gets.chomp


  def start_game_selections(user_input)
      if user_input == "p"
        #insert gameflow method
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
