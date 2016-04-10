# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# # Pseudocode
# Input:an array
# output: an array where
#   -multiples of 3 are replaced with "fizz"
#   -multiples of 5 are replaced with 'buzz'
#   -multiples of 15 are replaced with "fizzbuzz"

# Steps-
#   Split the array
#   Iterate through EACH item of the array
#   IF the item is a multiple of 3 , replace the item with fizz
#   ELSIF the item is a multiple of 5 replace with buzz
#   ELSIF the item is a multiple of 15 replace with fizzbuzz
#   ELSE leave the item as is.
#   RETURN the new array.



# Initial Solution

def super_fizzbuzz(array)
  array.each_index do |i|
    if array[i] % 15 == 0
      array[i]= "FizzBuzz"
    elsif array[i] % 5==0
      array[i]="Buzz"
    elsif array[i] % 3==0
      array[i]= "Fizz"
    else
      array[i]
    end
  end
   return array
end


