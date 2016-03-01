# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def smallest_integer(list_of_nums)
  smallest=list_of_nums[0]

list_of_nums.each do |num|
  if num < smallest
    smallest = num
   end
end

return smallest
end



=begin

Here is the code using defined Ruby methods.  I find this much clearer. i <3 build in ruby methods.

def smallest_integer(list_of_nums)
      if list_of_nums.length == 0
        return nil
       else
      return list_of_nums.sort[0]
      end
end
=end