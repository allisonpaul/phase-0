# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Lish Buch]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of integers or strings
# What is the output? (i.e. What should the code return?)
#An integer or string that occurs the most
# What are the steps needed to solve the problem?
# Get input
#Create a blank hash to hold the key value pairs
#Iterate through the array and assign each key a value for the number of item it occurs.
#Iterate through the hash to find which objects occur the most.
# Return the highest keys



# 1. Initial Solution
    def mode(array)
      counter = Hash.new(0)

      array.each { |x| counter[x] +=1}

      new_array= []
      counter.each { |k,v| if v== counter.values.max
        new_array << k
        end
      }
      p new_array
    end

mode([2,33,4,33,2,7,33,1])


# 3. Refactored Solution


# 4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?

  We used both arrays and hashes. We made a hash with default values of zero. This is where the information from the array is stored, so the keys are the objects in the array and the values are the number of times they occur. We also made a new array and pushed the most frequently occured objects into the array. We found this was a neccesary step, since without it our objects just printed as integers.  We return the array at the end of the method.


Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  I feel like the pseudocode was helpful setting up a skeleton but it  didn't just give us the solution we were looking for.  We didn't anticipate having to push into a new array, so that isn't included in our pseudocode. The psuedo definitely helped us get on the same page and kind of set the tone for solving the challenge though. I really hope to get better an psuedocoding, it's an awesome tool.


What issues/successes did you run into when translating your pseudocode to code?
  So like I mentioned above, we didn't realize we would have to push to an array so that step isn't reflected in our pseudocode. That was probably just a result of not reading the directions well enough in the beginning, because I don't think we came across the array issue until we ran rpsec.  The pseudocode definitely got us on the right track though.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  So, we actually couldn't find a way to refactor our code. There might be a way to write into one lines but I feel like that would sacrifice readibilty and isn't really needed. When we were coding, we ran into an issue where if there were two keys with the same max value it would only print one. When googling, we found the values method and implemented that into our code.
  It was really easy to implement, but kind of hard to understand at first. .values acts on the hash and returns an array with all its values as elements.


=end