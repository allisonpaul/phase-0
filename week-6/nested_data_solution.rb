#[I worked on this challenge with Christyn Budzyna for .5 hours.]


# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash [:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
  number_array.map! do |element|
      if element.is_a?(Array)
        element.map! {|number| number + 5}
      else
        element + 5
      end
    end

  p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
  startup_names.flatten!.map! do |element|
     p element.to_s + "ly"
    end

p startup_names  #to check if the method is destructive

=begin Reflection
What are some general rules you can apply to nested arrays?
  You always use the index to access values in arrays, just like non-nested arrays.
  You just move deeper into the array, layer by layer.

What are some ways you can iterate over nested arrays?
  Here we used a nested #map! to iterate over the arrays.  We also used #flatten to get them out of their nest.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  We re-used both map and flatten. Map was a good option because it returns an array value and it replaces the element in the array with the value returned by the code block.  We added a bang (!) to make it destructive. We used #is_a? as well to check for arrays.
  We also used flatten, which I have seen before but haven't used.  This method flattens subarrays so we can easily target each element, in this case to add "ly". Before we used flatten the code was changing the first element (since it is not in a nested array) and then just adding "ly" to the end of the array. We had to use a bang on flatten as well as on map to permenantly alter the array.

