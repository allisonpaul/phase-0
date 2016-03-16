# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hour on this challenge reading and [1] hour coding.

# Pseudocode

# Input:An integer
# Output: A symbol saying the guess is too high, too low, or correct.
#       & True or False if the guess is correct

# Steps:
# Assign an answer variable -> this will be the number the guesses are compared to.
# Get input from the player (an integer/the guess.)
# Compare the guess with the answer
#IF the answer is equal to the guess, tell them it is correct.
#ELSE print a message saying it is too high or too low.
#RETURN true if the guess matches the answer.
#RETURN false is the guess is wrong.

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer=answer
  end

  def guess(guess)
    @guess=guess
    if @guess > @answer
        return :high
    elsif @guess == @answer
        return :correct
    else
      return :low
    end
  end

  def solved?
    if @guess == @answer
      return true
    else @guess != @answer
      return false
    end
  end
end



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer=answer
  end

  def guess(guess)
    @guess=guess
    @guess > @answer ? :high : (@guess == @answer ? :correct : (:low))

  end

  def solved?
     @guess == @answer ? true : false
  end
end

#I refactored with the ternary operator. I think it looks neat but it isn't the most readable, and I probably woulnd't have been able to just jump straight to this... I'd need the long if/else to look at as a reference.


# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  Methods are like behaviors/actions because they are like an action that an object can perform.
  Instance variables are like characteristics because their attributes persist throughout the entire class, as long as the variable exists.

When should you use instance variables? What do they do for you?
    Instance variables should be used when you want to access the data the variable holds in seperate methods (but still in the same class).

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  Flow control is branching and deciding which branch of code to execute based on logical expressions. The if/elsif/else statements are basic control flow structures, and are what I used here. I didn't have any trouble with control flow in this challenge, it felt the same as using it in any other instance.
  Changing my statements with the ternary operator was a little confusing, and I find it harder to read but I hope to become more familiar with this.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  Symbols are immuatable and unique.  Symbols cannot be altered and a symbol represents the same object each time. :abc will always refer to the same object while a string "abc" creates a new string each time.
  Symbols can be processed faster and are more efficient. When you use a symbol you ensure that you are always referring to the same object.

=end

