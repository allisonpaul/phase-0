# Pad an Array

# I worked on this challenge [with: Adam Zmudzinski]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array of positive integers, number of items in the array, padded value
# What is the output? (i.e. What should the code return?) The array padded

# What are the steps needed to solve the problem?

#Define a method that accepts positive integers
# If array is greater or equal to the number of items print the array
#If array has less than the minimum number fill the default values into the array to meet the minimum number
#return the array
# in pad! method alter the original array, in pad keep the origin array in tact and return the new padded array.



# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if(array.length >= min_size)
    return array
  else
  0.upto(min_size - array.length - 1) {|i| array.push(value)}
  end
   return array
  end


def pad(array, min_size, value = nil) #non-destructive

new_array = []
array.each{|i| new_array.push(i)}

if(new_array.length >= min_size)
  return new_array
else

0.upto(min_size - new_array.length - 1) { |i|
new_array.push(value)}
end
return new_array
end



# 3. Refactored Solution
 def pad!(array, min_size, value = nil) #destructive

 return array if(array.length >= min_size)
  0.upto(min_size - array.length - 1) {|i| array.push(value)}
   return array
  end


def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each{ |i| new_array.push(i)
  }

  return new_array if (new_array.length >= min_size)

  0.upto(min_size - new_array.length - 1) { |i|
  new_array.push(value)}

  return new_array
end



=begin
# 4. Reflection

Were you successful in breaking the problem down into small steps?
The pseudocode helped us build the basic skeleton of code, but we had to break it down furthor to write the else statement.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
I wouldn't say we translated it easily.  My partner seemed to know what to do right off the bat, but I had a little bit of a harder time understanding.
I thought we would need to make a counter, but he knew the upto method which did the trick. Like I said, the pseudocode was great for setting up a skeleton but we didn't pseudocode enough I guess, and still really had to break it down to fill in the body of the code.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial non-destructive method wasn't successful. We tried to set new_array= array, but it wasn't working. After running the rspec we realized we had to set a new blank array and push all of the old array into it.


When you refactored, did you find any existing methods in Ruby to clean up your code?
When we refactore we made a one line if statement and then didn't need our else. This shortened the code quite a bit. Since he knew the upto method we were able to leave out a counter which cleaned up the code a bit as well.


How readable is your solution? Did you and your pair choose descriptive variable names?
I think the code is pretty readable. The only variable we set was new_array which is pretty clear and descriptive.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods change the array and destructive methods keep the original array in tact and return an altered copy.


=end