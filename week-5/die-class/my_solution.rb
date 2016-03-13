# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: number of sides of the die
# Output:
# Steps:
#  -Get the total number of sides from the user
#  -If the number is less than one give an error message.
#  -Return the number of sides of the die.
#  -Roll the dice and give a random number between 1 and the number of sides the user provided.

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Die must have at least one side. ")
  else
    @sides=sides
  end
end

  def sides
    @sides
  end

  def roll
   rolled_number= rand(@sides) + 1
    rolled_number
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Dice must have at least one side.")
  else
    @sides=sides
  end
end

  def sides
    @sides
  end

  def roll
   rolled_num= rand(1..sides)
  end
end


=begin 4. Reflection
What is an ArgumentError and why would you use one?
  An ArgumentError gives an error message if the wrong number of arguments are passed, or if you pass an argument that isn't acceptable.
  I used one here that will come up if no arugments are passed, if a negative integer is passed, or if zero is passed.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  The only new method I used is #raise. It was very easy to implement and I didn't have an struggle with it.

What is a Ruby class and why would you use it?
  A class is a category of objects with its own identities and method.  You use a class if you want to call the same method on several different objects without having to rewrite the methods multiple times.

What is the difference between a local variable and an instance variable?
Where can an instance variable be used?
A local variable is defined within a method. An instance variable is available across different methods within the same class and is definied with a @ at the beginning of its name. It can only be used within the class in which it was created.


=end