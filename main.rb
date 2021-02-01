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

  # move on to next round only if score is good
  if player1.lives == 0 || player2.lives == 0
    # switch to winner player
    game.switchPlayer
    # initial game shut down
    game.gameOver
  else
    # move to next round
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    game.switchPlayer
    puts "----- NEW TURN -----"
  end

end

    

