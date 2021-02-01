# Main file that will require all other files

# prob contain the game loop
# use gets.chomp for inputs and puts for output

require './player'
require './question'
require './game'


player1 = Player.new(1)
player2 = Player.new(2)

game = Game.new(player1, player2)

while true
  # fire question
  question = Question.new
  puts "#{game.current_player.name}: #{question.question}"

  # evaluate answer
  print "> "
  input = gets.chomp.to_i

  if (input === question.answer)
    puts "#{game.current_player.name}: YES! You are correct."
  else 
    puts "#{game.current_player.name}: Seriously? No!"
    game.current_player.wrongAnswer
  end

  # move on to next round
  # puts game.score
  
  # only if score is good
  if player1.lives == 0 || player2.lives == 0
    game.nextTurn
    game.gameOver
  else 
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    game.nextTurn
  end

end

    

