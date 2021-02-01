# put the game together

class Game 
  attr_accessor :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  # def score
  #   p1Score = self.player1.lives
  #   p2Score = self.player2.lives
  #   puts "P1: #{p1Score} vs P2 #{p2Score}"
  # end

  def nextTurn
    puts "----- NEW TURN -----"
    if self.current_player == self.player1
      # puts "prev turn was player1"
      # puts player2.inspect
      self.current_player = self.player2
    else
      # puts "prev turn was player2"
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