# Question class

class Question 
  attr_reader :question, :answer

  def initialize
    number1 = rand(1..20)
    number2 = rand(1..20)
    @question = "What does #{number1} plus #{number2} equal?"
    @answer = number1 + number2
  end

end

# Testing - works 

# question1 = Question.new

# puts question1.question
# puts question1.answer

# answer = gets.chomp.to_i

# if answer == question1.answer
#   puts "YES! You are correct."
# else
#   puts "Seriously? No!"
# end
