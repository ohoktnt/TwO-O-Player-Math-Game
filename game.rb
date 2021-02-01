# put the game together

class Game 
  attr_accessor :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def switchPlayer
    if self.current_player == self.player1
      self.current_player = self.player2
    else
      self.current_player = self.player1
    end 
  end

  def gameOver
    puts "#{current_player.name} wins with a score of #{current_player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

end