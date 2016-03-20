# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.


# Release 0: Pseudocode
# Outline:
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#Set the letters of bingo to the columns (where the first column of the rows corresponds to letter B
#    The second I… etc to O. )
#Randomly pick a letter and number to give a Bingo value.
#Replace the bingo value with an X if present
#Print the new bingo card, with or without a changed value.


# Check the called column for the number called.
  #Go through the card to see if the the value called is there


# If the number is in the column, replace with an 'x'
  #IF the right number is there
  #Replace with an 'X'



# Display the board to the console (prettily)
  #Put each row on a seperate line

# Initial Solution
=begin

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter = ['B', 'I', 'N', 'G', 'O'].sample
    @number= rand(1...100)
    #@letter = 'O'
    #@number = 51
    @call_value = @letter + @number.to_s
    #puts @call_value
  end

  def check_and_replace
    @bingo_board.each do |array|
      array.each_with_index do |num, index|
        case
        when @letter == 'B'
          if index == 0 && @number == num
            array[index]= "X"
          end
        when @letter == 'I'
          if index == 1 && @number == num
            array[index]= "X"
          end
        when @letter == 'N'
          if index == 2 && @number == num
            array[index]= "X"
          end
        when @letter == 'G'
          if index == 3 && @number == num
            array[index]= "X"
          end
        when @letter == 'O'
          if index == 4 && @number == num
            array[index]= "X"
          end
        end #ends the case
      end #ends the second do
    end #ends the first do
  end #ends the method

  def display_board
    @bingo_board.each do|board|
        p board
    end
  end

end #ends the class


board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check_and_replace
new_game.display_board
=end

#REFACTORED CODE
=begin
  class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call #working
    @letter = ['B', 'I', 'N', 'G', 'O'].sample
    @number= rand(1...100)
    @call_value = @letter + @number.to_s
  end

  def check_and_replace
      p call
    @bingo_board.each do |array|
      array.each_with_index do |num, index|

        case @letter
        when 'B'
          array[index]= "X" if index == 0 && @number == num

        when 'I'
          array[index]= "X" if index == 1 && @number == num

        when 'N'
          array[index]= "X" if index == 2 && @number == num

        when 'G'
          array[index]= "X" if index == 3 && @number == num

        when 'O'
          array[index]= "X" if index == 4 && @number == num


        end#ends the case
      end#ends the do
    end#ends the other do
  end#ends the method


    def display_board
      @bingo_board.each do|subarrays|
        p subarrays
      end
    end

end #ends the class




board = [[3, 24, 31, 48, 68],
        [4, 19, 45, 55, 73],
        [8, 25, 'X', 59, 67],
        [2, 30, 36, 68, 71],
        [7, 17, 44, 60, 63]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check_and_replace
new_game.display_board

=end
#Refactored a little further plus legal board
  class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo = ['B', 'I', 'N', 'G', 'O']
  end

  def call #working
    @letter = ['B', 'I', 'N', 'G', 'O'].sample
      case @letter
        when 'B'
            @number= rand(1..15)
        when 'I'
            @number = rand(16..30)
        when 'N'
            @number = rand(31..45)
        when 'G'
            @number = rand(46..60)
        when 'O'
            @number = rand(61..75)
      end
    @call_value = @letter + @number.to_s
  end


  def check_and_replace
      p call
    @bingo_board.each do |array|
      array.each_with_index do |num, index|
        if num == @number
          array[index]= "X"
        end#ends if
      end#ends the do
    end#ends the other do
  end#ends the method

   def display_board
    puts " B  I  N  G  O\n--------------"
    @bingo_board.each do|board|
      p board.join(" ")
    end
  end


end #ends the class

board = [[3, 24, 31, 48, 68],
        [4, 19, 45, 55, 73],
        [8, 25, ' X ', 59, 67],
        [2, 30, 36, 68, 71],
        [7, 17, 44, 60, 63]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check_and_replace
new_game.display_board


#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  Pseudocoding was difficult for me because of the template already layed out.
  It kind of confused me and made me add things I probably wouldn't have added initially (like displaying a column. I didn't include this in my code because I didn't see the point to it).
  I had to read the challenge a couple times and write pseudocode on a seperate paper.

What are the benefits of using a class for this challenge?
  It is good to use a class here so you can access all the bingo related variables in different methods
  and pass data between them.

How can you access coordinates in a nested array?
      my_array= [['i', 'am', 'Allison', 'Paul'], [10, 14, 1990], ['is', 'my',
      'birthday']]
      To access 'Allison' in the first array you just need to target it's index position so:
      my_array[0][2]
      Zero because it is in the first array of the nested array, and two because it is in the
      third position which has the index value of 2 (since the index starts with zero).


What methods did you use to access and modify the array?
    The #each_with_index method let's you target the element and it's index.
    I used a case statement to reassign the
    value of the element if it was equal to the number called.


Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
    In the Ruby docs I learned each_index with is what I thought I initially wanted to use when I saw it in the side bar.  But this method only passes through the index of the element and not the element itself.  I also considered using map! and include? to replace the number with 'X'.  Include checks to see if the value exists.
    #map goes through an object like #each but modifies.
    Ultimately, I didn't use them because my code worked find and these didn't seem to add anything to the code when I switched it out.

How did you determine what should be an instance variable versus a local variable?
    If I needed to use the variable in another method I made it an instance variable.

What do you feel is most improved in your refactored solution?
  I think my refactored solution is a lot more readable and concise.  It took me a couple days to realize that the letter is only important for the call and not the actual checking and replacing since Bingo cards never have two of the same number, so that was a major duh moment. I think I have a problem always making things too complicated. I also added a title to the bingo board.
=end