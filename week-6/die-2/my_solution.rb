# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hour on this challenge.

# Pseudocode

# Input:List of strings (an array)
# Output: One string randomly chosen from the list
# Steps:
#  Define a class
# Define a method that takes an array as input
#  If the array is empty return an error message
#  Count the number of strings which will be the number of sides
# RETURN a random side when you roll the die


# Initial Solution

class Die
  def initialize(labels)
    if labels==[]
      raise ArgumentError.new("Die must have at least one side. ")
    else
    @labels = labels
      end
    end

  def sides
   @sides=@labels.length
    return @sides
  end

  def roll
    rolled= @labels.sample
      return rolled
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("Die must have at least one side. ") if labels.empty?
    @labels = labels
    end

  def sides
   @labels.length
  end

  def roll
    @labels.sample
  end
end



# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  The difference here was I needed to pick a string instead of a number.  I used sample to do this.  The logic was pretty much the same.

What does this exercise teach you about making code that is easily changeable or modifiable?
  It was really helpful to have the code from last week to use as a template for this week. Not that I couldn't solve the challenge without it obviously, but it saved a lot of time and I was able to just tweak a few things instead of coding from scratch. It also taught me to pay attention to details and not just go through swapping out variables when working with a new problem.

What new methods did you learn when working on this challenge, if any?
  I didn't learn any new methods, but I  did remember the #empty? method when refactoring.  I also changed my if statment to a one line. I also don't need return statements because Ruby returns the last line of code executed, so I got rid of those in my refactored code.
  I tend to always write them in my initial solution just to really lay things out plain and clear for my brain.

What concepts about classes were you able to solidify in this challenge?
  I would say just that any of the instance variables (beginning with @) can be accessed from anywhere inside the class which is really cool.

=end
