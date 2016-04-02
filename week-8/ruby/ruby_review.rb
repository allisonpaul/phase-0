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
