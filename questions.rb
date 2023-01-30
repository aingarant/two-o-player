# Create class to ask the question to player
class Question

  attr_accessor :answer
  
  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
  end

  def question(player)
      @answer = @num1 + @num2
      puts "#{player}: What is #{@num1} + #{@num2}?"
  end
end