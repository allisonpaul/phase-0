# Reverse Words

# Pseudocode
# input-a string
# output-the string reversed
#STEPS
#Define a method reverse_words that takes a string argument
#-Split the string into an array
# -Go through each word of the array
# -reverse each word
#-push into a new array
#-join the new array back into a string.
# -return the new string.


# Initial Solution

def reverse_words(string)
  words=string.split(" ")
  array=[]
  words.each do |word|
    array.push(word.reverse!)
  end
  p array.join(" ")
end


reverse_words('this is going to work')




# Reflection

# What concepts did you review or learn in this challenge?
#   This concept was embarrasingly hard for me. I reversed each word no problem but I couldn't get the array back into a string. I realized that I needed to push into a new array and then convert that to a string.  DUH.
# What is still confusing to you about Ruby?
#   Just general logic still trips me up.  I need to do a lot of reviewing.

# What are you going to study to get more prepared for Phase 1?
#   I am just going to work through a lot of problems and revisit The Well Grounded Rubyist.
