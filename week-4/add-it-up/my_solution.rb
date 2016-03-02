# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with Leland Meiners: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# takes an array
# Output:
# gives the sum of the array
# Steps to solve the problem.
# split the array into each component and add together.

# 1. total initial solution

  def total (array)
    sum = 0
    array.each do |num|
    sum += num
    end
    return sum
  end

# 3. total refactored solution
 def total (array)
  array.inject(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings.
# Output: The arrays joined into one to form a sentence.
# Steps to solve the problem.
# Combine arrays
# Finding the first letter of first word and capitalizing
#Adding a period to the end.

# 5. sentence_maker initial solution
 def sentence_maker(array)
    string= ""

    array.each do |s|
        s=s.to_s
        string= string + s + ' '
  end
    string=string.chomp(" ")
    p  string.capitalize + "."
   end
sentence_maker (['i', 'hate', 'ruby'])




# 6. sentence_maker refactored solution

# def sentence_maker(array)
#    x=array.join(" ")
#    return x.capitalize + "."
#    end
#  sentence_maker (['i', 'hate', 'ruby'])
