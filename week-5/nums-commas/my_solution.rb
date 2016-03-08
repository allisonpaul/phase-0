# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#input=positive integer
# What is the output? (i.e. What should the code return?)
#output=a comma seperated integer as a string.
# What are the steps needed to solve the problem?

#define a method seperate_comma
#take a positive integer as its input
# if integer is less than 1000 print integer
#convert integer to a string
#if integer is greater than 1000 and less than a million 3 numbers from the right put comma using insert method
#else, greater than a million, every three numbers put a comma using insert method
#return integer

#refactored solution pseudocode



# 1. Initial Solution
def separate_comma(integer)
  if integer < 1000
    return integer.to_s
  elsif (integer >= 1000) && (integer <= 999999)
    integer= integer.to_s.insert(-4, ',')
  else
    integer= integer.to_s.insert(-4, ",")
    integer=integer.to_s.insert(-8,",")
return integer
  end
end



# 2. Refactored Solution
#define method that takes integer as input
#set integer to a string and create variable to hold info
#reverse the variable and scan to find every third digit
#join with a comma
#reverse back and print the solution

=begin

def separate_comma(integer)
  comma=integer.to_s
   solution=comma.reverse.scan(/...|.+/).join(',')  return solution.reverse
end


which can be futhor refactored to


def separate_comma(integer)
    comma=integer.to_s.reverse.scan(/...|.+/).join(',')
return comma.reverse
end

=end


# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?

I at first tried to think about it outside of coding and just talk through it in plain english. I considered taking the length of the string and trying to build if/else statements from that and somehow pushing the string into an array and print the comma-array by accessing indexes and printing commas where necesary. I also thought about using a while loop but it had a really similar set up to what I have now and then I was stuck with what to do with numbers over 6 digits. What I have now is the cleanest and makes the most sense to me. I always try to over-complicate my code and get very frustrated. The insert method is perfect because I  tell it exactly where to go in the code to insert a comma. I came across insert while researching last week, and viola- it was just what I needed here.

Was your pseudocode effective in helping you build a successful initial solution?
Pseudocode was helpful.  I really need to work on this though. I had trouble knowing how detailed to get in my pseudocode. I liked that psuedocoding kind of forced me to think things through instead of just jumping in and coding.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I used the scan method when I refactored my code.  The insert method was great for my initial solution, but I wanted to insert the comma with one line of code instead of telling it to go to multiple places.  I researched to see if this could be done using insert, but I came across scan.  Scan is a 'regular expression' that is used for pattern-matching and text-manipulation. The Ruby documentation showed me how to use scan, but didn't really give me all the information I wanted on how it works and all the symbols to  use, so I googled around a little bit. A website called ZetCode really helped me out and taught me that you write what you want to match in /slashes/. There seem to be several different ways I could have written my scan method, but this made the most sense to me, so I put three dots in the slashes (like so /.../) to tell Ruby that I was looking to join with a comma every three characters.  This proved a problem though because if I didn't have exactly three characters between commas it would just omit the rest of my string. So I used a pipe | (I'm not sure if that is the proper term for that symbol but that's what I learned it as) which acts as an alternative operator in this case, followed by .+ to also tell my scan method to also keep what's left with. It is basically saying take the next one or more digits.

How did you initially iterate through the data structure?
In my initial solution I used an if/else statement.  If the integer given is less than 1000, go ahead and print because it won't need a comma.  Elsif, it's more than 1000 but less than a million, insert a comma after the third character from the right.  I accessed the array from the right using negatives. I made a final statement saying if neither of those are the case, insert a comma after the third index and after the eigth index from the right.


Do you feel your refactored solution is more readable than your initial solution? Why?
I am not sure if it is more readble, since the scan method looks a little complicated, but it definitely is more concise. I find if/else statments really easy to read and understand in general.
I do think my refactored solution is more practical, since it uses four lines of code instead of 11.

=end