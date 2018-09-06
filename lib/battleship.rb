
require './lib/game_flow'

puts "Welcome to BATTLESHIP\n"
puts "\n"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
puts ">>"

user_input = gets.chomp

game_flow = Gameflow.new

game_flow.start_game(user_input)
