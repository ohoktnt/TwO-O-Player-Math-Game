# player class

class Player
  attr_accessor :name, :lives, :lose

  def initialize(number)
    @name = "Player #{number}"
    @lives = 3
    @lose = false
  end

  def wrongAnswer
    self.lives -= 1
    if self.lives === 0
      self.lose = true
    end
  end

end

# Testing - works
# player1 = Player.new(1)

# puts player1.name
# puts player1.lives
# puts player1.lose

# player1.wrongAnswer
# puts player1.lives

# player1.wrongAnswer
# player1.wrongAnswer
# puts player1.lives
# puts player1.lose