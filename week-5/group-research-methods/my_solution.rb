# Research Methods

# I spent [2] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


#******* ME*** Person 2  Allison Paul
#Pseudocode
#Take an array and a number as input
#Add that number to each number in the array
#permanently alter the orignal array
#return new array with the number



def my_array_modification_method!(array, number)
  array.map!  {|x|
    x.is_a?(Integer) ? (x + number): x}
end

#pseudocode
#Definite a method that takes a hash and a number for input
# Add number to each value in the hash
#Print hash

def my_hash_modification_method!(hash, num)
   hash.collect {|key,value|
   hash[key] = value + num}
     return  hash
  end



# Identify and describe the Ruby method(s) you implemented.
# I used the map method.  Map is basically the same as the each method, and it goes through each item in the object you called it on. It can also be called as collect, so I used collect in my second method just to switch it up a bit and see if it worked the same (they do. exactly the same. Map is the more common usage I believe.)
#I also used the is_a method to find the integers in my array. This basically finds everything in the class of my choosing. So here I said go through all of the array, if any item if an integer add two to it, then print all the items of the array. I think this is a really cool method and when I found it on ruby docs I was pretty jazzed.
#I find that I pretty much always have to follow up the Ruby Docs with some googling for a further breakdown.
# Sometimes I do this in reverse and see if there is a method to do what I am looking for and then I read the Ruby docs to get an understanding of the syntax.



# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5  Esther Leytush

=begin
  Split Arrays:
Create a my_array_splitting_method that will split the original array into two
separate nested arrays (two arrays within one array). The first nested array
should include all integers, and the second nested array should include all
other values. This should not alter the original data structure.
  my_array_splitting_method(i_want_pets)
  #=> [[3, 2],["I", "want", "pets", "but", "only", "have"]]
=end

def my_array_splitting_method(array)
  ages = []
  names = []
  array.each do |item|
    item.is_a?(Fixnum) ? ages << item : names << item
  end
  [ages, names]
end

=begin
  Hash Splitting Method:
Create a my_hash_splitting_method that will separate the hash into two arrays
based on the value. It should return two arrays, the first which includes all
pets who are four years of age or younger and the second that includes all other
pets. This should not alter the original data structure.
  my_hash_splitting_method(my_family_pets_ages, 4)
  #=> [[["Hoobie", 3], ["Annabelle", 0], ["Ditto", 3], ["Bogart", 4], ["Poly", 4]], [["Evi", 6], ["George", 12]]]
=end

def my_hash_splitting_method(hash, age)
  under_age = []
  over_age = []
  hash.each do |key, value|
    value <= age ? over_age << [key, value] : under_age << [key, value]
  end
  [over_age, under_age]
end






#ME*********
# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#Explaining my research and reading the research of others really helped me to understand concepts better. Since we are all working through the same material, we have a similar grasp on the information and know how to break it down.
#
#

