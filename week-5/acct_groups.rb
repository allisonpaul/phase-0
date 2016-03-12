#input: the list of students
#output: a new list of groups of students.


#Create a variable to hold the list of students.
# Count how many students there are.
#Divide the number of students in the list by 4, make suere there will be no groups of two.
#define a method that accepts the list of students .
#Randomly assign each person to a group of four UNTIL there are no more people to assign.
#DELETE each person from the group after they are assigned to ensure there are no duplicates.
# Return the lists of new groups.


roster = ["Aarthi Gurusami", "Abid Ramay", "Adam Zumdzinski", "Alec Hendricson", "Alex Wen", "Alicia Briceland", "Allison Paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Benjamin Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Che Sanders", "Chris Henderson", "Christoper Lamkin", "Christyn Budzyna", "Dan Park", "David Ramirez", "Ruo Yu Tao", "David Walden", "Bill Deng", "Denny Jovic", "Daniel Deutsch", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bekanovic", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabirel Zurita", "Jack Thatcher", "Jason Milfred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lias Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Charlotte Manetta", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "James Robinson", "Samatha Holmes", "Scott Southard", "Shaun Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Tala Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]

#roster.count  => 67
#67 / 4 = 16 groups of four and one group of three

def acc_groups(people)
  group_arrays= []
    counter=0
    until people.empty? == true
    group_arrays << people.sample(4)
    i = 0
    until i ==4
      people.delete(group_arrays[counter][i])
       i+=1
    end
  counter +=1
  end
  p group_arrays
end

acc_groups(roster)


#refactored output

def acc_groups(people)
  group_arrays= []
    counter=0
    until people.empty? == true
    group_arrays << people.sample(4)
    i = 0
    until i ==4
      people.delete(group_arrays[counter][i])
       i+=1
    end
  counter +=1
  end
  group_arrays.each { |groups|
    puts "#{groups}\n"}    #/n is line a linebreak.
end

acc_groups(roster)




#refactored

roster.shuffle.each_slice(4).to_a

# refactored to print cleaner

   group_arrays = roster.shuffle.each_slice(4).to_a
      group_arrays.each {|groups|
    puts "#{groups}\n" }


#reflection
=begin

What was the most interesting and most difficult part of this challenge?
It was easy to figure out how to randomly get four people into one group, but a lot harder to get all the groups at once. It was kind of hard to think of a way to delete the names so they wouldn't repeat in groups. I had to make a variable (i) to count through the index of the array.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
I feel like my pseudocode for this challenge is better than any I've had so far because I wrote it all out with pen and paper and then came to the computer. I tried to really think through the problem before coding which is something I should do often. I definitely have an issue of jumping into the code without having a plan or a full understanding of the challenge.


Was your approach for automating this task a good solution? What could have made it even better?
I think this approach worked pretty well. It will work if anyone leaves the cohort and it gives different results every time thanks to sample. It probably could have been better if it stored the information.
Overall, I think it is efficient and easy to read. I would like to furthor alter the output so it has a group name or number and then the memebers of the group, but I had to pull the breaks on this challenge and move on.


What data structure did you decide to store the accountability groups in and why?
I used arrays because I didn't need a key value pair, just a list of the roster and another list of the groups.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
When I first refactored, I was looking for a way to print the groups on seperate lines so it was easier to read.  I came across \n which worked.
I learned splice and shuffle. shuffle returns a new array with the elements shuffled arround. #each.slice Iterates the given block for each slice of <n> elements.
=end