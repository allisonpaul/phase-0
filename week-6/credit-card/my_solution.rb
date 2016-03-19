# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Sibel Ergener ].
# I spent [2.5] hours on this challenge and another [1 hour alone refactoring and doing the reflection].

# Pseudocode


# Don't forget to check on initialization for a card length
# of exactly 16 digits

# Input: credit card number (string of integers)
# Output: true or false (boolean) depending on if CC is valid
# Steps:
#  Get input
#  Check to see if its 16 digits
#Unless it is 16 digits, raise argument error
# IF it's 16 digits then break it up in an array of integers
# Double every even digit starting from the right
# IF a number has more than one digit break up into two
# Add every single digit together
# IF the total number is divisible by ten
# Valid credit card number is true
# ELSE is false

# Initial Solution
=begin
class CreditCard

  def initialize(card_number)
    if card_number.to_s.length != 16
      raise ArgumentError.new ("Please enter valid card number")
    else
      @card_number = card_number
    end
  end

  def check_card
    card_array = @card_number.to_s.each_char.map.each { |number|
      number.to_i}

    position= -2
    while position >= -16
        card_array[position]= card_array[position]*2
      position -= 2
    end

    card_array_joined = Integer(card_array.join, 10)#@card_array.join.to_i
    final_array = card_array_joined.to_s.each_char.map.each { |number|
      number.to_i}

    sum = 0
      final_array.each { |number|
        sum += number}
      if sum % 10 == 0
        return true
      else
        return false
      end
  end
end

cc = CreditCard.new(4408041234567906)
p cc.check_card

=end
# Refactored Solution

class CreditCard
attr_reader :card_number

  def initialize(card_number)
    if card_number.to_s.length != 16
      raise ArgumentError.new ("Please enter valid card number")
    else
      @card_number = card_number
    end
  end

  def check_card
    @card_number = @card_number.to_s.each_char.map(&:to_i)

    position= -2
    while position >= -16
        @card_number[position]= @card_number[position]*2
      position -= 2
    end

    sum = 0
    @card_number.join.split('').each { |number|
    sum += number.to_i}
      if sum % 10 == 0
        return true
      else
        return false
      end
  end
end


# Reflection
#What was the most difficult part of this challenge for you and your pair?
#  We had a lot of challenges in this.  First we could just not get #even? to work so we    target the values with the index.  Then we had trouble with defining instance variables. We treated to create separate methods for readbility, but it wasn't working so we had to make everything into the one method.

#What new methods did you find to help you when you refactored?
#  When I refactored I didn't use a new method but I realized we didn't need to set new variables (card_array_joined and final_array) like I originally thought.  I think we made it way too complicated the first time around, but were so caught up in our errors that we couldn't think of simplier ways.

#What concepts or learnings were you able to solidify in this challenge?
#  This helped me get a better understand of using instance variables and class as a whole.
#I think our code could be refactored even furthor, but I can't figure out anything that would make it more readable.


