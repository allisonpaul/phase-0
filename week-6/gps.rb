# Your Names
# 1) Allison Paul
# 2)Renan Martins

#Guide
#Matt Higgins

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.


def serving_size_calc(item_to_make, num_of_ingredients)
  #create a hash with item as key and value as number of required ingredients
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  #Go through each item to make sure that it is there
  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

 #If we don't have an item raise an argument error
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #Getting the number of ingredients from the hash for the item to be named
  #calculates the remaining ingredients
  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size


#If remaining ingredients == 0 returns the string with the values
#If it doesn't equal zero then it returns suggested baking items and leftover ingredients

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)



#REFACTORED CODE
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.include?(item_to_make)

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    output = "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients.\n"

      library.each do |item, ingredient|
        quantity = remaining_ingredients / ingredient
          if quantity != 0
            output += "You can still make #{quantity} #{item}\n"
          end
      end
    return output
  end
end

puts serving_size_calc("pie", 77)
puts serving_size_calc("pie", 8)
puts serving_size_calc("cake", 5)
puts serving_size_calc("cake", 7)
puts serving_size_calc("cookie", 11)
puts serving_size_calc("cookie", 10)
puts serving_size_calc("pie", 118)


=begin  Reflection
What did you learn about making code readable by working on this challenge?
  I learned that it is better to have a descriptive variable or a method name than a short one.  I also learned that shortest code isn't always the most readable. From the original code, I learned to be concise and not repetitive in your code.

Did you learn any new methods? What did you learn about them?
  I re-learned about case statements. We personally preferred an if statment for readability in our fefactored code, but case statements are when you test conditions that you give to a statement.

What did you learn about accessing data in hashes?
  You access values in a hash by the hash name and the name of the key. Here it was serving_size= library[item_to_make]. In the initial solution they had some weird convoluted solution using #values_at that was really unneccasary.

What concepts were solidified when working through this challenge?
  It was a good review of accessing data in a hash and appending strings to other strings. Also modulus kind of gives me a headache but shout out to my partner for being better at math than me.
=end