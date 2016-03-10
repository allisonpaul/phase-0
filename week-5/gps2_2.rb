# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Make a method
  # separate items
  # put them into hash as keys
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: A hash

$grocery_list = Hash.new(0)


def list(string)
 split_string = string.split(" ")
 split_string.each do |item|
  $grocery_list[item] = 1
 end
 p $grocery_list
end

list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps: Make a method with two parameters, item and quantity.
# Add item and quantity as a key value pair to the hash
# output: hash

def add_item(item_name, quantity)
  $grocery_list[item_name]=quantity
  return $grocery_list
end

add_item("carrots", 3)


# Method to remove an item from the list
# input: name of item to delete
# steps: define a method "delete"
# delete key/value pair
# print resulting hash
# output: hash without deleted item

def del_item(item_name)
  $grocery_list.delete(item_name)
  p $grocery_list
end

del_item("carrots")



# Method to update the quantity of an item
# input: grocery_item and quantity
# steps:
#Define a method that takes the grocery_item (string) and the quantity (integer)
#push the new quantity into the hash
#print the hash
# output:Hash with updated quantities.

def new_list(list_item, quantity)
    $grocery_list[list_item]= quantity
  print $grocery_list
  end

new_list("pizza", 2)


# Method to print a list and make it look pretty
# input: The grocery list hash
# steps: define a method
#iterate through the hash
# print the keys and values in a sentance
#output: finalized list

def print_list
    $grocery_list.each do |k,v|
      p "We need #{v} #{k} this week."
      end
    end

  print_list

#alternate method
# def print_list(original_list)
#      original_list.each do |k,v|
#        p "I have to buy #{v} #{k}."
#      end
#    end



=begin
What did you learn about pseudocode from working on this challenge?
  I learned that pseudocoding can be kind of hard when you are doing simple challenges, but still really important.
  We also had the problem of sometimes wanting to jump into the code which resulted in some half-ass pseudocoding.  
  I really want improve on my pseudocode skills and make sure they are thorough, read really easily and avoid using any code specific 
  terms. I'm starting to believe that clear pseudocode makes all the difference when starting to write code.
  We also used words like 'iterate' in our pseudocode but it might be better to furthor break it down and say something like 
  'go through each item one by one'.
  (How many times can I say pseudocode in this paragraph?)

What are the tradeoffs of using Arrays and Hashes for this challenge?
  So, we set our hash to a global variable at the beginnging of the challenge and used that hash for each method.  
  This turned out to be really simple and accessible. We decided at the beginnging to use a hash where the key would 
  be the list item and the value would be the quantity of the item. I think using arrays would have been messier and 
  harder to read in the code. It's also easier to edit an array because you can find the key and target the associated value 
  and change that.

What does a method return?
  A method returns the evaluated result from the last line executed.

What kind of things can you pass into methods as arguments?
  You can pass all sorts of things into methods as arguments.  Integers, strings, arrays, hashes, and other methods.

How can you pass information between methods?
  We did this by setting a global variable and using this in all of our methods. Looking back, I think using a global variable 
  was really similar to using a class and I wish our guide would have advised us to do otherwise.

  You can also pass information in the arguments of the methods.
  EDIT: I redid the whole challenge by calling the hash in the arguments, so see below for an updated version!

What concepts were solidified in this challenge, and what concepts are still confusing?
      This was the first time I used global variables so it was cool to learn about those. I learned how to delete items out of a hash, 
      which is useful and pretty easy.


I really felt like I missed the whole point of the challenge by using the global variable, so I went back and did the challenge and 
passed the information by calling the hash in the argument for all of the methods. Here is the new code for all of the methods! this 
really helped me understand it better.

def list(string)
  grocery_list=Hash.new(0)
  split_string= string.split(" ")
  split_string.each do |item|
  grocery_list[item] = 1
  end
  return grocery_list
end

def add_item(original_list, item_name, quantity)
  original_list[item_name] = quantity
end

def del_item(original_list, item)
  original_list.delete(item)
end

def new_list(original_list, list_item, quantity)
  original_list[list_item]=quantity
end


def print_list(original_list)
  original_list.each do |k,v|
    puts "I have to buy #{v} #{k}."
  end
end


grocery_list=list("carrots apples cereal pizza")
add_item(grocery_list, "carrots", 3)
del_item(grocery_list, "carrots")
new_list(grocery_list, "popsicles", 2)
print_list(grocery_list)
  =end
